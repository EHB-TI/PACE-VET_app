// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unprocessable_entity_errors_inner_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnprocessableEntityErrorsInnerSource
    extends UnprocessableEntityErrorsInnerSource {
  @override
  final String? pointer;

  factory _$UnprocessableEntityErrorsInnerSource(
          [void Function(UnprocessableEntityErrorsInnerSourceBuilder)?
              updates]) =>
      (new UnprocessableEntityErrorsInnerSourceBuilder()..update(updates))
          ._build();

  _$UnprocessableEntityErrorsInnerSource._({this.pointer}) : super._();

  @override
  UnprocessableEntityErrorsInnerSource rebuild(
          void Function(UnprocessableEntityErrorsInnerSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnprocessableEntityErrorsInnerSourceBuilder toBuilder() =>
      new UnprocessableEntityErrorsInnerSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnprocessableEntityErrorsInnerSource &&
        pointer == other.pointer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pointer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnprocessableEntityErrorsInnerSource')
          ..add('pointer', pointer))
        .toString();
  }
}

class UnprocessableEntityErrorsInnerSourceBuilder
    implements
        Builder<UnprocessableEntityErrorsInnerSource,
            UnprocessableEntityErrorsInnerSourceBuilder> {
  _$UnprocessableEntityErrorsInnerSource? _$v;

  String? _pointer;
  String? get pointer => _$this._pointer;
  set pointer(String? pointer) => _$this._pointer = pointer;

  UnprocessableEntityErrorsInnerSourceBuilder() {
    UnprocessableEntityErrorsInnerSource._defaults(this);
  }

  UnprocessableEntityErrorsInnerSourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pointer = $v.pointer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnprocessableEntityErrorsInnerSource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnprocessableEntityErrorsInnerSource;
  }

  @override
  void update(
      void Function(UnprocessableEntityErrorsInnerSourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnprocessableEntityErrorsInnerSource build() => _build();

  _$UnprocessableEntityErrorsInnerSource _build() {
    final _$result =
        _$v ?? new _$UnprocessableEntityErrorsInnerSource._(pointer: pointer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
