// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_pair_response_refresh.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenPairResponseRefresh extends TokenPairResponseRefresh {
  @override
  final DateTime? expiresAt;
  @override
  final String? token;

  factory _$TokenPairResponseRefresh(
          [void Function(TokenPairResponseRefreshBuilder)? updates]) =>
      (new TokenPairResponseRefreshBuilder()..update(updates))._build();

  _$TokenPairResponseRefresh._({this.expiresAt, this.token}) : super._();

  @override
  TokenPairResponseRefresh rebuild(
          void Function(TokenPairResponseRefreshBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenPairResponseRefreshBuilder toBuilder() =>
      new TokenPairResponseRefreshBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenPairResponseRefresh &&
        expiresAt == other.expiresAt &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenPairResponseRefresh')
          ..add('expiresAt', expiresAt)
          ..add('token', token))
        .toString();
  }
}

class TokenPairResponseRefreshBuilder
    implements
        Builder<TokenPairResponseRefresh, TokenPairResponseRefreshBuilder> {
  _$TokenPairResponseRefresh? _$v;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  TokenPairResponseRefreshBuilder() {
    TokenPairResponseRefresh._defaults(this);
  }

  TokenPairResponseRefreshBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expiresAt = $v.expiresAt;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenPairResponseRefresh other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenPairResponseRefresh;
  }

  @override
  void update(void Function(TokenPairResponseRefreshBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenPairResponseRefresh build() => _build();

  _$TokenPairResponseRefresh _build() {
    final _$result = _$v ??
        new _$TokenPairResponseRefresh._(expiresAt: expiresAt, token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
