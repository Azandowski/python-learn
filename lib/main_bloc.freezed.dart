// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainLoadingState value) loading,
    required TResult Function(_MainLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainLoadingState value)? loading,
    TResult? Function(_MainLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainLoadingState value)? loading,
    TResult Function(_MainLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MainLoadingStateCopyWith<$Res> {
  factory _$$_MainLoadingStateCopyWith(
          _$_MainLoadingState value, $Res Function(_$_MainLoadingState) then) =
      __$$_MainLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainLoadingStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainLoadingState>
    implements _$$_MainLoadingStateCopyWith<$Res> {
  __$$_MainLoadingStateCopyWithImpl(
      _$_MainLoadingState _value, $Res Function(_$_MainLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainLoadingState implements _MainLoadingState {
  const _$_MainLoadingState();

  @override
  String toString() {
    return 'MainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MainLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainLoadingState value) loading,
    required TResult Function(_MainLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainLoadingState value)? loading,
    TResult? Function(_MainLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainLoadingState value)? loading,
    TResult Function(_MainLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MainLoadingState implements MainState {
  const factory _MainLoadingState() = _$_MainLoadingState;
}

/// @nodoc
abstract class _$$_MainLoadedStateCopyWith<$Res> {
  factory _$$_MainLoadedStateCopyWith(
          _$_MainLoadedState value, $Res Function(_$_MainLoadedState) then) =
      __$$_MainLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<QuizQuestion> advancedQuestions,
      List<QuizQuestion> mediumLevel,
      List<QuizQuestion> elementaryLevel,
      int? advancedScore,
      int? mediumScore,
      int? elementaryScore});
}

/// @nodoc
class __$$_MainLoadedStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainLoadedState>
    implements _$$_MainLoadedStateCopyWith<$Res> {
  __$$_MainLoadedStateCopyWithImpl(
      _$_MainLoadedState _value, $Res Function(_$_MainLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advancedQuestions = null,
    Object? mediumLevel = null,
    Object? elementaryLevel = null,
    Object? advancedScore = freezed,
    Object? mediumScore = freezed,
    Object? elementaryScore = freezed,
  }) {
    return _then(_$_MainLoadedState(
      advancedQuestions: null == advancedQuestions
          ? _value._advancedQuestions
          : advancedQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestion>,
      mediumLevel: null == mediumLevel
          ? _value._mediumLevel
          : mediumLevel // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestion>,
      elementaryLevel: null == elementaryLevel
          ? _value._elementaryLevel
          : elementaryLevel // ignore: cast_nullable_to_non_nullable
              as List<QuizQuestion>,
      advancedScore: freezed == advancedScore
          ? _value.advancedScore
          : advancedScore // ignore: cast_nullable_to_non_nullable
              as int?,
      mediumScore: freezed == mediumScore
          ? _value.mediumScore
          : mediumScore // ignore: cast_nullable_to_non_nullable
              as int?,
      elementaryScore: freezed == elementaryScore
          ? _value.elementaryScore
          : elementaryScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_MainLoadedState implements _MainLoadedState {
  const _$_MainLoadedState(
      {required final List<QuizQuestion> advancedQuestions,
      required final List<QuizQuestion> mediumLevel,
      required final List<QuizQuestion> elementaryLevel,
      this.advancedScore,
      this.mediumScore,
      this.elementaryScore})
      : _advancedQuestions = advancedQuestions,
        _mediumLevel = mediumLevel,
        _elementaryLevel = elementaryLevel;

  final List<QuizQuestion> _advancedQuestions;
  @override
  List<QuizQuestion> get advancedQuestions {
    if (_advancedQuestions is EqualUnmodifiableListView)
      return _advancedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advancedQuestions);
  }

  final List<QuizQuestion> _mediumLevel;
  @override
  List<QuizQuestion> get mediumLevel {
    if (_mediumLevel is EqualUnmodifiableListView) return _mediumLevel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediumLevel);
  }

  final List<QuizQuestion> _elementaryLevel;
  @override
  List<QuizQuestion> get elementaryLevel {
    if (_elementaryLevel is EqualUnmodifiableListView) return _elementaryLevel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elementaryLevel);
  }

  @override
  final int? advancedScore;
  @override
  final int? mediumScore;
  @override
  final int? elementaryScore;

  @override
  String toString() {
    return 'MainState.loaded(advancedQuestions: $advancedQuestions, mediumLevel: $mediumLevel, elementaryLevel: $elementaryLevel, advancedScore: $advancedScore, mediumScore: $mediumScore, elementaryScore: $elementaryScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainLoadedState &&
            const DeepCollectionEquality()
                .equals(other._advancedQuestions, _advancedQuestions) &&
            const DeepCollectionEquality()
                .equals(other._mediumLevel, _mediumLevel) &&
            const DeepCollectionEquality()
                .equals(other._elementaryLevel, _elementaryLevel) &&
            (identical(other.advancedScore, advancedScore) ||
                other.advancedScore == advancedScore) &&
            (identical(other.mediumScore, mediumScore) ||
                other.mediumScore == mediumScore) &&
            (identical(other.elementaryScore, elementaryScore) ||
                other.elementaryScore == elementaryScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_advancedQuestions),
      const DeepCollectionEquality().hash(_mediumLevel),
      const DeepCollectionEquality().hash(_elementaryLevel),
      advancedScore,
      mediumScore,
      elementaryScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainLoadedStateCopyWith<_$_MainLoadedState> get copyWith =>
      __$$_MainLoadedStateCopyWithImpl<_$_MainLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)
        loaded,
  }) {
    return loaded(advancedQuestions, mediumLevel, elementaryLevel,
        advancedScore, mediumScore, elementaryScore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)?
        loaded,
  }) {
    return loaded?.call(advancedQuestions, mediumLevel, elementaryLevel,
        advancedScore, mediumScore, elementaryScore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<QuizQuestion> advancedQuestions,
            List<QuizQuestion> mediumLevel,
            List<QuizQuestion> elementaryLevel,
            int? advancedScore,
            int? mediumScore,
            int? elementaryScore)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(advancedQuestions, mediumLevel, elementaryLevel,
          advancedScore, mediumScore, elementaryScore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainLoadingState value) loading,
    required TResult Function(_MainLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainLoadingState value)? loading,
    TResult? Function(_MainLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainLoadingState value)? loading,
    TResult Function(_MainLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MainLoadedState implements MainState {
  const factory _MainLoadedState(
      {required final List<QuizQuestion> advancedQuestions,
      required final List<QuizQuestion> mediumLevel,
      required final List<QuizQuestion> elementaryLevel,
      final int? advancedScore,
      final int? mediumScore,
      final int? elementaryScore}) = _$_MainLoadedState;

  List<QuizQuestion> get advancedQuestions;
  List<QuizQuestion> get mediumLevel;
  List<QuizQuestion> get elementaryLevel;
  int? get advancedScore;
  int? get mediumScore;
  int? get elementaryScore;
  @JsonKey(ignore: true)
  _$$_MainLoadedStateCopyWith<_$_MainLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
