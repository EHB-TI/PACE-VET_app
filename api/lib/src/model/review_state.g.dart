// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReviewState _$pending = const ReviewState._('pending');
const ReviewState _$approved = const ReviewState._('approved');
const ReviewState _$rejected = const ReviewState._('rejected');

ReviewState _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'approved':
      return _$approved;
    case 'rejected':
      return _$rejected;
    default:
      return _$rejected;
  }
}

final BuiltSet<ReviewState> _$values =
    new BuiltSet<ReviewState>(const <ReviewState>[
  _$pending,
  _$approved,
  _$rejected,
]);

class _$ReviewStateMeta {
  const _$ReviewStateMeta();
  ReviewState get pending => _$pending;
  ReviewState get approved => _$approved;
  ReviewState get rejected => _$rejected;
  ReviewState valueOf(String name) => _$valueOf(name);
  BuiltSet<ReviewState> get values => _$values;
}

abstract class _$ReviewStateMixin {
  // ignore: non_constant_identifier_names
  _$ReviewStateMeta get ReviewState => const _$ReviewStateMeta();
}

Serializer<ReviewState> _$reviewStateSerializer = new _$ReviewStateSerializer();

class _$ReviewStateSerializer implements PrimitiveSerializer<ReviewState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'approved': 'approved',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'approved': 'approved',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[ReviewState];
  @override
  final String wireName = 'ReviewState';

  @override
  Object serialize(Serializers serializers, ReviewState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
