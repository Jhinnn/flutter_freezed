// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      msgId: json['msgId'] as String,
      content: json['content'] as String,
      type: json['type'] as int,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'msgId': instance.msgId,
      'content': instance.content,
      'type': instance.type,
      'status': instance.status,
    };
