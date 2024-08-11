// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomModel {
  int get adults => throw _privateConstructorUsedError;
  int get children => throw _privateConstructorUsedError;
  String get roomNumber => throw _privateConstructorUsedError;
  List<ChildAgeModel> get childAges => throw _privateConstructorUsedError;

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res, RoomModel>;
  @useResult
  $Res call(
      {int adults,
      int children,
      String roomNumber,
      List<ChildAgeModel> childAges});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res, $Val extends RoomModel>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adults = null,
    Object? children = null,
    Object? roomNumber = null,
    Object? childAges = null,
  }) {
    return _then(_value.copyWith(
      adults: null == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int,
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String,
      childAges: null == childAges
          ? _value.childAges
          : childAges // ignore: cast_nullable_to_non_nullable
              as List<ChildAgeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomModelImplCopyWith<$Res>
    implements $RoomModelCopyWith<$Res> {
  factory _$$RoomModelImplCopyWith(
          _$RoomModelImpl value, $Res Function(_$RoomModelImpl) then) =
      __$$RoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int adults,
      int children,
      String roomNumber,
      List<ChildAgeModel> childAges});
}

/// @nodoc
class __$$RoomModelImplCopyWithImpl<$Res>
    extends _$RoomModelCopyWithImpl<$Res, _$RoomModelImpl>
    implements _$$RoomModelImplCopyWith<$Res> {
  __$$RoomModelImplCopyWithImpl(
      _$RoomModelImpl _value, $Res Function(_$RoomModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adults = null,
    Object? children = null,
    Object? roomNumber = null,
    Object? childAges = null,
  }) {
    return _then(_$RoomModelImpl(
      adults: null == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int,
      roomNumber: null == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as String,
      childAges: null == childAges
          ? _value._childAges
          : childAges // ignore: cast_nullable_to_non_nullable
              as List<ChildAgeModel>,
    ));
  }
}

/// @nodoc

class _$RoomModelImpl implements _RoomModel {
  const _$RoomModelImpl(
      {this.adults = 1,
      this.children = 0,
      this.roomNumber = '',
      final List<ChildAgeModel> childAges = const []})
      : _childAges = childAges;

  @override
  @JsonKey()
  final int adults;
  @override
  @JsonKey()
  final int children;
  @override
  @JsonKey()
  final String roomNumber;
  final List<ChildAgeModel> _childAges;
  @override
  @JsonKey()
  List<ChildAgeModel> get childAges {
    if (_childAges is EqualUnmodifiableListView) return _childAges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childAges);
  }

  @override
  String toString() {
    return 'RoomModel(adults: $adults, children: $children, roomNumber: $roomNumber, childAges: $childAges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomModelImpl &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            const DeepCollectionEquality()
                .equals(other._childAges, _childAges));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adults, children, roomNumber,
      const DeepCollectionEquality().hash(_childAges));

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      __$$RoomModelImplCopyWithImpl<_$RoomModelImpl>(this, _$identity);
}

abstract class _RoomModel implements RoomModel {
  const factory _RoomModel(
      {final int adults,
      final int children,
      final String roomNumber,
      final List<ChildAgeModel> childAges}) = _$RoomModelImpl;

  @override
  int get adults;
  @override
  int get children;
  @override
  String get roomNumber;
  @override
  List<ChildAgeModel> get childAges;

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
