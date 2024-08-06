// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoggerStateImpl _$$LoggerStateImplFromJson(Map<String, dynamic> json) =>
    _$LoggerStateImpl(
      participantID: json['participantID'] as String,
      startTime: json['startTime'] as String,
      pressureTimeSeries: (json['pressureTimeSeries'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      files:
          (json['files'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$LoggerStateImplToJson(_$LoggerStateImpl instance) =>
    <String, dynamic>{
      'participantID': instance.participantID,
      'startTime': instance.startTime,
      'pressureTimeSeries': instance.pressureTimeSeries,
      'files': instance.files,
    };
