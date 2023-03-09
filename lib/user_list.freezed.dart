// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserList {
  List<int> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListCopyWith<UserList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListCopyWith<$Res> {
  factory $UserListCopyWith(UserList value, $Res Function(UserList) then) =
      _$UserListCopyWithImpl<$Res, UserList>;
  @useResult
  $Res call({List<int> list});
}

/// @nodoc
class _$UserListCopyWithImpl<$Res, $Val extends UserList>
    implements $UserListCopyWith<$Res> {
  _$UserListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserListCopyWith<$Res> implements $UserListCopyWith<$Res> {
  factory _$$_UserListCopyWith(
          _$_UserList value, $Res Function(_$_UserList) then) =
      __$$_UserListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> list});
}

/// @nodoc
class __$$_UserListCopyWithImpl<$Res>
    extends _$UserListCopyWithImpl<$Res, _$_UserList>
    implements _$$_UserListCopyWith<$Res> {
  __$$_UserListCopyWithImpl(
      _$_UserList _value, $Res Function(_$_UserList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_UserList(
      null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_UserList with DiagnosticableTreeMixin implements _UserList {
  _$_UserList(this.list);

  @override
  final List<int> list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserList(list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserList'))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserList &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserListCopyWith<_$_UserList> get copyWith =>
      __$$_UserListCopyWithImpl<_$_UserList>(this, _$identity);
}

abstract class _UserList implements UserList {
  factory _UserList(final List<int> list) = _$_UserList;

  @override
  List<int> get list;
  @override
  @JsonKey(ignore: true)
  _$$_UserListCopyWith<_$_UserList> get copyWith =>
      throw _privateConstructorUsedError;
}
