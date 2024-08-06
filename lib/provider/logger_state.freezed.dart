// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logger_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoggerState _$LoggerStateFromJson(Map<String, dynamic> json) {
  return _LoggerState.fromJson(json);
}

/// @nodoc
mixin _$LoggerState {
  String get participantID => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  List<double> get pressureTimeSeries => throw _privateConstructorUsedError;
  List<String> get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggerStateCopyWith<LoggerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggerStateCopyWith<$Res> {
  factory $LoggerStateCopyWith(
          LoggerState value, $Res Function(LoggerState) then) =
      _$LoggerStateCopyWithImpl<$Res, LoggerState>;
  @useResult
  $Res call(
      {String participantID,
      String startTime,
      List<double> pressureTimeSeries,
      List<String> files});
}

/// @nodoc
class _$LoggerStateCopyWithImpl<$Res, $Val extends LoggerState>
    implements $LoggerStateCopyWith<$Res> {
  _$LoggerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantID = null,
    Object? startTime = null,
    Object? pressureTimeSeries = null,
    Object? files = null,
  }) {
    return _then(_value.copyWith(
      participantID: null == participantID
          ? _value.participantID
          : participantID // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      pressureTimeSeries: null == pressureTimeSeries
          ? _value.pressureTimeSeries
          : pressureTimeSeries // ignore: cast_nullable_to_non_nullable
              as List<double>,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoggerStateImplCopyWith<$Res>
    implements $LoggerStateCopyWith<$Res> {
  factory _$$LoggerStateImplCopyWith(
          _$LoggerStateImpl value, $Res Function(_$LoggerStateImpl) then) =
      __$$LoggerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String participantID,
      String startTime,
      List<double> pressureTimeSeries,
      List<String> files});
}

/// @nodoc
class __$$LoggerStateImplCopyWithImpl<$Res>
    extends _$LoggerStateCopyWithImpl<$Res, _$LoggerStateImpl>
    implements _$$LoggerStateImplCopyWith<$Res> {
  __$$LoggerStateImplCopyWithImpl(
      _$LoggerStateImpl _value, $Res Function(_$LoggerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantID = null,
    Object? startTime = null,
    Object? pressureTimeSeries = null,
    Object? files = null,
  }) {
    return _then(_$LoggerStateImpl(
      participantID: null == participantID
          ? _value.participantID
          : participantID // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      pressureTimeSeries: null == pressureTimeSeries
          ? _value._pressureTimeSeries
          : pressureTimeSeries // ignore: cast_nullable_to_non_nullable
              as List<double>,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggerStateImpl implements _LoggerState {
  const _$LoggerStateImpl(
      {required this.participantID,
      required this.startTime,
      final List<double> pressureTimeSeries = const [],
      final List<String> files = const []})
      : _pressureTimeSeries = pressureTimeSeries,
        _files = files;

  factory _$LoggerStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoggerStateImplFromJson(json);

  @override
  final String participantID;
  @override
  final String startTime;
  final List<double> _pressureTimeSeries;
  @override
  @JsonKey()
  List<double> get pressureTimeSeries {
    if (_pressureTimeSeries is EqualUnmodifiableListView)
      return _pressureTimeSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pressureTimeSeries);
  }

  final List<String> _files;
  @override
  @JsonKey()
  List<String> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'LoggerState(participantID: $participantID, startTime: $startTime, pressureTimeSeries: $pressureTimeSeries, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggerStateImpl &&
            (identical(other.participantID, participantID) ||
                other.participantID == participantID) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            const DeepCollectionEquality()
                .equals(other._pressureTimeSeries, _pressureTimeSeries) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      participantID,
      startTime,
      const DeepCollectionEquality().hash(_pressureTimeSeries),
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggerStateImplCopyWith<_$LoggerStateImpl> get copyWith =>
      __$$LoggerStateImplCopyWithImpl<_$LoggerStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggerStateImplToJson(
      this,
    );
  }
}

abstract class _LoggerState implements LoggerState {
  const factory _LoggerState(
      {required final String participantID,
      required final String startTime,
      final List<double> pressureTimeSeries,
      final List<String> files}) = _$LoggerStateImpl;

  factory _LoggerState.fromJson(Map<String, dynamic> json) =
      _$LoggerStateImpl.fromJson;

  @override
  String get participantID;
  @override
  String get startTime;
  @override
  List<double> get pressureTimeSeries;
  @override
  List<String> get files;
  @override
  @JsonKey(ignore: true)
  _$$LoggerStateImplCopyWith<_$LoggerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
