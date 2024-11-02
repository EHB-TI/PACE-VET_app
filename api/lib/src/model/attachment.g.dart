// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Attachment extends Attachment {
  @override
  final BuiltList<Competence>? competences;
  @override
  final String? contentType;
  @override
  final String? description;
  @override
  final String? file;
  @override
  final int? id;
  @override
  final bool? locked;
  @override
  final String? preview;

  factory _$Attachment([void Function(AttachmentBuilder)? updates]) =>
      (new AttachmentBuilder()..update(updates))._build();

  _$Attachment._(
      {this.competences,
      this.contentType,
      this.description,
      this.file,
      this.id,
      this.locked,
      this.preview})
      : super._();

  @override
  Attachment rebuild(void Function(AttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachmentBuilder toBuilder() => new AttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Attachment &&
        competences == other.competences &&
        contentType == other.contentType &&
        description == other.description &&
        file == other.file &&
        id == other.id &&
        locked == other.locked &&
        preview == other.preview;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, competences.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, preview.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Attachment')
          ..add('competences', competences)
          ..add('contentType', contentType)
          ..add('description', description)
          ..add('file', file)
          ..add('id', id)
          ..add('locked', locked)
          ..add('preview', preview))
        .toString();
  }
}

class AttachmentBuilder implements Builder<Attachment, AttachmentBuilder> {
  _$Attachment? _$v;

  ListBuilder<Competence>? _competences;
  ListBuilder<Competence> get competences =>
      _$this._competences ??= new ListBuilder<Competence>();
  set competences(ListBuilder<Competence>? competences) =>
      _$this._competences = competences;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _locked;
  bool? get locked => _$this._locked;
  set locked(bool? locked) => _$this._locked = locked;

  String? _preview;
  String? get preview => _$this._preview;
  set preview(String? preview) => _$this._preview = preview;

  AttachmentBuilder() {
    Attachment._defaults(this);
  }

  AttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _competences = $v.competences?.toBuilder();
      _contentType = $v.contentType;
      _description = $v.description;
      _file = $v.file;
      _id = $v.id;
      _locked = $v.locked;
      _preview = $v.preview;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Attachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Attachment;
  }

  @override
  void update(void Function(AttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Attachment build() => _build();

  _$Attachment _build() {
    _$Attachment _$result;
    try {
      _$result = _$v ??
          new _$Attachment._(
              competences: _competences?.build(),
              contentType: contentType,
              description: description,
              file: file,
              id: id,
              locked: locked,
              preview: preview);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'competences';
        _competences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Attachment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
