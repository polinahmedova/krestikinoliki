// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewUser _$NewUserFromJson(Map<String, dynamic> json) {
  return _NewUser.fromJson(json);
}

/// @nodoc
mixin _$NewUser {
  String get private_key => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewUserCopyWith<NewUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewUserCopyWith<$Res> {
  factory $NewUserCopyWith(NewUser value, $Res Function(NewUser) then) =
      _$NewUserCopyWithImpl<$Res, NewUser>;
  @useResult
  $Res call({String private_key, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$NewUserCopyWithImpl<$Res, $Val extends NewUser>
    implements $NewUserCopyWith<$Res> {
  _$NewUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? private_key = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      private_key: null == private_key
          ? _value.private_key
          : private_key // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewUserImplCopyWith<$Res> implements $NewUserCopyWith<$Res> {
  factory _$$NewUserImplCopyWith(
          _$NewUserImpl value, $Res Function(_$NewUserImpl) then) =
      __$$NewUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String private_key, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$NewUserImplCopyWithImpl<$Res>
    extends _$NewUserCopyWithImpl<$Res, _$NewUserImpl>
    implements _$$NewUserImplCopyWith<$Res> {
  __$$NewUserImplCopyWithImpl(
      _$NewUserImpl _value, $Res Function(_$NewUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? private_key = null,
    Object? user = null,
  }) {
    return _then(_$NewUserImpl(
      private_key: null == private_key
          ? _value.private_key
          : private_key // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewUserImpl implements _NewUser {
  _$NewUserImpl({required this.private_key, required this.user});

  factory _$NewUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewUserImplFromJson(json);

  @override
  final String private_key;
  @override
  final User user;

  @override
  String toString() {
    return 'NewUser(private_key: $private_key, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewUserImpl &&
            (identical(other.private_key, private_key) ||
                other.private_key == private_key) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, private_key, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewUserImplCopyWith<_$NewUserImpl> get copyWith =>
      __$$NewUserImplCopyWithImpl<_$NewUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewUserImplToJson(
      this,
    );
  }
}

abstract class _NewUser implements NewUser {
  factory _NewUser(
      {required final String private_key,
      required final User user}) = _$NewUserImpl;

  factory _NewUser.fromJson(Map<String, dynamic> json) = _$NewUserImpl.fromJson;

  @override
  String get private_key;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$NewUserImplCopyWith<_$NewUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
