// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_pair_response_access.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenPairResponseAccess extends TokenPairResponseAccess {
  @override
  final DateTime? expiresAt;
  @override
  final String? token;

  factory _$TokenPairResponseAccess(
          [void Function(TokenPairResponseAccessBuilder)? updates]) =>
      (new TokenPairResponseAccessBuilder()..update(updates))._build();

  _$TokenPairResponseAccess._({this.expiresAt, this.token}) : super._();

  @override
  TokenPairResponseAccess rebuild(
          void Function(TokenPairResponseAccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenPairResponseAccessBuilder toBuilder() =>
      new TokenPairResponseAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenPairResponseAccess &&
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
    return (newBuiltValueToStringHelper(r'TokenPairResponseAccess')
          ..add('expiresAt', expiresAt)
          ..add('token', token))
        .toString();
  }
}

class TokenPairResponseAccessBuilder
    implements
        Builder<TokenPairResponseAccess, TokenPairResponseAccessBuilder> {
  _$TokenPairResponseAccess? _$v;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  TokenPairResponseAccessBuilder() {
    TokenPairResponseAccess._defaults(this);
  }

  TokenPairResponseAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expiresAt = $v.expiresAt;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenPairResponseAccess other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenPairResponseAccess;
  }

  @override
  void update(void Function(TokenPairResponseAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenPairResponseAccess build() => _build();

  _$TokenPairResponseAccess _build() {
    final _$result = _$v ??
        new _$TokenPairResponseAccess._(expiresAt: expiresAt, token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
