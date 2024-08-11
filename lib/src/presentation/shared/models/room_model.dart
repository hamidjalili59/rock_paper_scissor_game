import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_model.freezed.dart';

@Freezed(copyWith: true)
class RoomModel with _$RoomModel {
  const factory RoomModel({
    @Default(1) int adults,
    @Default(0) int children,
    @Default('') String roomNumber,
    @Default([]) List<ChildAgeModel> childAges,
  }) = _RoomModel;
}

class ChildAgeModel {
  ChildAgeModel(this.childNumber, this.childAgeValue);

  factory ChildAgeModel.fromJson(Map<String, dynamic> json) => ChildAgeModel(
        json['childNumber'] as String,
        json['childAgeValue'] as String?,
      );

  final String childNumber;
  final String? childAgeValue;

  Map<String, dynamic> toJson() {
    return {
      'childNumber': childNumber,
      'childAgeValue': childAgeValue,
    };
  }
}
