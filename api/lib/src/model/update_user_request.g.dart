// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserRequest extends UpdateUserRequest {
  @override
  final String? address;
  @override
  final Date? dateOfBirth;
  @override
  final String? email;
  @override
  final String? familyName;
  @override
  final String? name;
  @override
  final bool? publicProfile;

  factory _$UpdateUserRequest(
          [void Function(UpdateUserRequestBuilder)? updates]) =>
      (new UpdateUserRequestBuilder()..update(updates))._build();

  _$UpdateUserRequest._(
      {this.address,
      this.dateOfBirth,
      this.email,
      this.familyName,
      this.name,
      this.publicProfile})
      : super._();

  @override
  UpdateUserRequest rebuild(void Function(UpdateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserRequestBuilder toBuilder() =>
      new UpdateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserRequest &&
        address == other.address &&
        dateOfBirth == other.dateOfBirth &&
        email == other.email &&
        familyName == other.familyName &&
        name == other.name &&
        publicProfile == other.publicProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, publicProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUserRequest')
          ..add('address', address)
          ..add('dateOfBirth', dateOfBirth)
          ..add('email', email)
          ..add('familyName', familyName)
          ..add('name', name)
          ..add('publicProfile', publicProfile))
        .toString();
  }
}

class UpdateUserRequestBuilder
    implements Builder<UpdateUserRequest, UpdateUserRequestBuilder> {
  _$UpdateUserRequest? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(Date? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

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

  UpdateUserRequestBuilder() {
    UpdateUserRequest._defaults(this);
  }

  UpdateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _dateOfBirth = $v.dateOfBirth;
      _email = $v.email;
      _familyName = $v.familyName;
      _name = $v.name;
      _publicProfile = $v.publicProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserRequest;
  }

  @override
  void update(void Function(UpdateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserRequest build() => _build();

  _$UpdateUserRequest _build() {
    final _$result = _$v ??
        new _$UpdateUserRequest._(
            address: address,
            dateOfBirth: dateOfBirth,
            email: email,
            familyName: familyName,
            name: name,
            publicProfile: publicProfile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
