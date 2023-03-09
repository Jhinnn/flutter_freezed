
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_list.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class UserList with _$UserList {
  factory UserList(List<int> list) = _UserList;
}
