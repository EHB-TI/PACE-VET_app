// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersResponseInner extends UsersResponseInner {
  @override
  final String? address;
  @override
  final Date? dateOfBirth;
  @override
  final String? email;
  @override
  final String? familyName;
  @override
  final String? id;
  @override
  final DateTime? insertedAt;
  @override
  final String? name;
  @override
  final bool? publicProfile;
  @override
  final BuiltList<UserType>? types;

  factory _$UsersResponseInner(
          [void Function(UsersResponseInnerBuilder)? updates]) =>
      (new UsersResponseInnerBuilder()..update(updates))._build();

  _$UsersResponseInner._(
      {this.address,
      this.dateOfBirth,
      this.email,
      this.familyName,
      this.id,
      this.insertedAt,
      this.name,
      this.publicProfile,
      this.types})
      : super._();

  @override
  UsersResponseInner rebuild(
          void Function(UsersResponseInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersResponseInnerBuilder toBuilder() =>
      new UsersResponseInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersResponseInner &&
        address == other.address &&
        dateOfBirth == other.dateOfBirth &&
        email == other.email &&
        familyName == other.familyName &&
        id == other.id &&
        insertedAt == other.insertedAt &&
        name == other.name &&
        publicProfile == other.publicProfile &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, insertedAt.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, publicProfile.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersResponseInner')
          ..add('address', address)
          ..add('dateOfBirth', dateOfBirth)
          ..add('email', email)
          ..add('familyName', familyName)
          ..add('id', id)
          ..add('insertedAt', insertedAt)
          ..add('name', name)
          ..add('publicProfile', publicProfile)
          ..add('types', types))
        .toString();
  }
}

class UsersResponseInnerBuilder
    implements Builder<UsersResponseInner, UsersResponseInnerBuilder> {
  _$UsersResponseInner? _$v;

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

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _insertedAt;
  DateTime? get insertedAt => _$this._insertedAt;
  set insertedAt(DateTime? insertedAt) => _$this._insertedAt = insertedAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _publicProfile;
  bool? get publicProfile => _$this._publicProfile;
  set publicProfile(bool? publicProfile) =>
      _$this._publicProfile = publicProfile;

  ListBuilder<UserType>? _types;
  ListBuilder<UserType> get types =>
      _$this._types ??= new ListBuilder<UserType>();
  set types(ListBuilder<UserType>? types) => _$this._types = types;

  UsersResponseInnerBuilder() {
    UsersResponseInner._defaults(this);
  }

  UsersResponseInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _dateOfBirth = $v.dateOfBirth;
      _email = $v.email;
      _familyName = $v.familyName;
      _id = $v.id;
      _insertedAt = $v.insertedAt;
      _name = $v.name;
      _publicProfile = $v.publicProfile;
      _types = $v.types?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersResponseInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersResponseInner;
  }

  @override
  void update(void Function(UsersResponseInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersResponseInner build() => _build();

  _$UsersResponseInner _build() {
    _$UsersResponseInner _$result;
    try {
      _$result = _$v ??
          new _$UsersResponseInner._(
              address: address,
              dateOfBirth: dateOfBirth,
              email: email,
              familyName: familyName,
              id: id,
              insertedAt: insertedAt,
              name: name,
              publicProfile: publicProfile,
              types: _types?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        _types?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersResponseInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
