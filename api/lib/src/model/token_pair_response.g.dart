// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_pair_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenPairResponse extends TokenPairResponse {
  @override
  final TokenPairResponseAccess? access;
  @override
  final TokenPairResponseRefresh? refresh;

  factory _$TokenPairResponse(
          [void Function(TokenPairResponseBuilder)? updates]) =>
      (new TokenPairResponseBuilder()..update(updates))._build();

  _$TokenPairResponse._({this.access, this.refresh}) : super._();

  @override
  TokenPairResponse rebuild(void Function(TokenPairResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenPairResponseBuilder toBuilder() =>
      new TokenPairResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenPairResponse &&
        access == other.access &&
        refresh == other.refresh;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, refresh.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenPairResponse')
          ..add('access', access)
          ..add('refresh', refresh))
        .toString();
  }
}

class TokenPairResponseBuilder
    implements Builder<TokenPairResponse, TokenPairResponseBuilder> {
  _$TokenPairResponse? _$v;

  TokenPairResponseAccessBuilder? _access;
  TokenPairResponseAccessBuilder get access =>
      _$this._access ??= new TokenPairResponseAccessBuilder();
  set access(TokenPairResponseAccessBuilder? access) => _$this._access = access;

  TokenPairResponseRefreshBuilder? _refresh;
  TokenPairResponseRefreshBuilder get refresh =>
      _$this._refresh ??= new TokenPairResponseRefreshBuilder();
  set refresh(TokenPairResponseRefreshBuilder? refresh) =>
      _$this._refresh = refresh;

  TokenPairResponseBuilder() {
    TokenPairResponse._defaults(this);
  }

  TokenPairResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access = $v.access?.toBuilder();
      _refresh = $v.refresh?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenPairResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenPairResponse;
  }

  @override
  void update(void Function(TokenPairResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenPairResponse build() => _build();

  _$TokenPairResponse _build() {
    _$TokenPairResponse _$result;
    try {
      _$result = _$v ??
          new _$TokenPairResponse._(
              access: _access?.build(), refresh: _refresh?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'access';
        _access?.build();
        _$failedField = 'refresh';
        _refresh?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TokenPairResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
