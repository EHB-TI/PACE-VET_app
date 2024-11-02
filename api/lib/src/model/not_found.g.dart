// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'not_found.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotFound extends NotFound {
  @override
  final NotFoundErrors? errors;

  factory _$NotFound([void Function(NotFoundBuilder)? updates]) =>
      (new NotFoundBuilder()..update(updates))._build();

  _$NotFound._({this.errors}) : super._();

  @override
  NotFound rebuild(void Function(NotFoundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotFoundBuilder toBuilder() => new NotFoundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotFound && errors == other.errors;
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
    return (newBuiltValueToStringHelper(r'NotFound')..add('errors', errors))
        .toString();
  }
}

class NotFoundBuilder implements Builder<NotFound, NotFoundBuilder> {
  _$NotFound? _$v;

  NotFoundErrorsBuilder? _errors;
  NotFoundErrorsBuilder get errors =>
      _$this._errors ??= new NotFoundErrorsBuilder();
  set errors(NotFoundErrorsBuilder? errors) => _$this._errors = errors;

  NotFoundBuilder() {
    NotFound._defaults(this);
  }

  NotFoundBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotFound other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotFound;
  }

  @override
  void update(void Function(NotFoundBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotFound build() => _build();

  _$NotFound _build() {
    _$NotFound _$result;
    try {
      _$result = _$v ?? new _$NotFound._(errors: _errors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotFound', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
