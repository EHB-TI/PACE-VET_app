// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterRequest extends RegisterRequest {
  @override
  final String address;
  @override
  final Date dateOfBirth;
  @override
  final String familyName;
  @override
  final String name;
  @override
  final bool publicProfile;
  @override
  final String totp;
  @override
  final BuiltList<UserType> types;
  @override
  final String verification;
  @override
  final String? email;
  @override
  final String? password;

  factory _$RegisterRequest([void Function(RegisterRequestBuilder)? updates]) =>
      (new RegisterRequestBuilder()..update(updates))._build();

  _$RegisterRequest._(
      {required this.address,
      required this.dateOfBirth,
      required this.familyName,
      required this.name,
      required this.publicProfile,
      required this.totp,
      required this.types,
      required this.verification,
      this.email,
      this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, r'RegisterRequest', 'address');
    BuiltValueNullFieldError.checkNotNull(
        dateOfBirth, r'RegisterRequest', 'dateOfBirth');
    BuiltValueNullFieldError.checkNotNull(
        familyName, r'RegisterRequest', 'familyName');
    BuiltValueNullFieldError.checkNotNull(name, r'RegisterRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        publicProfile, r'RegisterRequest', 'publicProfile');
    BuiltValueNullFieldError.checkNotNull(totp, r'RegisterRequest', 'totp');
    BuiltValueNullFieldError.checkNotNull(types, r'RegisterRequest', 'types');
    BuiltValueNullFieldError.checkNotNull(
        verification, r'RegisterRequest', 'verification');
  }

  @override
  RegisterRequest rebuild(void Function(RegisterRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterRequestBuilder toBuilder() =>
      new RegisterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterRequest &&
        address == other.address &&
        dateOfBirth == other.dateOfBirth &&
        familyName == other.familyName &&
        name == other.name &&
        publicProfile == other.publicProfile &&
        totp == other.totp &&
        types == other.types &&
        verification == other.verification &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, publicProfile.hashCode);
    _$hash = $jc(_$hash, totp.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jc(_$hash, verification.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterRequest')
          ..add('address', address)
          ..add('dateOfBirth', dateOfBirth)
          ..add('familyName', familyName)
          ..add('name', name)
          ..add('publicProfile', publicProfile)
          ..add('totp', totp)
          ..add('types', types)
          ..add('verification', verification)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class RegisterRequestBuilder
    implements Builder<RegisterRequest, RegisterRequestBuilder> {
  _$RegisterRequest? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(Date? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _familyName;
  String? get familyName => _$this._familyName;
  set familyName(String? familyName) => _$this._familyName = familyName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _publicProfile;
  bool? get publicProfile => _$this._publicProfile;
  set publicProfile(bool? publicProfile) =>
      _$this._publicProfile = publicProfile;

  String? _totp;
  String? get totp => _$this._totp;
  set totp(String? totp) => _$this._totp = totp;

  ListBuilder<UserType>? _types;
  ListBuilder<UserType> get types =>
      _$this._types ??= new ListBuilder<UserType>();
  set types(ListBuilder<UserType>? types) => _$this._types = types;

  String? _verification;
  String? get verification => _$this._verification;
  set verification(String? verification) => _$this._verification = verification;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  RegisterRequestBuilder() {
    RegisterRequest._defaults(this);
  }

  RegisterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _dateOfBirth = $v.dateOfBirth;
      _familyName = $v.familyName;
      _name = $v.name;
      _publicProfile = $v.publicProfile;
      _totp = $v.totp;
      _types = $v.types.toBuilder();
      _verification = $v.verification;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterRequest;
  }

  @override
  void update(void Function(RegisterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterRequest build() => _build();

  _$RegisterRequest _build() {
    _$RegisterRequest _$result;
    try {
      _$result = _$v ??
          new _$RegisterRequest._(
              address: BuiltValueNullFieldError.checkNotNull(
                  address, r'RegisterRequest', 'address'),
              dateOfBirth: BuiltValueNullFieldError.checkNotNull(
                  dateOfBirth, r'RegisterRequest', 'dateOfBirth'),
              familyName: BuiltValueNullFieldError.checkNotNull(
                  familyName, r'RegisterRequest', 'familyName'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'RegisterRequest', 'name'),
              publicProfile: BuiltValueNullFieldError.checkNotNull(
                  publicProfile, r'RegisterRequest', 'publicProfile'),
              totp: BuiltValueNullFieldError.checkNotNull(
                  totp, r'RegisterRequest', 'totp'),
              types: types.build(),
              verification: BuiltValueNullFieldError.checkNotNull(
                  verification, r'RegisterRequest', 'verification'),
              email: email,
              password: password);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        types.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
