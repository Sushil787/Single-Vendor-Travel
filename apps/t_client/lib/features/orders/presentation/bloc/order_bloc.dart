import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/orders/data/model/order_package_model.dart';
import 'package:t_client/features/orders/data/repo/order_repo_impl.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

///
@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  ///
  OrderBloc({required this.orderRepo}) : super(const Initial()) {
    on<OrderEvent>((event, emit) async {
      await event.when(
        Order: (orderModel) => makeOrder(
          emit: emit,
          orderPackageModel: orderModel,
        ),
        GetOrders: () => getOrder(
          emit: emit,
        ),
      );
    });
  }

  /// Order repo
  final OrderRepo orderRepo;

  /// Make Order
  Future<void> makeOrder({
    required Emitter<OrderState> emit,
    required OrderPackageModel orderPackageModel,
  }) async {
    try {
      emit(const Loading());
      await orderRepo.makeOrder(
        orderPackageModel: orderPackageModel.copyWith(paymentStatus: 'paid'),
      );
      emit(const Ordered());
    } on FirebaseException catch (e) {
      emit(Error(message: e.toString()));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  /// Get Order
  Future<void> getOrder({required Emitter<OrderState> emit}) async {
    try {
      emit(const Loading());
      final orders = await orderRepo.getUserOrder();
      emit(Orders(orders: orders ?? []));
    } on FirebaseException catch (e) {
      log(e.toString());
      emit(Error(message: e.toString()));
    } catch (e) {
      log(e.toString());
      emit(Error(message: e.toString()));
    }
  }
}
