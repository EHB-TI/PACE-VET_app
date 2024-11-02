// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mfa_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MfaRequest extends MfaRequest {
  @override
  final String totp;

  factory _$MfaRequest([void Function(MfaRequestBuilder)? updates]) =>
      (new MfaRequestBuilder()..update(updates))._build();

  _$MfaRequest._({required this.totp}) : super._() {
    BuiltValueNullFieldError.checkNotNull(totp, r'MfaRequest', 'totp');
  }

  @override
  MfaRequest rebuild(void Function(MfaRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MfaRequestBuilder toBuilder() => new MfaRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MfaRequest && totp == other.totp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MfaRequest')..add('totp', totp))
        .toString();
  }
}

class MfaRequestBuilder implements Builder<MfaRequest, MfaRequestBuilder> {
  _$MfaRequest? _$v;

  String? _totp;
  String? get totp => _$this._totp;
  set totp(String? totp) => _$this._totp = totp;

  MfaRequestBuilder() {
    MfaRequest._defaults(this);
  }

  MfaRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totp = $v.totp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MfaRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MfaRequest;
  }

  @override
  void update(void Function(MfaRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MfaRequest build() => _build();

  _$MfaRequest _build() {
    final _$result = _$v ??
        new _$MfaRequest._(
            totp: BuiltValueNullFieldError.checkNotNull(
                totp, r'MfaRequest', 'totp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
