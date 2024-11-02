// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExperienceTypeEnum _$experienceTypeEnum_event =
    const ExperienceTypeEnum._('event');
const ExperienceTypeEnum _$experienceTypeEnum_training =
    const ExperienceTypeEnum._('training');
const ExperienceTypeEnum _$experienceTypeEnum_work =
    const ExperienceTypeEnum._('work');

ExperienceTypeEnum _$experienceTypeEnumValueOf(String name) {
  switch (name) {
    case 'event':
      return _$experienceTypeEnum_event;
    case 'training':
      return _$experienceTypeEnum_training;
    case 'work':
      return _$experienceTypeEnum_work;
    default:
      return _$experienceTypeEnum_work;
  }
}

final BuiltSet<ExperienceTypeEnum> _$experienceTypeEnumValues =
    new BuiltSet<ExperienceTypeEnum>(const <ExperienceTypeEnum>[
  _$experienceTypeEnum_event,
  _$experienceTypeEnum_training,
  _$experienceTypeEnum_work,
]);

Serializer<ExperienceTypeEnum> _$experienceTypeEnumSerializer =
    new _$ExperienceTypeEnumSerializer();

class _$ExperienceTypeEnumSerializer
    implements PrimitiveSerializer<ExperienceTypeEnum> {
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
  final Iterable<Type> types = const <Type>[ExperienceTypeEnum];
  @override
  final String wireName = 'ExperienceTypeEnum';

  @override
  Object serialize(Serializers serializers, ExperienceTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExperienceTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExperienceTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Experience extends Experience {
  @override
  final BuiltList<Attachment>? attachments;
  @override
  final String? description;
  @override
  final DateTime? end;
  @override
  final int? id;
  @override
  final String? location;
  @override
  final DateTime? start;
  @override
  final String? title;
  @override
  final ExperienceTypeEnum? type;

  factory _$Experience([void Function(ExperienceBuilder)? updates]) =>
      (new ExperienceBuilder()..update(updates))._build();

  _$Experience._(
      {this.attachments,
      this.description,
      this.end,
      this.id,
      this.location,
      this.start,
      this.title,
      this.type})
      : super._();

  @override
  Experience rebuild(void Function(ExperienceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExperienceBuilder toBuilder() => new ExperienceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Experience &&
        attachments == other.attachments &&
        description == other.description &&
        end == other.end &&
        id == other.id &&
        location == other.location &&
        start == other.start &&
        title == other.title &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Experience')
          ..add('attachments', attachments)
          ..add('description', description)
          ..add('end', end)
          ..add('id', id)
          ..add('location', location)
          ..add('start', start)
          ..add('title', title)
          ..add('type', type))
        .toString();
  }
}

class ExperienceBuilder implements Builder<Experience, ExperienceBuilder> {
  _$Experience? _$v;

  ListBuilder<Attachment>? _attachments;
  ListBuilder<Attachment> get attachments =>
      _$this._attachments ??= new ListBuilder<Attachment>();
  set attachments(ListBuilder<Attachment>? attachments) =>
      _$this._attachments = attachments;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _end;
  DateTime? get end => _$this._end;
  set end(DateTime? end) => _$this._end = end;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DateTime? _start;
  DateTime? get start => _$this._start;
  set start(DateTime? start) => _$this._start = start;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ExperienceTypeEnum? _type;
  ExperienceTypeEnum? get type => _$this._type;
  set type(ExperienceTypeEnum? type) => _$this._type = type;

  ExperienceBuilder() {
    Experience._defaults(this);
  }

  ExperienceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachments = $v.attachments?.toBuilder();
      _description = $v.description;
      _end = $v.end;
      _id = $v.id;
      _location = $v.location;
      _start = $v.start;
      _title = $v.title;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Experience other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Experience;
  }

  @override
  void update(void Function(ExperienceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Experience build() => _build();

  _$Experience _build() {
    _$Experience _$result;
    try {
      _$result = _$v ??
          new _$Experience._(
              attachments: _attachments?.build(),
              description: description,
              end: end,
              id: id,
              location: location,
              start: start,
              title: title,
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Experience', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
