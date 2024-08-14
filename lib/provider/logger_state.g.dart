// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoggerStateImpl _$$LoggerStateImplFromJson(Map<String, dynamic> json) =>
    _$LoggerStateImpl(
      participantID: json['participantID'] as String,
      startTime: json['startTime'] as String,
      borg: json['borg'] as String,
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
      pressureTimeSeriesLuria:
          (json['pressureTimeSeriesLuria'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      deltaDistanceTimeSeriesLuria:
          (json['deltaDistanceTimeSeriesLuria'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      orientationTimeSeriesLuria:
          (json['orientationTimeSeriesLuria'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      tiltTimeSeriesLuria: (json['tiltTimeSeriesLuria'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      timestampLuria: (json['timestampLuria'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      pressureTimeSeriesSpiral:
          (json['pressureTimeSeriesSpiral'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      deltaDistanceTimeSeriesSpiral:
          (json['deltaDistanceTimeSeriesSpiral'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      orientationTimeSeriesSpiral:
          (json['orientationTimeSeriesSpiral'] as List<dynamic>?)
                  ?.map((e) => (e as num).toDouble())
                  .toList() ??
              const [],
      tiltTimeSeriesSpiral: (json['tiltTimeSeriesSpiral'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      timestampSpiral: (json['timestampSpiral'] as List<dynamic>?)
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
      'borg': instance.borg,
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
      'pressureTimeSeriesLuria': instance.pressureTimeSeriesLuria,
      'deltaDistanceTimeSeriesLuria': instance.deltaDistanceTimeSeriesLuria,
      'orientationTimeSeriesLuria': instance.orientationTimeSeriesLuria,
      'tiltTimeSeriesLuria': instance.tiltTimeSeriesLuria,
      'timestampLuria': instance.timestampLuria,
      'pressureTimeSeriesSpiral': instance.pressureTimeSeriesSpiral,
      'deltaDistanceTimeSeriesSpiral': instance.deltaDistanceTimeSeriesSpiral,
      'orientationTimeSeriesSpiral': instance.orientationTimeSeriesSpiral,
      'tiltTimeSeriesSpiral': instance.tiltTimeSeriesSpiral,
      'timestampSpiral': instance.timestampSpiral,
      'files': instance.files,
    };
