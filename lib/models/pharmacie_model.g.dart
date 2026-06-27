// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PharmacieModel _$PharmacieModelFromJson(Map<String, dynamic> json) =>
    _PharmacieModel(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      hasDelivery: json['hasDelivery'] as bool? ?? false,
      acceptsDigitalPrescription:
          json['acceptsDigitalPrescription'] as bool? ?? false,
    );

Map<String, dynamic> _$PharmacieModelToJson(_PharmacieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'hasDelivery': instance.hasDelivery,
      'acceptsDigitalPrescription': instance.acceptsDigitalPrescription,
    };
