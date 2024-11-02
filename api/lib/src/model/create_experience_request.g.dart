// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_experience_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateExperienceRequestTypeEnum _$createExperienceRequestTypeEnum_event =
    const CreateExperienceRequestTypeEnum._('event');
const CreateExperienceRequestTypeEnum
    _$createExperienceRequestTypeEnum_training =
    const CreateExperienceRequestTypeEnum._('training');
const CreateExperienceRequestTypeEnum _$createExperienceRequestTypeEnum_work =
    const CreateExperienceRequestTypeEnum._('work');

CreateExperienceRequestTypeEnum _$createExperienceRequestTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'event':
      return _$createExperienceRequestTypeEnum_event;
    case 'training':
      return _$createExperienceRequestTypeEnum_training;
    case 'work':
      return _$createExperienceRequestTypeEnum_work;
    default:
      return _$createExperienceRequestTypeEnum_work;
  }
}

final BuiltSet<CreateExperienceRequestTypeEnum>
    _$createExperienceRequestTypeEnumValues = new BuiltSet<
        CreateExperienceRequestTypeEnum>(const <CreateExperienceRequestTypeEnum>[
  _$createExperienceRequestTypeEnum_event,
  _$createExperienceRequestTypeEnum_training,
  _$createExperienceRequestTypeEnum_work,
]);

Serializer<CreateExperienceRequestTypeEnum>
    _$createExperienceRequestTypeEnumSerializer =
    new _$CreateExperienceRequestTypeEnumSerializer();

class _$CreateExperienceRequestTypeEnumSerializer
    implements PrimitiveSerializer<CreateExperienceRequestTypeEnum> {
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
  final Iterable<Type> types = const <Type>[CreateExperienceRequestTypeEnum];
  @override
  final String wireName = 'CreateExperienceRequestTypeEnum';

  @override
  Object serialize(
          Serializers serializers, CreateExperienceRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateExperienceRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateExperienceRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateExperienceRequest extends CreateExperienceRequest {
  @override
  final String description;
  @override
  final String location;
  @override
  final DateTime start;
  @override
  final String title;
  @override
  final CreateExperienceRequestTypeEnum type;
  @override
  final DateTime? end;

  factory _$CreateExperienceRequest(
          [void Function(CreateExperienceRequestBuilder)? updates]) =>
      (new CreateExperienceRequestBuilder()..update(updates))._build();

  _$CreateExperienceRequest._(
      {required this.description,
      required this.location,
      required this.start,
      required this.title,
      required this.type,
      this.end})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, r'CreateExperienceRequest', 'description');
    BuiltValueNullFieldError.checkNotNull(
        location, r'CreateExperienceRequest', 'location');
    BuiltValueNullFieldError.checkNotNull(
        start, r'CreateExperienceRequest', 'start');
    BuiltValueNullFieldError.checkNotNull(
        title, r'CreateExperienceRequest', 'title');
    BuiltValueNullFieldError.checkNotNull(
        type, r'CreateExperienceRequest', 'type');
  }

  @override
  CreateExperienceRequest rebuild(
          void Function(CreateExperienceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateExperienceRequestBuilder toBuilder() =>
      new CreateExperienceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateExperienceRequest &&
        description == other.description &&
        location == other.location &&
        start == other.start &&
        title == other.title &&
        type == other.type &&
        end == other.end;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateExperienceRequest')
          ..add('description', description)
          ..add('location', location)
          ..add('start', start)
          ..add('title', title)
          ..add('type', type)
          ..add('end', end))
        .toString();
  }
}

class CreateExperienceRequestBuilder
    implements
        Builder<CreateExperienceRequest, CreateExperienceRequestBuilder> {
  _$CreateExperienceRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  CreateExperienceRequestTypeEnum? _type;
  CreateExperienceRequestTypeEnum? get type => _$this._type;
  set type(CreateExperienceRequestTypeEnum? type) => _$this._type = type;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  CreateExperienceRequestBuilder() {
    CreateExperienceRequest._defaults(this);
  }

  CreateExperienceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _location = $v.location;
      _start = $v.start;
      _title = $v.title;
      _type = $v.type;
      _end = $v.end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateExperienceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateExperienceRequest;
  }

  @override
  void update(void Function(CreateExperienceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateExperienceRequest build() => _build();

  _$CreateExperienceRequest _build() {
    final _$result = _$v ??
        new _$CreateExperienceRequest._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'CreateExperienceRequest', 'description'),
            location: BuiltValueNullFieldError.checkNotNull(
                location, r'CreateExperienceRequest', 'location'),
            start: BuiltValueNullFieldError.checkNotNull(
                start, r'CreateExperienceRequest', 'start'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'CreateExperienceRequest', 'title'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'CreateExperienceRequest', 'type'),
            end: end);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
