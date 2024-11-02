// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserType _$assessor = const UserType._('assessor');
const UserType _$candidate = const UserType._('candidate');
const UserType _$employer = const UserType._('employer');
const UserType _$mentor = const UserType._('mentor');

UserType _$valueOf(String name) {
  switch (name) {
    case 'assessor':
      return _$assessor;
    case 'candidate':
      return _$candidate;
    case 'employer':
      return _$employer;
    case 'mentor':
      return _$mentor;
    default:
      return _$mentor;
  }
}

final BuiltSet<UserType> _$values = new BuiltSet<UserType>(const <UserType>[
  _$assessor,
  _$candidate,
  _$employer,
  _$mentor,
]);

class _$UserTypeMeta {
  const _$UserTypeMeta();
  UserType get assessor => _$assessor;
  UserType get candidate => _$candidate;
  UserType get employer => _$employer;
  UserType get mentor => _$mentor;
  UserType valueOf(String name) => _$valueOf(name);
  BuiltSet<UserType> get values => _$values;
}

abstract class _$UserTypeMixin {
  // ignore: non_constant_identifier_names
  _$UserTypeMeta get UserType => const _$UserTypeMeta();
}

Serializer<UserType> _$userTypeSerializer = new _$UserTypeSerializer();

class _$UserTypeSerializer implements PrimitiveSerializer<UserType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'assessor': 'assessor',
    'candidate': 'candidate',
    'employer': 'employer',
    'mentor': 'mentor',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'assessor': 'assessor',
    'candidate': 'candidate',
    'employer': 'employer',
    'mentor': 'mentor',
  };

  @override
  final Iterable<Type> types = const <Type>[UserType];
  @override
  final String wireName = 'UserType';

  @override
  Object serialize(Serializers serializers, UserType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
