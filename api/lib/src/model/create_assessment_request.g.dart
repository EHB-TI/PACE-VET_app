// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_assessment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAssessmentRequest extends CreateAssessmentRequest {
  @override
  final num assessor;
  @override
  final BuiltList<String> competences;

  factory _$CreateAssessmentRequest(
          [void Function(CreateAssessmentRequestBuilder)? updates]) =>
      (new CreateAssessmentRequestBuilder()..update(updates))._build();

  _$CreateAssessmentRequest._(
      {required this.assessor, required this.competences})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        assessor, r'CreateAssessmentRequest', 'assessor');
    BuiltValueNullFieldError.checkNotNull(
        competences, r'CreateAssessmentRequest', 'competences');
  }

  @override
  CreateAssessmentRequest rebuild(
          void Function(CreateAssessmentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAssessmentRequestBuilder toBuilder() =>
      new CreateAssessmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAssessmentRequest &&
        assessor == other.assessor &&
        competences == other.competences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assessor.hashCode);
    _$hash = $jc(_$hash, competences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAssessmentRequest')
          ..add('assessor', assessor)
          ..add('competences', competences))
        .toString();
  }
}

class CreateAssessmentRequestBuilder
    implements
        Builder<CreateAssessmentRequest, CreateAssessmentRequestBuilder> {
  _$CreateAssessmentRequest? _$v;

  num? _assessor;
  num? get assessor => _$this._assessor;
  set assessor(num? assessor) => _$this._assessor = assessor;

  ListBuilder<String>? _competences;
  ListBuilder<String> get competences =>
      _$this._competences ??= new ListBuilder<String>();
  set competences(ListBuilder<String>? competences) =>
      _$this._competences = competences;

  CreateAssessmentRequestBuilder() {
    CreateAssessmentRequest._defaults(this);
  }

  CreateAssessmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assessor = $v.assessor;
      _competences = $v.competences.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAssessmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAssessmentRequest;
  }

  @override
  void update(void Function(CreateAssessmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAssessmentRequest build() => _build();

  _$CreateAssessmentRequest _build() {
    _$CreateAssessmentRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateAssessmentRequest._(
              assessor: BuiltValueNullFieldError.checkNotNull(
                  assessor, r'CreateAssessmentRequest', 'assessor'),
              competences: competences.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'competences';
        competences.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateAssessmentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
