// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  String get uid => throw _privateConstructorUsedError;
  List<String> get likedPodcastSeries => throw _privateConstructorUsedError;
  List<String> get likedPodcastEpisodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {String uid,
      List<String> likedPodcastSeries,
      List<String> likedPodcastEpisodes});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? likedPodcastSeries = null,
    Object? likedPodcastEpisodes = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      likedPodcastSeries: null == likedPodcastSeries
          ? _value.likedPodcastSeries
          : likedPodcastSeries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likedPodcastEpisodes: null == likedPodcastEpisodes
          ? _value.likedPodcastEpisodes
          : likedPodcastEpisodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      List<String> likedPodcastSeries,
      List<String> likedPodcastEpisodes});
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$_UserData>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? likedPodcastSeries = null,
    Object? likedPodcastEpisodes = null,
  }) {
    return _then(_$_UserData(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      likedPodcastSeries: null == likedPodcastSeries
          ? _value._likedPodcastSeries
          : likedPodcastSeries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      likedPodcastEpisodes: null == likedPodcastEpisodes
          ? _value._likedPodcastEpisodes
          : likedPodcastEpisodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData(
      {required this.uid,
      required final List<String> likedPodcastSeries,
      required final List<String> likedPodcastEpisodes})
      : _likedPodcastSeries = likedPodcastSeries,
        _likedPodcastEpisodes = likedPodcastEpisodes;

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  final String uid;
  final List<String> _likedPodcastSeries;
  @override
  List<String> get likedPodcastSeries {
    if (_likedPodcastSeries is EqualUnmodifiableListView)
      return _likedPodcastSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedPodcastSeries);
  }

  final List<String> _likedPodcastEpisodes;
  @override
  List<String> get likedPodcastEpisodes {
    if (_likedPodcastEpisodes is EqualUnmodifiableListView)
      return _likedPodcastEpisodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedPodcastEpisodes);
  }

  @override
  String toString() {
    return 'UserData(uid: $uid, likedPodcastSeries: $likedPodcastSeries, likedPodcastEpisodes: $likedPodcastEpisodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality()
                .equals(other._likedPodcastSeries, _likedPodcastSeries) &&
            const DeepCollectionEquality()
                .equals(other._likedPodcastEpisodes, _likedPodcastEpisodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      const DeepCollectionEquality().hash(_likedPodcastSeries),
      const DeepCollectionEquality().hash(_likedPodcastEpisodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final String uid,
      required final List<String> likedPodcastSeries,
      required final List<String> likedPodcastEpisodes}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get uid;
  @override
  List<String> get likedPodcastSeries;
  @override
  List<String> get likedPodcastEpisodes;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
