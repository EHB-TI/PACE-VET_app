// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Review extends Review {
  @override
  final String? comment;
  @override
  final Competence? competence;
  @override
  final int? id;
  @override
  final ReviewState? state;

  factory _$Review([void Function(ReviewBuilder)? updates]) =>
      (new ReviewBuilder()..update(updates))._build();

  _$Review._({this.comment, this.competence, this.id, this.state}) : super._();

  @override
  Review rebuild(void Function(ReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewBuilder toBuilder() => new ReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
        comment == other.comment &&
        competence == other.competence &&
        id == other.id &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, competence.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Review')
          ..add('comment', comment)
          ..add('competence', competence)
          ..add('id', id)
          ..add('state', state))
        .toString();
  }
}

class ReviewBuilder implements Builder<Review, ReviewBuilder> {
  _$Review? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  CompetenceBuilder? _competence;
  CompetenceBuilder get competence =>
      _$this._competence ??= new CompetenceBuilder();
  set competence(CompetenceBuilder? competence) =>
      _$this._competence = competence;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ReviewState? _state;
  ReviewState? get state => _$this._state;
  set state(ReviewState? state) => _$this._state = state;

  ReviewBuilder() {
    Review._defaults(this);
  }

  ReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _competence = $v.competence?.toBuilder();
      _id = $v.id;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Review other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Review;
  }

  @override
  void update(void Function(ReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Review build() => _build();

  _$Review _build() {
    _$Review _$result;
    try {
      _$result = _$v ??
          new _$Review._(
              comment: comment,
              competence: _competence?.build(),
              id: id,
              state: state);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'competence';
        _competence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Review', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
