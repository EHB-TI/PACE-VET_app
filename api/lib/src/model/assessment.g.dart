// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssessmentStateEnum _$assessmentStateEnum_pending =
    const AssessmentStateEnum._('pending');
const AssessmentStateEnum _$assessmentStateEnum_approved =
    const AssessmentStateEnum._('approved');
const AssessmentStateEnum _$assessmentStateEnum_rejected =
    const AssessmentStateEnum._('rejected');
const AssessmentStateEnum _$assessmentStateEnum_unknown =
    const AssessmentStateEnum._('unknown');

AssessmentStateEnum _$assessmentStateEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$assessmentStateEnum_pending;
    case 'approved':
      return _$assessmentStateEnum_approved;
    case 'rejected':
      return _$assessmentStateEnum_rejected;
    case 'unknown':
      return _$assessmentStateEnum_unknown;
    default:
      return _$assessmentStateEnum_unknown;
  }
}

final BuiltSet<AssessmentStateEnum> _$assessmentStateEnumValues =
    new BuiltSet<AssessmentStateEnum>(const <AssessmentStateEnum>[
  _$assessmentStateEnum_pending,
  _$assessmentStateEnum_approved,
  _$assessmentStateEnum_rejected,
  _$assessmentStateEnum_unknown,
]);

Serializer<AssessmentStateEnum> _$assessmentStateEnumSerializer =
    new _$AssessmentStateEnumSerializer();

class _$AssessmentStateEnumSerializer
    implements PrimitiveSerializer<AssessmentStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'approved': 'approved',
    'rejected': 'rejected',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'approved': 'approved',
    'rejected': 'rejected',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[AssessmentStateEnum];
  @override
  final String wireName = 'AssessmentStateEnum';

  @override
  Object serialize(Serializers serializers, AssessmentStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AssessmentStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AssessmentStateEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Assessment extends Assessment {
  @override
  final MinimalUser? assessor;
  @override
  final MinimalUser? candidate;
  @override
  final int? id;
  @override
  final BuiltList<Review>? reviews;
  @override
  final AssessmentStateEnum? state;

  factory _$Assessment([void Function(AssessmentBuilder)? updates]) =>
      (new AssessmentBuilder()..update(updates))._build();

  _$Assessment._(
      {this.assessor, this.candidate, this.id, this.reviews, this.state})
      : super._();

  @override
  Assessment rebuild(void Function(AssessmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssessmentBuilder toBuilder() => new AssessmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Assessment &&
        assessor == other.assessor &&
        candidate == other.candidate &&
        id == other.id &&
        reviews == other.reviews &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assessor.hashCode);
    _$hash = $jc(_$hash, candidate.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, reviews.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Assessment')
          ..add('assessor', assessor)
          ..add('candidate', candidate)
          ..add('id', id)
          ..add('reviews', reviews)
          ..add('state', state))
        .toString();
  }
}

class AssessmentBuilder implements Builder<Assessment, AssessmentBuilder> {
  _$Assessment? _$v;

  MinimalUserBuilder? _assessor;
  MinimalUserBuilder get assessor =>
      _$this._assessor ??= new MinimalUserBuilder();
  set assessor(MinimalUserBuilder? assessor) => _$this._assessor = assessor;

  MinimalUserBuilder? _candidate;
  MinimalUserBuilder get candidate =>
      _$this._candidate ??= new MinimalUserBuilder();
  set candidate(MinimalUserBuilder? candidate) => _$this._candidate = candidate;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<Review>? _reviews;
  ListBuilder<Review> get reviews =>
      _$this._reviews ??= new ListBuilder<Review>();
  set reviews(ListBuilder<Review>? reviews) => _$this._reviews = reviews;

  AssessmentStateEnum? _state;
  AssessmentStateEnum? get state => _$this._state;
  set state(AssessmentStateEnum? state) => _$this._state = state;

  AssessmentBuilder() {
    Assessment._defaults(this);
  }

  AssessmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assessor = $v.assessor?.toBuilder();
      _candidate = $v.candidate?.toBuilder();
      _id = $v.id;
      _reviews = $v.reviews?.toBuilder();
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Assessment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Assessment;
  }

  @override
  void update(void Function(AssessmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Assessment build() => _build();

  _$Assessment _build() {
    _$Assessment _$result;
    try {
      _$result = _$v ??
          new _$Assessment._(
              assessor: _assessor?.build(),
              candidate: _candidate?.build(),
              id: id,
              reviews: _reviews?.build(),
              state: state);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assessor';
        _assessor?.build();
        _$failedField = 'candidate';
        _candidate?.build();

        _$failedField = 'reviews';
        _reviews?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Assessment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
