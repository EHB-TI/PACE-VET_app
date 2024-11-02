// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimal_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MinimalUser extends MinimalUser {
  @override
  final String? email;
  @override
  final String? familyName;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final BuiltList<UserType>? types;

  factory _$MinimalUser([void Function(MinimalUserBuilder)? updates]) =>
      (new MinimalUserBuilder()..update(updates))._build();

  _$MinimalUser._({this.email, this.familyName, this.id, this.name, this.types})
      : super._();

  @override
  MinimalUser rebuild(void Function(MinimalUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MinimalUserBuilder toBuilder() => new MinimalUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MinimalUser &&
        email == other.email &&
        familyName == other.familyName &&
        id == other.id &&
        name == other.name &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MinimalUser')
          ..add('email', email)
          ..add('familyName', familyName)
          ..add('id', id)
          ..add('name', name)
          ..add('types', types))
        .toString();
  }
}

class MinimalUserBuilder implements Builder<MinimalUser, MinimalUserBuilder> {
  _$MinimalUser? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _familyName;
  String? get familyName => _$this._familyName;
  set familyName(String? familyName) => _$this._familyName = familyName;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<UserType>? _types;
  ListBuilder<UserType> get types =>
      _$this._types ??= new ListBuilder<UserType>();
  set types(ListBuilder<UserType>? types) => _$this._types = types;

  MinimalUserBuilder() {
    MinimalUser._defaults(this);
  }

  MinimalUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _familyName = $v.familyName;
      _id = $v.id;
      _name = $v.name;
      _types = $v.types?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MinimalUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MinimalUser;
  }

  @override
  void update(void Function(MinimalUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MinimalUser build() => _build();

  _$MinimalUser _build() {
    _$MinimalUser _$result;
    try {
      _$result = _$v ??
          new _$MinimalUser._(
              email: email,
              familyName: familyName,
              id: id,
              name: name,
              types: _types?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        _types?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MinimalUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
