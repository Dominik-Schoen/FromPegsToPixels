// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoggerStateImpl _$$LoggerStateImplFromJson(Map<String, dynamic> json) =>
    _$LoggerStateImpl(
      participantID: json['participantID'] as String,
      startTime: json['startTime'] as String,
      pressureTimeSeriesLoops:
          (json['pressureTimeSeriesLoops'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      deltaDistanceTimeSeriesLoops:
          (json['deltaDistanceTimeSeriesLoops'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      orientationTimeSeriesLoops:
          (json['orientationTimeSeriesLoops'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      tiltTimeSeriesLoops: (json['tiltTimeSeriesLoops'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      timestampLoops: (json['timestampLoops'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      pressureTimeSeriesPentagons:
          (json['pressureTimeSeriesPentagons'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      deltaDistanceTimeSeriesPentagons:
          (json['deltaDistanceTimeSeriesPentagons'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      orientationTimeSeriesPentagons:
          (json['orientationTimeSeriesPentagons'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      tiltTimeSeriesPentagons:
          (json['tiltTimeSeriesPentagons'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      timestampPentagons: (json['timestampPentagons'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
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
      'pressureTimeSeriesLoops': instance.pressureTimeSeriesLoops,
      'deltaDistanceTimeSeriesLoops': instance.deltaDistanceTimeSeriesLoops,
      'orientationTimeSeriesLoops': instance.orientationTimeSeriesLoops,
      'tiltTimeSeriesLoops': instance.tiltTimeSeriesLoops,
      'timestampLoops': instance.timestampLoops,
      'pressureTimeSeriesPentagons': instance.pressureTimeSeriesPentagons,
      'deltaDistanceTimeSeriesPentagons':
          instance.deltaDistanceTimeSeriesPentagons,
      'orientationTimeSeriesPentagons': instance.orientationTimeSeriesPentagons,
      'tiltTimeSeriesPentagons': instance.tiltTimeSeriesPentagons,
      'timestampPentagons': instance.timestampPentagons,
      'files': instance.files,
    };
