// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Category extends Category {
  @override
  final BuiltList<Competence>? competences;
  @override
  final String? key;
  @override
  final String? title;

  factory _$Category([void Function(CategoryBuilder)? updates]) =>
      (new CategoryBuilder()..update(updates))._build();

  _$Category._({this.competences, this.key, this.title}) : super._();

  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => new CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        competences == other.competences &&
        key == other.key &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, competences.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Category')
          ..add('competences', competences)
          ..add('key', key)
          ..add('title', title))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category? _$v;

  ListBuilder<Competence>? _competences;
  ListBuilder<Competence> get competences =>
      _$this._competences ??= new ListBuilder<Competence>();
  set competences(ListBuilder<Competence>? competences) =>
      _$this._competences = competences;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  CategoryBuilder() {
    Category._defaults(this);
  }

  CategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _competences = $v.competences?.toBuilder();
      _key = $v.key;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Category build() => _build();

  _$Category _build() {
    _$Category _$result;
    try {
      _$result = _$v ??
          new _$Category._(
              competences: _competences?.build(), key: key, title: title);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'competences';
        _competences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Category', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
