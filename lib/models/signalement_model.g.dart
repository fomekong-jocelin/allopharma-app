// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signalement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignalementModel _$SignalementModelFromJson(Map<String, dynamic> json) =>
    _SignalementModel(
      id: json['id'] as String,
      medicationName: json['medicationName'] as String,
      city: json['city'] as String,
      neighborhood: json['neighborhood'] as String,
      urgency: $enumDecode(_$SignalementUrgencyEnumMap, json['urgency']),
      status:
          $enumDecodeNullable(_$SignalementStatusEnumMap, json['status']) ??
          SignalementStatus.pending,
      patientId: json['patientId'] as String?,
      respondingPharmacyIds:
          (json['respondingPharmacyIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$SignalementModelToJson(_SignalementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicationName': instance.medicationName,
      'city': instance.city,
      'neighborhood': instance.neighborhood,
      'urgency': _$SignalementUrgencyEnumMap[instance.urgency]!,
      'status': _$SignalementStatusEnumMap[instance.status]!,
      'patientId': instance.patientId,
      'respondingPharmacyIds': instance.respondingPharmacyIds,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$SignalementUrgencyEnumMap = {
  SignalementUrgency.low: 'low',
  SignalementUrgency.medium: 'medium',
  SignalementUrgency.high: 'high',
};

const _$SignalementStatusEnumMap = {
  SignalementStatus.pending: 'pending',
  SignalementStatus.answered: 'answered',
  SignalementStatus.completed: 'completed',
};
