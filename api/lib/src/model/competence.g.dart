// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Competence extends Competence {
  @override
  final String? conceptUri;
  @override
  final String? description;
  @override
  final String? esco;
  @override
  final String? key;
  @override
  final String? scope;
  @override
  final JsonObject? sectorDetails;
  @override
  final String? title;

  factory _$Competence([void Function(CompetenceBuilder)? updates]) =>
      (new CompetenceBuilder()..update(updates))._build();

  _$Competence._(
      {this.conceptUri,
      this.description,
      this.esco,
      this.key,
      this.scope,
      this.sectorDetails,
      this.title})
      : super._();

  @override
  Competence rebuild(void Function(CompetenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompetenceBuilder toBuilder() => new CompetenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Competence &&
        conceptUri == other.conceptUri &&
        description == other.description &&
        esco == other.esco &&
        key == other.key &&
        scope == other.scope &&
        sectorDetails == other.sectorDetails &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conceptUri.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, esco.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, sectorDetails.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Competence')
          ..add('conceptUri', conceptUri)
          ..add('description', description)
          ..add('esco', esco)
          ..add('key', key)
          ..add('scope', scope)
          ..add('sectorDetails', sectorDetails)
          ..add('title', title))
        .toString();
  }
}

class CompetenceBuilder implements Builder<Competence, CompetenceBuilder> {
  _$Competence? _$v;

  String? _conceptUri;
  String? get conceptUri => _$this._conceptUri;
  set conceptUri(String? conceptUri) => _$this._conceptUri = conceptUri;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _esco;
  String? get esco => _$this._esco;
  set esco(String? esco) => _$this._esco = esco;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  JsonObject? _sectorDetails;
  JsonObject? get sectorDetails => _$this._sectorDetails;
  set sectorDetails(JsonObject? sectorDetails) =>
      _$this._sectorDetails = sectorDetails;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  CompetenceBuilder() {
    Competence._defaults(this);
  }

  CompetenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conceptUri = $v.conceptUri;
      _description = $v.description;
      _esco = $v.esco;
      _key = $v.key;
      _scope = $v.scope;
      _sectorDetails = $v.sectorDetails;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Competence other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Competence;
  }

  @override
  void update(void Function(CompetenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Competence build() => _build();

  _$Competence _build() {
    final _$result = _$v ??
        new _$Competence._(
            conceptUri: conceptUri,
            description: description,
            esco: esco,
            key: key,
            scope: scope,
            sectorDetails: sectorDetails,
            title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
