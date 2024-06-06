import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/features/order/data/model/order_package_model.dart';
import 'package:t_admin/features/order/domain/repo/booking_repo.dart';
part 'booking_bloc.freezed.dart';
part 'booking_event.dart';
part 'booking_state.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc({required this.bookingRepo})
      : super(const BookingState.initial()) {
    totalBooking = 0;
    on<BookingEvent>((event, emit) async {
      await event.when(
        updateOrder: (context, data, status) =>
            _updateOrder(context, emit, data, status),
        getBookedPackage: () => _getOrder(emit),
      );
    });
  }
  final BookingRepo bookingRepo;

  late int totalBooking;

  Future<void> _getOrder(
    Emitter<BookingState> emit,
  ) async {
    try {
      emit(const BookingLoading());
      await emit.onEach(
        bookingRepo.getBookedPackage(),
        onData: (data) {
          emit(BookingLoaded(orders: [...data]));
          totalBooking = data.length;
        },
      );
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  Future<void> _updateOrder(
    BuildContext context,
    Emitter<BookingState> emit,
    OrderPackageModel orderPackageModel,
    String status,
  ) async {
    try {
      await bookingRepo.updateBookedPackageStatus(
        status: status,
        orderPackageModel: orderPackageModel,
      );
      if (context.mounted) {
        context.showSnackBar(
          message: 'User Notified',
          toastType: ToastType.success,
        );
      }
    } catch (e) {
      emit(
        Error(
          message: e.toString(),
        ),
      );
    }
  }
}
