// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  plan: $enumDecodeNullable(_$PlanTypeEnumMap, json['plan']) ?? PlanType.free,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role]!,
      'plan': _$PlanTypeEnumMap[instance.plan]!,
    };

const _$UserRoleEnumMap = {
  UserRole.patient: 'patient',
  UserRole.pharmacist: 'pharmacist',
};

const _$PlanTypeEnumMap = {
  PlanType.free: 'free',
  PlanType.standard: 'standard',
  PlanType.premium: 'premium',
};
