// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unprocessable_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnprocessableEntity extends UnprocessableEntity {
  @override
  final BuiltList<UnprocessableEntityErrorsInner>? errors;

  factory _$UnprocessableEntity(
          [void Function(UnprocessableEntityBuilder)? updates]) =>
      (new UnprocessableEntityBuilder()..update(updates))._build();

  _$UnprocessableEntity._({this.errors}) : super._();

  @override
  UnprocessableEntity rebuild(
          void Function(UnprocessableEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnprocessableEntityBuilder toBuilder() =>
      new UnprocessableEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnprocessableEntity && errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnprocessableEntity')
          ..add('errors', errors))
        .toString();
  }
}

class UnprocessableEntityBuilder
    implements Builder<UnprocessableEntity, UnprocessableEntityBuilder> {
  _$UnprocessableEntity? _$v;

  ListBuilder<UnprocessableEntityErrorsInner>? _errors;
  ListBuilder<UnprocessableEntityErrorsInner> get errors =>
      _$this._errors ??= new ListBuilder<UnprocessableEntityErrorsInner>();
  set errors(ListBuilder<UnprocessableEntityErrorsInner>? errors) =>
      _$this._errors = errors;

  UnprocessableEntityBuilder() {
    UnprocessableEntity._defaults(this);
  }

  UnprocessableEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnprocessableEntity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnprocessableEntity;
  }

  @override
  void update(void Function(UnprocessableEntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnprocessableEntity build() => _build();

  _$UnprocessableEntity _build() {
    _$UnprocessableEntity _$result;
    try {
      _$result = _$v ?? new _$UnprocessableEntity._(errors: _errors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnprocessableEntity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
