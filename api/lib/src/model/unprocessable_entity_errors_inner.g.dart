// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unprocessable_entity_errors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnprocessableEntityErrorsInner extends UnprocessableEntityErrorsInner {
  @override
  final String? detail;
  @override
  final UnprocessableEntityErrorsInnerSource? source_;
  @override
  final String? title;

  factory _$UnprocessableEntityErrorsInner(
          [void Function(UnprocessableEntityErrorsInnerBuilder)? updates]) =>
      (new UnprocessableEntityErrorsInnerBuilder()..update(updates))._build();

  _$UnprocessableEntityErrorsInner._({this.detail, this.source_, this.title})
      : super._();

  @override
  UnprocessableEntityErrorsInner rebuild(
          void Function(UnprocessableEntityErrorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnprocessableEntityErrorsInnerBuilder toBuilder() =>
      new UnprocessableEntityErrorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnprocessableEntityErrorsInner &&
        detail == other.detail &&
        source_ == other.source_ &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnprocessableEntityErrorsInner')
          ..add('detail', detail)
          ..add('source_', source_)
          ..add('title', title))
        .toString();
  }
}

class UnprocessableEntityErrorsInnerBuilder
    implements
        Builder<UnprocessableEntityErrorsInner,
            UnprocessableEntityErrorsInnerBuilder> {
  _$UnprocessableEntityErrorsInner? _$v;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  UnprocessableEntityErrorsInnerSourceBuilder? _source_;
  UnprocessableEntityErrorsInnerSourceBuilder get source_ =>
      _$this._source_ ??= new UnprocessableEntityErrorsInnerSourceBuilder();
  set source_(UnprocessableEntityErrorsInnerSourceBuilder? source_) =>
      _$this._source_ = source_;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  UnprocessableEntityErrorsInnerBuilder() {
    UnprocessableEntityErrorsInner._defaults(this);
  }

  UnprocessableEntityErrorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _detail = $v.detail;
      _source_ = $v.source_?.toBuilder();
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnprocessableEntityErrorsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnprocessableEntityErrorsInner;
  }

  @override
  void update(void Function(UnprocessableEntityErrorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnprocessableEntityErrorsInner build() => _build();

  _$UnprocessableEntityErrorsInner _build() {
    _$UnprocessableEntityErrorsInner _$result;
    try {
      _$result = _$v ??
          new _$UnprocessableEntityErrorsInner._(
              detail: detail, source_: _source_?.build(), title: title);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source_';
        _source_?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnprocessableEntityErrorsInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
