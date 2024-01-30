// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookedTravelPackageImpl _$$BookedTravelPackageImplFromJson(
        Map<String, dynamic> json) =>
    _$BookedTravelPackageImpl(
      checkInDate: DateTime.parse(json['checkInDate'] as String),
      checkOutDate: DateTime.parse(json['checkOutDate'] as String),
      numberOfRooms: json['numberOfRooms'] as int,
      numberOfPersons: json['numberOfPersons'] as int,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      packageId: json['packageId'] as String,
      phoneNumber: json['phoneNumber'] as String,
      userFcm: json['userFcm'] as String,
      phoneNo: json['phoneNo'] as String,
      userName: json['userName'] as String,
      bookStatus:
          $enumDecodeNullable(_$BookingEnumEnumMap, json['bookStatus']) ??
              BookingEnum.pending,
      isPaid: json['isPaid'] as bool? ?? false,
    );

Map<String, dynamic> _$$BookedTravelPackageImplToJson(
        _$BookedTravelPackageImpl instance) =>
    <String, dynamic>{
      'checkInDate': instance.checkInDate.toIso8601String(),
      'checkOutDate': instance.checkOutDate.toIso8601String(),
      'numberOfRooms': instance.numberOfRooms,
      'numberOfPersons': instance.numberOfPersons,
      'totalPrice': instance.totalPrice,
      'packageId': instance.packageId,
      'phoneNumber': instance.phoneNumber,
      'userFcm': instance.userFcm,
      'phoneNo': instance.phoneNo,
      'userName': instance.userName,
      'bookStatus': _$BookingEnumEnumMap[instance.bookStatus]!,
      'isPaid': instance.isPaid,
    };

const _$BookingEnumEnumMap = {
  BookingEnum.pending: 'pending',
  BookingEnum.booked: 'booked',
  BookingEnum.rejected: 'rejected',
};
