// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_review_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateReviewRequest extends UpdateReviewRequest {
  @override
  final String? comment;
  @override
  final ReviewState state;

  factory _$UpdateReviewRequest(
          [void Function(UpdateReviewRequestBuilder)? updates]) =>
      (new UpdateReviewRequestBuilder()..update(updates))._build();

  _$UpdateReviewRequest._({this.comment, required this.state}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        state, r'UpdateReviewRequest', 'state');
  }

  @override
  UpdateReviewRequest rebuild(
          void Function(UpdateReviewRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateReviewRequestBuilder toBuilder() =>
      new UpdateReviewRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateReviewRequest &&
        comment == other.comment &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateReviewRequest')
          ..add('comment', comment)
          ..add('state', state))
        .toString();
  }
}

class UpdateReviewRequestBuilder
    implements Builder<UpdateReviewRequest, UpdateReviewRequestBuilder> {
  _$UpdateReviewRequest? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  ReviewState? _state;
  ReviewState? get state => _$this._state;
  set state(ReviewState? state) => _$this._state = state;

  UpdateReviewRequestBuilder() {
    UpdateReviewRequest._defaults(this);
  }

  UpdateReviewRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateReviewRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateReviewRequest;
  }

  @override
  void update(void Function(UpdateReviewRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateReviewRequest build() => _build();

  _$UpdateReviewRequest _build() {
    final _$result = _$v ??
        new _$UpdateReviewRequest._(
            comment: comment,
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'UpdateReviewRequest', 'state'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
