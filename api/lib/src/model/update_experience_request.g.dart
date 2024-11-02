// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_experience_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateExperienceRequestTypeEnum _$updateExperienceRequestTypeEnum_event =
    const UpdateExperienceRequestTypeEnum._('event');
const UpdateExperienceRequestTypeEnum
    _$updateExperienceRequestTypeEnum_training =
    const UpdateExperienceRequestTypeEnum._('training');
const UpdateExperienceRequestTypeEnum _$updateExperienceRequestTypeEnum_work =
    const UpdateExperienceRequestTypeEnum._('work');

UpdateExperienceRequestTypeEnum _$updateExperienceRequestTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'event':
      return _$updateExperienceRequestTypeEnum_event;
    case 'training':
      return _$updateExperienceRequestTypeEnum_training;
    case 'work':
      return _$updateExperienceRequestTypeEnum_work;
    default:
      return _$updateExperienceRequestTypeEnum_work;
  }
}

final BuiltSet<UpdateExperienceRequestTypeEnum>
    _$updateExperienceRequestTypeEnumValues = new BuiltSet<
        UpdateExperienceRequestTypeEnum>(const <UpdateExperienceRequestTypeEnum>[
  _$updateExperienceRequestTypeEnum_event,
  _$updateExperienceRequestTypeEnum_training,
  _$updateExperienceRequestTypeEnum_work,
]);

Serializer<UpdateExperienceRequestTypeEnum>
    _$updateExperienceRequestTypeEnumSerializer =
    new _$UpdateExperienceRequestTypeEnumSerializer();

class _$UpdateExperienceRequestTypeEnumSerializer
    implements PrimitiveSerializer<UpdateExperienceRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'event': 'event',
    'training': 'training',
    'work': 'work',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'event': 'event',
    'training': 'training',
    'work': 'work',
  };

  @override
  final Iterable<Type> types = const <Type>[UpdateExperienceRequestTypeEnum];
  @override
  final String wireName = 'UpdateExperienceRequestTypeEnum';

  @override
  Object serialize(
          Serializers serializers, UpdateExperienceRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateExperienceRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateExperienceRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateExperienceRequest extends UpdateExperienceRequest {
  @override
  final String? description;
  @override
  final DateTime? end;
  @override
  final String? location;
  @override
  final DateTime? start;
  @override
  final String? title;
  @override
  final UpdateExperienceRequestTypeEnum? type;

  factory _$UpdateExperienceRequest(
          [void Function(UpdateExperienceRequestBuilder)? updates]) =>
      (new UpdateExperienceRequestBuilder()..update(updates))._build();

  _$UpdateExperienceRequest._(
      {this.description,
      this.end,
      this.location,
      this.start,
      this.title,
      this.type})
      : super._();

  @override
  UpdateExperienceRequest rebuild(
          void Function(UpdateExperienceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateExperienceRequestBuilder toBuilder() =>
      new UpdateExperienceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateExperienceRequest &&
        description == other.description &&
        end == other.end &&
        location == other.location &&
        start == other.start &&
        title == other.title &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateExperienceRequest')
          ..add('description', description)
          ..add('end', end)
          ..add('location', location)
          ..add('start', start)
          ..add('title', title)
          ..add('type', type))
        .toString();
  }
}

class UpdateExperienceRequestBuilder
    implements
        Builder<UpdateExperienceRequest, UpdateExperienceRequestBuilder> {
  _$UpdateExperienceRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  UpdateExperienceRequestTypeEnum? _type;
  UpdateExperienceRequestTypeEnum? get type => _$this._type;
  set type(UpdateExperienceRequestTypeEnum? type) => _$this._type = type;

  UpdateExperienceRequestBuilder() {
    UpdateExperienceRequest._defaults(this);
  }

  UpdateExperienceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _end = $v.end;
      _location = $v.location;
      _start = $v.start;
      _title = $v.title;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateExperienceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateExperienceRequest;
  }

  @override
  void update(void Function(UpdateExperienceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateExperienceRequest build() => _build();

  _$UpdateExperienceRequest _build() {
    final _$result = _$v ??
        new _$UpdateExperienceRequest._(
            description: description,
            end: end,
            location: location,
            start: start,
            title: title,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
