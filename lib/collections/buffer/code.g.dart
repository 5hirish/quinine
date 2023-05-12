// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCodeTextCollection on Isar {
  IsarCollection<CodeText> get codeTexts => this.collection();
}

const CodeTextSchema = CollectionSchema(
  name: r'CodeText',
  id: -5569399616699092146,
  properties: {
    r'baseOffset': PropertySchema(
      id: 0,
      name: r'baseOffset',
      type: IsarType.long,
    ),
    r'bufferedAt': PropertySchema(
      id: 1,
      name: r'bufferedAt',
      type: IsarType.dateTime,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'extentOffset': PropertySchema(
      id: 3,
      name: r'extentOffset',
      type: IsarType.long,
    ),
    r'filePath': PropertySchema(
      id: 4,
      name: r'filePath',
      type: IsarType.string,
    ),
    r'fullText': PropertySchema(
      id: 5,
      name: r'fullText',
      type: IsarType.string,
    ),
    r'language': PropertySchema(
      id: 6,
      name: r'language',
      type: IsarType.string,
    )
  },
  estimateSize: _codeTextEstimateSize,
  serialize: _codeTextSerialize,
  deserialize: _codeTextDeserialize,
  deserializeProp: _codeTextDeserializeProp,
  idName: r'id',
  indexes: {
    r'filePath': IndexSchema(
      id: 2918041768256347220,
      name: r'filePath',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'filePath',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
    r'bufferedAt': IndexSchema(
      id: -3620547954992779279,
      name: r'bufferedAt',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'bufferedAt',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _codeTextGetId,
  getLinks: _codeTextGetLinks,
  attach: _codeTextAttach,
  version: '3.1.0+1',
);

int _codeTextEstimateSize(
  CodeText object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.filePath.length * 3;
  bytesCount += 3 + object.fullText.length * 3;
  bytesCount += 3 + object.language.length * 3;
  return bytesCount;
}

void _codeTextSerialize(
  CodeText object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.baseOffset);
  writer.writeDateTime(offsets[1], object.bufferedAt);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeLong(offsets[3], object.extentOffset);
  writer.writeString(offsets[4], object.filePath);
  writer.writeString(offsets[5], object.fullText);
  writer.writeString(offsets[6], object.language);
}

CodeText _codeTextDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CodeText();
  object.baseOffset = reader.readLong(offsets[0]);
  object.bufferedAt = reader.readDateTimeOrNull(offsets[1]);
  object.createdAt = reader.readDateTime(offsets[2]);
  object.extentOffset = reader.readLong(offsets[3]);
  object.filePath = reader.readString(offsets[4]);
  object.fullText = reader.readString(offsets[5]);
  object.id = id;
  object.language = reader.readString(offsets[6]);
  return object;
}

P _codeTextDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _codeTextGetId(CodeText object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _codeTextGetLinks(CodeText object) {
  return [];
}

void _codeTextAttach(IsarCollection<dynamic> col, Id id, CodeText object) {
  object.id = id;
}

extension CodeTextByIndex on IsarCollection<CodeText> {
  Future<CodeText?> getByFilePath(String filePath) {
    return getByIndex(r'filePath', [filePath]);
  }

  CodeText? getByFilePathSync(String filePath) {
    return getByIndexSync(r'filePath', [filePath]);
  }

  Future<bool> deleteByFilePath(String filePath) {
    return deleteByIndex(r'filePath', [filePath]);
  }

  bool deleteByFilePathSync(String filePath) {
    return deleteByIndexSync(r'filePath', [filePath]);
  }

  Future<List<CodeText?>> getAllByFilePath(List<String> filePathValues) {
    final values = filePathValues.map((e) => [e]).toList();
    return getAllByIndex(r'filePath', values);
  }

  List<CodeText?> getAllByFilePathSync(List<String> filePathValues) {
    final values = filePathValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'filePath', values);
  }

  Future<int> deleteAllByFilePath(List<String> filePathValues) {
    final values = filePathValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'filePath', values);
  }

  int deleteAllByFilePathSync(List<String> filePathValues) {
    final values = filePathValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'filePath', values);
  }

  Future<Id> putByFilePath(CodeText object) {
    return putByIndex(r'filePath', object);
  }

  Id putByFilePathSync(CodeText object, {bool saveLinks = true}) {
    return putByIndexSync(r'filePath', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByFilePath(List<CodeText> objects) {
    return putAllByIndex(r'filePath', objects);
  }

  List<Id> putAllByFilePathSync(List<CodeText> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'filePath', objects, saveLinks: saveLinks);
  }
}

extension CodeTextQueryWhereSort on QueryBuilder<CodeText, CodeText, QWhere> {
  QueryBuilder<CodeText, CodeText, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhere> anyBufferedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'bufferedAt'),
      );
    });
  }
}

extension CodeTextQueryWhere on QueryBuilder<CodeText, CodeText, QWhereClause> {
  QueryBuilder<CodeText, CodeText, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> filePathEqualTo(
      String filePath) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'filePath',
        value: [filePath],
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> filePathNotEqualTo(
      String filePath) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'filePath',
              lower: [],
              upper: [filePath],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'filePath',
              lower: [filePath],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'filePath',
              lower: [filePath],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'filePath',
              lower: [],
              upper: [filePath],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> bufferedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bufferedAt',
        value: [null],
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> bufferedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bufferedAt',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> bufferedAtEqualTo(
      DateTime? bufferedAt) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bufferedAt',
        value: [bufferedAt],
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> bufferedAtNotEqualTo(
      DateTime? bufferedAt) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bufferedAt',
              lower: [],
              upper: [bufferedAt],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bufferedAt',
              lower: [bufferedAt],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bufferedAt',
              lower: [bufferedAt],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bufferedAt',
              lower: [],
              upper: [bufferedAt],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> bufferedAtGreaterThan(
    DateTime? bufferedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bufferedAt',
        lower: [bufferedAt],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> bufferedAtLessThan(
    DateTime? bufferedAt, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bufferedAt',
        lower: [],
        upper: [bufferedAt],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterWhereClause> bufferedAtBetween(
    DateTime? lowerBufferedAt,
    DateTime? upperBufferedAt, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bufferedAt',
        lower: [lowerBufferedAt],
        includeLower: includeLower,
        upper: [upperBufferedAt],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CodeTextQueryFilter
    on QueryBuilder<CodeText, CodeText, QFilterCondition> {
  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> baseOffsetEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'baseOffset',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> baseOffsetGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'baseOffset',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> baseOffsetLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'baseOffset',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> baseOffsetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'baseOffset',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> bufferedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bufferedAt',
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition>
      bufferedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bufferedAt',
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> bufferedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bufferedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> bufferedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bufferedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> bufferedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bufferedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> bufferedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bufferedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> extentOffsetEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extentOffset',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition>
      extentOffsetGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'extentOffset',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> extentOffsetLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'extentOffset',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> extentOffsetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'extentOffset',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'filePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'filePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'filePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'filePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> filePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'filePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullText',
        value: '',
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> fullTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullText',
        value: '',
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterFilterCondition> languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }
}

extension CodeTextQueryObject
    on QueryBuilder<CodeText, CodeText, QFilterCondition> {}

extension CodeTextQueryLinks
    on QueryBuilder<CodeText, CodeText, QFilterCondition> {}

extension CodeTextQuerySortBy on QueryBuilder<CodeText, CodeText, QSortBy> {
  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByBaseOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseOffset', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByBaseOffsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseOffset', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByBufferedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bufferedAt', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByBufferedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bufferedAt', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByExtentOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extentOffset', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByExtentOffsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extentOffset', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByFilePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByFilePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByFullText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullText', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByFullTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullText', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }
}

extension CodeTextQuerySortThenBy
    on QueryBuilder<CodeText, CodeText, QSortThenBy> {
  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByBaseOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseOffset', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByBaseOffsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'baseOffset', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByBufferedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bufferedAt', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByBufferedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bufferedAt', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByExtentOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extentOffset', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByExtentOffsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extentOffset', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByFilePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByFilePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'filePath', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByFullText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullText', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByFullTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullText', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<CodeText, CodeText, QAfterSortBy> thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }
}

extension CodeTextQueryWhereDistinct
    on QueryBuilder<CodeText, CodeText, QDistinct> {
  QueryBuilder<CodeText, CodeText, QDistinct> distinctByBaseOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'baseOffset');
    });
  }

  QueryBuilder<CodeText, CodeText, QDistinct> distinctByBufferedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bufferedAt');
    });
  }

  QueryBuilder<CodeText, CodeText, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<CodeText, CodeText, QDistinct> distinctByExtentOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'extentOffset');
    });
  }

  QueryBuilder<CodeText, CodeText, QDistinct> distinctByFilePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'filePath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CodeText, CodeText, QDistinct> distinctByFullText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CodeText, CodeText, QDistinct> distinctByLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }
}

extension CodeTextQueryProperty
    on QueryBuilder<CodeText, CodeText, QQueryProperty> {
  QueryBuilder<CodeText, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CodeText, int, QQueryOperations> baseOffsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'baseOffset');
    });
  }

  QueryBuilder<CodeText, DateTime?, QQueryOperations> bufferedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bufferedAt');
    });
  }

  QueryBuilder<CodeText, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<CodeText, int, QQueryOperations> extentOffsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extentOffset');
    });
  }

  QueryBuilder<CodeText, String, QQueryOperations> filePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'filePath');
    });
  }

  QueryBuilder<CodeText, String, QQueryOperations> fullTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullText');
    });
  }

  QueryBuilder<CodeText, String, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }
}
