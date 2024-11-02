// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'not_found_errors.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotFoundErrors extends NotFoundErrors {
  @override
  final String? default_;

  factory _$NotFoundErrors([void Function(NotFoundErrorsBuilder)? updates]) =>
      (new NotFoundErrorsBuilder()..update(updates))._build();

  _$NotFoundErrors._({this.default_}) : super._();

  @override
  NotFoundErrors rebuild(void Function(NotFoundErrorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotFoundErrorsBuilder toBuilder() =>
      new NotFoundErrorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotFoundErrors && default_ == other.default_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotFoundErrors')
          ..add('default_', default_))
        .toString();
  }
}

class NotFoundErrorsBuilder
    implements Builder<NotFoundErrors, NotFoundErrorsBuilder> {
  _$NotFoundErrors? _$v;

  String? _default_;
  String? get default_ => _$this._default_;
  set default_(String? default_) => _$this._default_ = default_;

  NotFoundErrorsBuilder() {
    NotFoundErrors._defaults(this);
  }

  NotFoundErrorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _default_ = $v.default_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotFoundErrors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotFoundErrors;
  }

  @override
  void update(void Function(NotFoundErrorsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotFoundErrors build() => _build();

  _$NotFoundErrors _build() {
    final _$result = _$v ?? new _$NotFoundErrors._(default_: default_);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
