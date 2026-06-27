import 'package:freezed_annotation/freezed_annotation.dart';

part 'signalement_model.freezed.dart';
part 'signalement_model.g.dart';

enum SignalementUrgency { low, medium, high }

enum SignalementStatus { pending, answered, completed }

@freezed
class SignalementModel with _$SignalementModel {
  const factory SignalementModel({
    required String id,
    required String medicationName,
    required String city,
    required String neighborhood,
    required SignalementUrgency urgency,
    @Default(SignalementStatus.pending) SignalementStatus status,
    String? patientId,
    @Default([]) List<String> respondingPharmacyIds,
    required DateTime createdAt,
  }) = _SignalementModel;

  factory SignalementModel.fromJson(Map<String, dynamic> json) => _$SignalementModelFromJson(json);
}
