// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MentorRequest extends MentorRequest {
  @override
  final String email;

  factory _$MentorRequest([void Function(MentorRequestBuilder)? updates]) =>
      (new MentorRequestBuilder()..update(updates))._build();

  _$MentorRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'MentorRequest', 'email');
  }

  @override
  MentorRequest rebuild(void Function(MentorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MentorRequestBuilder toBuilder() => new MentorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MentorRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MentorRequest')..add('email', email))
        .toString();
  }
}

class MentorRequestBuilder
    implements Builder<MentorRequest, MentorRequestBuilder> {
  _$MentorRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  MentorRequestBuilder() {
    MentorRequest._defaults(this);
  }

  MentorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MentorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MentorRequest;
  }

  @override
  void update(void Function(MentorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MentorRequest build() => _build();

  _$MentorRequest _build() {
    final _$result = _$v ??
        new _$MentorRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'MentorRequest', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
