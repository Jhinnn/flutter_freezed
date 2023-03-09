import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

/*
@freezed 不可变类
定义可变类而不是不可变类 
到目前为止，我们已经看到了如何定义一个所有属性都是final的模型;但是您可能希望在模型中定义可变属性。 
frozen通过将@ frozen注释替换为@unfrozen来支持这一点:

operator == and hashCode override (since Message is immutable)

*/
@freezed
class Message with _$Message {
  factory Message(
      {required String msgId,
      required String content,
      required int type,
      int? status}) = _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
