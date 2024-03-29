// Mocks generated by Mockito 5.4.2 from annotations
// in quinine/test/provider/code_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:typed_data' as _i6;

import 'package:clock/clock.dart' as _i8;
import 'package:isar/isar.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:quinine/collections/buffer/code.dart' as _i4;
import 'package:quinine/repository/buffer/code.dart' as _i3;
import 'package:quinine/services/file.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeIsar_0 extends _i1.SmartFake implements _i2.Isar {
  _FakeIsar_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIsarCollection_1<OBJ> extends _i1.SmartFake
    implements _i2.IsarCollection<OBJ> {
  _FakeIsarCollection_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCollectionSchema_2<OBJ> extends _i1.SmartFake
    implements _i2.CollectionSchema<OBJ> {
  _FakeCollectionSchema_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeQueryBuilder_3<OBJ, R, S> extends _i1.SmartFake
    implements _i2.QueryBuilder<OBJ, R, S> {
  _FakeQueryBuilder_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeQuery_4<T> extends _i1.SmartFake implements _i2.Query<T> {
  _FakeQuery_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDateTime_5 extends _i1.SmartFake implements DateTime {
  _FakeDateTime_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStopwatch_6 extends _i1.SmartFake implements Stopwatch {
  _FakeStopwatch_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CodeRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCodeRepository extends _i1.Mock implements _i3.CodeRepository {
  @override
  _i2.Isar get db => (super.noSuchMethod(
        Invocation.getter(#db),
        returnValue: _FakeIsar_0(
          this,
          Invocation.getter(#db),
        ),
        returnValueForMissingStub: _FakeIsar_0(
          this,
          Invocation.getter(#db),
        ),
      ) as _i2.Isar);
  @override
  _i2.IsarCollection<_i4.CodeText> getCodeTextCol() => (super.noSuchMethod(
        Invocation.method(
          #getCodeTextCol,
          [],
        ),
        returnValue: _FakeIsarCollection_1<_i4.CodeText>(
          this,
          Invocation.method(
            #getCodeTextCol,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeIsarCollection_1<_i4.CodeText>(
          this,
          Invocation.method(
            #getCodeTextCol,
            [],
          ),
        ),
      ) as _i2.IsarCollection<_i4.CodeText>);
  @override
  _i5.Future<_i4.CodeText?> getBufferCodeById(int? objectId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getBufferCodeById,
          [objectId],
        ),
        returnValue: _i5.Future<_i4.CodeText?>.value(),
        returnValueForMissingStub: _i5.Future<_i4.CodeText?>.value(),
      ) as _i5.Future<_i4.CodeText?>);
  @override
  _i5.Future<_i4.CodeText?> getBufferCodeByFilePath(String? filePath) =>
      (super.noSuchMethod(
        Invocation.method(
          #getBufferCodeByFilePath,
          [filePath],
        ),
        returnValue: _i5.Future<_i4.CodeText?>.value(),
        returnValueForMissingStub: _i5.Future<_i4.CodeText?>.value(),
      ) as _i5.Future<_i4.CodeText?>);
  @override
  _i5.Future<int> insertBufferCode(_i4.CodeText? codeText) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertBufferCode,
          [codeText],
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  _i5.Future<int> updateBufferCodeByFilePath(_i4.CodeText? codeText) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateBufferCodeByFilePath,
          [codeText],
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  _i5.Future<bool> deleteBufferCodeByFilePath(String? filePath) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteBufferCodeByFilePath,
          [filePath],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
}

/// A class which mocks [IsarCollection].
///
/// See the documentation for Mockito's code generation for more information.
class MockIsarCollection extends _i1.Mock
    implements _i2.IsarCollection<_i4.CodeText> {
  @override
  _i2.Isar get isar => (super.noSuchMethod(
        Invocation.getter(#isar),
        returnValue: _FakeIsar_0(
          this,
          Invocation.getter(#isar),
        ),
        returnValueForMissingStub: _FakeIsar_0(
          this,
          Invocation.getter(#isar),
        ),
      ) as _i2.Isar);
  @override
  _i2.CollectionSchema<_i4.CodeText> get schema => (super.noSuchMethod(
        Invocation.getter(#schema),
        returnValue: _FakeCollectionSchema_2<_i4.CodeText>(
          this,
          Invocation.getter(#schema),
        ),
        returnValueForMissingStub: _FakeCollectionSchema_2<_i4.CodeText>(
          this,
          Invocation.getter(#schema),
        ),
      ) as _i2.CollectionSchema<_i4.CodeText>);
  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i5.Future<_i4.CodeText?> get(int? id) => (super.noSuchMethod(
        Invocation.method(
          #get,
          [id],
        ),
        returnValue: _i5.Future<_i4.CodeText?>.value(),
        returnValueForMissingStub: _i5.Future<_i4.CodeText?>.value(),
      ) as _i5.Future<_i4.CodeText?>);
  @override
  _i4.CodeText? getSync(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getSync,
          [id],
        ),
        returnValueForMissingStub: null,
      ) as _i4.CodeText?);
  @override
  _i5.Future<List<_i4.CodeText?>> getAll(List<int>? ids) => (super.noSuchMethod(
        Invocation.method(
          #getAll,
          [ids],
        ),
        returnValue: _i5.Future<List<_i4.CodeText?>>.value(<_i4.CodeText?>[]),
        returnValueForMissingStub:
            _i5.Future<List<_i4.CodeText?>>.value(<_i4.CodeText?>[]),
      ) as _i5.Future<List<_i4.CodeText?>>);
  @override
  List<_i4.CodeText?> getAllSync(List<int>? ids) => (super.noSuchMethod(
        Invocation.method(
          #getAllSync,
          [ids],
        ),
        returnValue: <_i4.CodeText?>[],
        returnValueForMissingStub: <_i4.CodeText?>[],
      ) as List<_i4.CodeText?>);
  @override
  _i5.Future<_i4.CodeText?> getByIndex(
    String? indexName,
    List<Object?>? key,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getByIndex,
          [
            indexName,
            key,
          ],
        ),
        returnValue: _i5.Future<_i4.CodeText?>.value(),
        returnValueForMissingStub: _i5.Future<_i4.CodeText?>.value(),
      ) as _i5.Future<_i4.CodeText?>);
  @override
  _i4.CodeText? getByIndexSync(
    String? indexName,
    List<Object?>? key,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getByIndexSync,
          [
            indexName,
            key,
          ],
        ),
        returnValueForMissingStub: null,
      ) as _i4.CodeText?);
  @override
  _i5.Future<List<_i4.CodeText?>> getAllByIndex(
    String? indexName,
    List<List<Object?>>? keys,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllByIndex,
          [
            indexName,
            keys,
          ],
        ),
        returnValue: _i5.Future<List<_i4.CodeText?>>.value(<_i4.CodeText?>[]),
        returnValueForMissingStub:
            _i5.Future<List<_i4.CodeText?>>.value(<_i4.CodeText?>[]),
      ) as _i5.Future<List<_i4.CodeText?>>);
  @override
  List<_i4.CodeText?> getAllByIndexSync(
    String? indexName,
    List<List<Object?>>? keys,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllByIndexSync,
          [
            indexName,
            keys,
          ],
        ),
        returnValue: <_i4.CodeText?>[],
        returnValueForMissingStub: <_i4.CodeText?>[],
      ) as List<_i4.CodeText?>);
  @override
  _i5.Future<int> put(_i4.CodeText? object) => (super.noSuchMethod(
        Invocation.method(
          #put,
          [object],
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  int putSync(
    _i4.CodeText? object, {
    bool? saveLinks = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putSync,
          [object],
          {#saveLinks: saveLinks},
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i5.Future<List<int>> putAll(List<_i4.CodeText>? objects) =>
      (super.noSuchMethod(
        Invocation.method(
          #putAll,
          [objects],
        ),
        returnValue: _i5.Future<List<int>>.value(<int>[]),
        returnValueForMissingStub: _i5.Future<List<int>>.value(<int>[]),
      ) as _i5.Future<List<int>>);
  @override
  List<int> putAllSync(
    List<_i4.CodeText>? objects, {
    bool? saveLinks = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putAllSync,
          [objects],
          {#saveLinks: saveLinks},
        ),
        returnValue: <int>[],
        returnValueForMissingStub: <int>[],
      ) as List<int>);
  @override
  _i5.Future<int> putByIndex(
    String? indexName,
    _i4.CodeText? object,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #putByIndex,
          [
            indexName,
            object,
          ],
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  int putByIndexSync(
    String? indexName,
    _i4.CodeText? object, {
    bool? saveLinks = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putByIndexSync,
          [
            indexName,
            object,
          ],
          {#saveLinks: saveLinks},
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i5.Future<List<int>> putAllByIndex(
    String? indexName,
    List<_i4.CodeText>? objects,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #putAllByIndex,
          [
            indexName,
            objects,
          ],
        ),
        returnValue: _i5.Future<List<int>>.value(<int>[]),
        returnValueForMissingStub: _i5.Future<List<int>>.value(<int>[]),
      ) as _i5.Future<List<int>>);
  @override
  List<int> putAllByIndexSync(
    String? indexName,
    List<_i4.CodeText>? objects, {
    bool? saveLinks = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putAllByIndexSync,
          [
            indexName,
            objects,
          ],
          {#saveLinks: saveLinks},
        ),
        returnValue: <int>[],
        returnValueForMissingStub: <int>[],
      ) as List<int>);
  @override
  _i5.Future<bool> delete(int? id) => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [id],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  bool deleteSync(int? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteSync,
          [id],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i5.Future<int> deleteAll(List<int>? ids) => (super.noSuchMethod(
        Invocation.method(
          #deleteAll,
          [ids],
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  int deleteAllSync(List<int>? ids) => (super.noSuchMethod(
        Invocation.method(
          #deleteAllSync,
          [ids],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i5.Future<bool> deleteByIndex(
    String? indexName,
    List<Object?>? key,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteByIndex,
          [
            indexName,
            key,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  bool deleteByIndexSync(
    String? indexName,
    List<Object?>? key,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteByIndexSync,
          [
            indexName,
            key,
          ],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  _i5.Future<int> deleteAllByIndex(
    String? indexName,
    List<List<Object?>>? keys,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteAllByIndex,
          [
            indexName,
            keys,
          ],
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  int deleteAllByIndexSync(
    String? indexName,
    List<List<Object?>>? keys,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteAllByIndexSync,
          [
            indexName,
            keys,
          ],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i5.Future<void> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  void clearSync() => super.noSuchMethod(
        Invocation.method(
          #clearSync,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<void> importJsonRaw(_i6.Uint8List? jsonBytes) =>
      (super.noSuchMethod(
        Invocation.method(
          #importJsonRaw,
          [jsonBytes],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  void importJsonRawSync(_i6.Uint8List? jsonBytes) => super.noSuchMethod(
        Invocation.method(
          #importJsonRawSync,
          [jsonBytes],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<void> importJson(List<Map<String, dynamic>>? json) =>
      (super.noSuchMethod(
        Invocation.method(
          #importJson,
          [json],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  void importJsonSync(List<Map<String, dynamic>>? json) => super.noSuchMethod(
        Invocation.method(
          #importJsonSync,
          [json],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.QueryBuilder<_i4.CodeText, _i4.CodeText, _i2.QWhere> where({
    bool? distinct = false,
    _i2.Sort? sort = _i2.Sort.asc,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #where,
          [],
          {
            #distinct: distinct,
            #sort: sort,
          },
        ),
        returnValue:
            _FakeQueryBuilder_3<_i4.CodeText, _i4.CodeText, _i2.QWhere>(
          this,
          Invocation.method(
            #where,
            [],
            {
              #distinct: distinct,
              #sort: sort,
            },
          ),
        ),
        returnValueForMissingStub:
            _FakeQueryBuilder_3<_i4.CodeText, _i4.CodeText, _i2.QWhere>(
          this,
          Invocation.method(
            #where,
            [],
            {
              #distinct: distinct,
              #sort: sort,
            },
          ),
        ),
      ) as _i2.QueryBuilder<_i4.CodeText, _i4.CodeText, _i2.QWhere>);
  @override
  _i2.QueryBuilder<_i4.CodeText, _i4.CodeText, _i2.QFilterCondition> filter() =>
      (super.noSuchMethod(
        Invocation.method(
          #filter,
          [],
        ),
        returnValue: _FakeQueryBuilder_3<_i4.CodeText, _i4.CodeText,
            _i2.QFilterCondition>(
          this,
          Invocation.method(
            #filter,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeQueryBuilder_3<_i4.CodeText,
            _i4.CodeText, _i2.QFilterCondition>(
          this,
          Invocation.method(
            #filter,
            [],
          ),
        ),
      ) as _i2.QueryBuilder<_i4.CodeText, _i4.CodeText, _i2.QFilterCondition>);
  @override
  _i2.Query<R> buildQuery<R>({
    List<_i2.WhereClause>? whereClauses = const [],
    bool? whereDistinct = false,
    _i2.Sort? whereSort = _i2.Sort.asc,
    _i2.FilterOperation? filter,
    List<_i2.SortProperty>? sortBy = const [],
    List<_i2.DistinctProperty>? distinctBy = const [],
    int? offset,
    int? limit,
    String? property,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #buildQuery,
          [],
          {
            #whereClauses: whereClauses,
            #whereDistinct: whereDistinct,
            #whereSort: whereSort,
            #filter: filter,
            #sortBy: sortBy,
            #distinctBy: distinctBy,
            #offset: offset,
            #limit: limit,
            #property: property,
          },
        ),
        returnValue: _FakeQuery_4<R>(
          this,
          Invocation.method(
            #buildQuery,
            [],
            {
              #whereClauses: whereClauses,
              #whereDistinct: whereDistinct,
              #whereSort: whereSort,
              #filter: filter,
              #sortBy: sortBy,
              #distinctBy: distinctBy,
              #offset: offset,
              #limit: limit,
              #property: property,
            },
          ),
        ),
        returnValueForMissingStub: _FakeQuery_4<R>(
          this,
          Invocation.method(
            #buildQuery,
            [],
            {
              #whereClauses: whereClauses,
              #whereDistinct: whereDistinct,
              #whereSort: whereSort,
              #filter: filter,
              #sortBy: sortBy,
              #distinctBy: distinctBy,
              #offset: offset,
              #limit: limit,
              #property: property,
            },
          ),
        ),
      ) as _i2.Query<R>);
  @override
  _i5.Future<int> count() => (super.noSuchMethod(
        Invocation.method(
          #count,
          [],
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  int countSync() => (super.noSuchMethod(
        Invocation.method(
          #countSync,
          [],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i5.Future<int> getSize({
    bool? includeIndexes = false,
    bool? includeLinks = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSize,
          [],
          {
            #includeIndexes: includeIndexes,
            #includeLinks: includeLinks,
          },
        ),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  int getSizeSync({
    bool? includeIndexes = false,
    bool? includeLinks = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSizeSync,
          [],
          {
            #includeIndexes: includeIndexes,
            #includeLinks: includeLinks,
          },
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i5.Stream<void> watchLazy({bool? fireImmediately = false}) =>
      (super.noSuchMethod(
        Invocation.method(
          #watchLazy,
          [],
          {#fireImmediately: fireImmediately},
        ),
        returnValue: _i5.Stream<void>.empty(),
        returnValueForMissingStub: _i5.Stream<void>.empty(),
      ) as _i5.Stream<void>);
  @override
  _i5.Stream<_i4.CodeText?> watchObject(
    int? id, {
    bool? fireImmediately = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #watchObject,
          [id],
          {#fireImmediately: fireImmediately},
        ),
        returnValue: _i5.Stream<_i4.CodeText?>.empty(),
        returnValueForMissingStub: _i5.Stream<_i4.CodeText?>.empty(),
      ) as _i5.Stream<_i4.CodeText?>);
  @override
  _i5.Stream<void> watchObjectLazy(
    int? id, {
    bool? fireImmediately = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #watchObjectLazy,
          [id],
          {#fireImmediately: fireImmediately},
        ),
        returnValue: _i5.Stream<void>.empty(),
        returnValueForMissingStub: _i5.Stream<void>.empty(),
      ) as _i5.Stream<void>);
  @override
  _i5.Future<void> verify(List<_i4.CodeText>? objects) => (super.noSuchMethod(
        Invocation.method(
          #verify,
          [objects],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> verifyLink(
    String? linkName,
    List<int>? sourceIds,
    List<int>? targetIds,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyLink,
          [
            linkName,
            sourceIds,
            targetIds,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [FileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileService extends _i1.Mock implements _i7.FileService {
  @override
  String get path => (super.noSuchMethod(
        Invocation.getter(#path),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get extension => (super.noSuchMethod(
        Invocation.getter(#extension),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String getFilePathExtension() => (super.noSuchMethod(
        Invocation.method(
          #getFilePathExtension,
          [],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String getFilePathName() => (super.noSuchMethod(
        Invocation.method(
          #getFilePathName,
          [],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i5.Future<String> readFileContent() => (super.noSuchMethod(
        Invocation.method(
          #readFileContent,
          [],
        ),
        returnValue: _i5.Future<String>.value(''),
        returnValueForMissingStub: _i5.Future<String>.value(''),
      ) as _i5.Future<String>);
  @override
  _i5.Future<void> writeToFile(String? fileContent) => (super.noSuchMethod(
        Invocation.method(
          #writeToFile,
          [fileContent],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [Clock].
///
/// See the documentation for Mockito's code generation for more information.
class MockClock extends _i1.Mock implements _i8.Clock {
  @override
  DateTime now() => (super.noSuchMethod(
        Invocation.method(
          #now,
          [],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #now,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #now,
            [],
          ),
        ),
      ) as DateTime);
  @override
  DateTime agoBy(Duration? duration) => (super.noSuchMethod(
        Invocation.method(
          #agoBy,
          [duration],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #agoBy,
            [duration],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #agoBy,
            [duration],
          ),
        ),
      ) as DateTime);
  @override
  DateTime fromNowBy(Duration? duration) => (super.noSuchMethod(
        Invocation.method(
          #fromNowBy,
          [duration],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #fromNowBy,
            [duration],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #fromNowBy,
            [duration],
          ),
        ),
      ) as DateTime);
  @override
  DateTime ago({
    int? days = 0,
    int? hours = 0,
    int? minutes = 0,
    int? seconds = 0,
    int? milliseconds = 0,
    int? microseconds = 0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #ago,
          [],
          {
            #days: days,
            #hours: hours,
            #minutes: minutes,
            #seconds: seconds,
            #milliseconds: milliseconds,
            #microseconds: microseconds,
          },
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #ago,
            [],
            {
              #days: days,
              #hours: hours,
              #minutes: minutes,
              #seconds: seconds,
              #milliseconds: milliseconds,
              #microseconds: microseconds,
            },
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #ago,
            [],
            {
              #days: days,
              #hours: hours,
              #minutes: minutes,
              #seconds: seconds,
              #milliseconds: milliseconds,
              #microseconds: microseconds,
            },
          ),
        ),
      ) as DateTime);
  @override
  DateTime fromNow({
    int? days = 0,
    int? hours = 0,
    int? minutes = 0,
    int? seconds = 0,
    int? milliseconds = 0,
    int? microseconds = 0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fromNow,
          [],
          {
            #days: days,
            #hours: hours,
            #minutes: minutes,
            #seconds: seconds,
            #milliseconds: milliseconds,
            #microseconds: microseconds,
          },
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #fromNow,
            [],
            {
              #days: days,
              #hours: hours,
              #minutes: minutes,
              #seconds: seconds,
              #milliseconds: milliseconds,
              #microseconds: microseconds,
            },
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #fromNow,
            [],
            {
              #days: days,
              #hours: hours,
              #minutes: minutes,
              #seconds: seconds,
              #milliseconds: milliseconds,
              #microseconds: microseconds,
            },
          ),
        ),
      ) as DateTime);
  @override
  DateTime microsAgo(int? microseconds) => (super.noSuchMethod(
        Invocation.method(
          #microsAgo,
          [microseconds],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #microsAgo,
            [microseconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #microsAgo,
            [microseconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime microsFromNow(int? microseconds) => (super.noSuchMethod(
        Invocation.method(
          #microsFromNow,
          [microseconds],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #microsFromNow,
            [microseconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #microsFromNow,
            [microseconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime millisAgo(int? milliseconds) => (super.noSuchMethod(
        Invocation.method(
          #millisAgo,
          [milliseconds],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #millisAgo,
            [milliseconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #millisAgo,
            [milliseconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime millisFromNow(int? milliseconds) => (super.noSuchMethod(
        Invocation.method(
          #millisFromNow,
          [milliseconds],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #millisFromNow,
            [milliseconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #millisFromNow,
            [milliseconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime secondsAgo(int? seconds) => (super.noSuchMethod(
        Invocation.method(
          #secondsAgo,
          [seconds],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #secondsAgo,
            [seconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #secondsAgo,
            [seconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime secondsFromNow(int? seconds) => (super.noSuchMethod(
        Invocation.method(
          #secondsFromNow,
          [seconds],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #secondsFromNow,
            [seconds],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #secondsFromNow,
            [seconds],
          ),
        ),
      ) as DateTime);
  @override
  DateTime minutesAgo(int? minutes) => (super.noSuchMethod(
        Invocation.method(
          #minutesAgo,
          [minutes],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #minutesAgo,
            [minutes],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #minutesAgo,
            [minutes],
          ),
        ),
      ) as DateTime);
  @override
  DateTime minutesFromNow(int? minutes) => (super.noSuchMethod(
        Invocation.method(
          #minutesFromNow,
          [minutes],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #minutesFromNow,
            [minutes],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #minutesFromNow,
            [minutes],
          ),
        ),
      ) as DateTime);
  @override
  DateTime hoursAgo(int? hours) => (super.noSuchMethod(
        Invocation.method(
          #hoursAgo,
          [hours],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #hoursAgo,
            [hours],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #hoursAgo,
            [hours],
          ),
        ),
      ) as DateTime);
  @override
  DateTime hoursFromNow(int? hours) => (super.noSuchMethod(
        Invocation.method(
          #hoursFromNow,
          [hours],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #hoursFromNow,
            [hours],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #hoursFromNow,
            [hours],
          ),
        ),
      ) as DateTime);
  @override
  DateTime daysAgo(int? days) => (super.noSuchMethod(
        Invocation.method(
          #daysAgo,
          [days],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #daysAgo,
            [days],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #daysAgo,
            [days],
          ),
        ),
      ) as DateTime);
  @override
  DateTime daysFromNow(int? days) => (super.noSuchMethod(
        Invocation.method(
          #daysFromNow,
          [days],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #daysFromNow,
            [days],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #daysFromNow,
            [days],
          ),
        ),
      ) as DateTime);
  @override
  DateTime weeksAgo(int? weeks) => (super.noSuchMethod(
        Invocation.method(
          #weeksAgo,
          [weeks],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #weeksAgo,
            [weeks],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #weeksAgo,
            [weeks],
          ),
        ),
      ) as DateTime);
  @override
  DateTime weeksFromNow(int? weeks) => (super.noSuchMethod(
        Invocation.method(
          #weeksFromNow,
          [weeks],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #weeksFromNow,
            [weeks],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #weeksFromNow,
            [weeks],
          ),
        ),
      ) as DateTime);
  @override
  DateTime monthsAgo(int? months) => (super.noSuchMethod(
        Invocation.method(
          #monthsAgo,
          [months],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #monthsAgo,
            [months],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #monthsAgo,
            [months],
          ),
        ),
      ) as DateTime);
  @override
  DateTime monthsFromNow(int? months) => (super.noSuchMethod(
        Invocation.method(
          #monthsFromNow,
          [months],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #monthsFromNow,
            [months],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #monthsFromNow,
            [months],
          ),
        ),
      ) as DateTime);
  @override
  DateTime yearsAgo(int? years) => (super.noSuchMethod(
        Invocation.method(
          #yearsAgo,
          [years],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #yearsAgo,
            [years],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #yearsAgo,
            [years],
          ),
        ),
      ) as DateTime);
  @override
  DateTime yearsFromNow(int? years) => (super.noSuchMethod(
        Invocation.method(
          #yearsFromNow,
          [years],
        ),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.method(
            #yearsFromNow,
            [years],
          ),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.method(
            #yearsFromNow,
            [years],
          ),
        ),
      ) as DateTime);
  @override
  Stopwatch stopwatch() => (super.noSuchMethod(
        Invocation.method(
          #stopwatch,
          [],
        ),
        returnValue: _FakeStopwatch_6(
          this,
          Invocation.method(
            #stopwatch,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeStopwatch_6(
          this,
          Invocation.method(
            #stopwatch,
            [],
          ),
        ),
      ) as Stopwatch);
  @override
  Stopwatch getStopwatch() => (super.noSuchMethod(
        Invocation.method(
          #getStopwatch,
          [],
        ),
        returnValue: _FakeStopwatch_6(
          this,
          Invocation.method(
            #getStopwatch,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeStopwatch_6(
          this,
          Invocation.method(
            #getStopwatch,
            [],
          ),
        ),
      ) as Stopwatch);
}
