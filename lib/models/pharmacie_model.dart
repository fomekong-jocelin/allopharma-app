import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacie_model.freezed.dart';
part 'pharmacie_model.g.dart';

@freezed
class PharmacieModel with _$PharmacieModel {
  const factory PharmacieModel({
    required String id,
    required String name,
    required String address,
    required double latitude,
    required double longitude,
    @Default(false) bool hasDelivery,
    @Default(false) bool acceptsDigitalPrescription,
  }) = _PharmacieModel;

  factory PharmacieModel.fromJson(Map<String, dynamic> json) => _$PharmacieModelFromJson(json);
}
