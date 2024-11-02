// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attachment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAttachmentRequest extends UpdateAttachmentRequest {
  @override
  final String description;

  factory _$UpdateAttachmentRequest(
          [void Function(UpdateAttachmentRequestBuilder)? updates]) =>
      (new UpdateAttachmentRequestBuilder()..update(updates))._build();

  _$UpdateAttachmentRequest._({required this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, r'UpdateAttachmentRequest', 'description');
  }

  @override
  UpdateAttachmentRequest rebuild(
          void Function(UpdateAttachmentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAttachmentRequestBuilder toBuilder() =>
      new UpdateAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAttachmentRequest && description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAttachmentRequest')
          ..add('description', description))
        .toString();
  }
}

class UpdateAttachmentRequestBuilder
    implements
        Builder<UpdateAttachmentRequest, UpdateAttachmentRequestBuilder> {
  _$UpdateAttachmentRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdateAttachmentRequestBuilder() {
    UpdateAttachmentRequest._defaults(this);
  }

  UpdateAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAttachmentRequest;
  }

  @override
  void update(void Function(UpdateAttachmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAttachmentRequest build() => _build();

  _$UpdateAttachmentRequest _build() {
    final _$result = _$v ??
        new _$UpdateAttachmentRequest._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'UpdateAttachmentRequest', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
