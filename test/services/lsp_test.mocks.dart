// Mocks generated by Mockito 5.4.2 from annotations
// in quinine/test/services/lsp_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:convert' as _i4;
import 'dart:io' as _i2;

import 'package:mockito/mockito.dart' as _i1;
import 'package:quinine/wrapper/process.dart' as _i3;

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

class _FakeIOSink_0 extends _i1.SmartFake implements _i2.IOSink {
  _FakeIOSink_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProcessWrapper_1 extends _i1.SmartFake
    implements _i3.ProcessWrapper {
  _FakeProcessWrapper_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEncoding_2 extends _i1.SmartFake implements _i4.Encoding {
  _FakeEncoding_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ActualProcessWrapper].
///
/// See the documentation for Mockito's code generation for more information.
class MockActualProcessWrapper extends _i1.Mock
    implements _i3.ActualProcessWrapper {
  @override
  _i5.Stream<List<int>> get stdout => (super.noSuchMethod(
        Invocation.getter(#stdout),
        returnValue: _i5.Stream<List<int>>.empty(),
        returnValueForMissingStub: _i5.Stream<List<int>>.empty(),
      ) as _i5.Stream<List<int>>);
  @override
  _i5.Stream<List<int>> get stderr => (super.noSuchMethod(
        Invocation.getter(#stderr),
        returnValue: _i5.Stream<List<int>>.empty(),
        returnValueForMissingStub: _i5.Stream<List<int>>.empty(),
      ) as _i5.Stream<List<int>>);
  @override
  _i2.IOSink get stdin => (super.noSuchMethod(
        Invocation.getter(#stdin),
        returnValue: _FakeIOSink_0(
          this,
          Invocation.getter(#stdin),
        ),
        returnValueForMissingStub: _FakeIOSink_0(
          this,
          Invocation.getter(#stdin),
        ),
      ) as _i2.IOSink);
  @override
  int get pid => (super.noSuchMethod(
        Invocation.getter(#pid),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i5.Future<int> get exitCode => (super.noSuchMethod(
        Invocation.getter(#exitCode),
        returnValue: _i5.Future<int>.value(0),
        returnValueForMissingStub: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  _i5.Future<_i3.ProcessWrapper> start(
    String? executable,
    List<String>? arguments,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #start,
          [
            executable,
            arguments,
          ],
        ),
        returnValue: _i5.Future<_i3.ProcessWrapper>.value(_FakeProcessWrapper_1(
          this,
          Invocation.method(
            #start,
            [
              executable,
              arguments,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i3.ProcessWrapper>.value(_FakeProcessWrapper_1(
          this,
          Invocation.method(
            #start,
            [
              executable,
              arguments,
            ],
          ),
        )),
      ) as _i5.Future<_i3.ProcessWrapper>);
  @override
  bool kill([_i2.ProcessSignal? signal = _i2.ProcessSignal.sigterm]) =>
      (super.noSuchMethod(
        Invocation.method(
          #kill,
          [signal],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}

/// A class which mocks [IOSink].
///
/// See the documentation for Mockito's code generation for more information.
class MockIOSink extends _i1.Mock implements _i2.IOSink {
  @override
  _i4.Encoding get encoding => (super.noSuchMethod(
        Invocation.getter(#encoding),
        returnValue: _FakeEncoding_2(
          this,
          Invocation.getter(#encoding),
        ),
        returnValueForMissingStub: _FakeEncoding_2(
          this,
          Invocation.getter(#encoding),
        ),
      ) as _i4.Encoding);
  @override
  set encoding(_i4.Encoding? _encoding) => super.noSuchMethod(
        Invocation.setter(
          #encoding,
          _encoding,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<dynamic> get done => (super.noSuchMethod(
        Invocation.getter(#done),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  void add(List<int>? data) => super.noSuchMethod(
        Invocation.method(
          #add,
          [data],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void write(Object? object) => super.noSuchMethod(
        Invocation.method(
          #write,
          [object],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void writeAll(
    Iterable<dynamic>? objects, [
    String? separator = r'',
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #writeAll,
          [
            objects,
            separator,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void writeln([Object? object = r'']) => super.noSuchMethod(
        Invocation.method(
          #writeln,
          [object],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void writeCharCode(int? charCode) => super.noSuchMethod(
        Invocation.method(
          #writeCharCode,
          [charCode],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Future<dynamic> addStream(_i5.Stream<List<int>>? stream) =>
      (super.noSuchMethod(
        Invocation.method(
          #addStream,
          [stream],
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> flush() => (super.noSuchMethod(
        Invocation.method(
          #flush,
          [],
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
  @override
  _i5.Future<dynamic> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i5.Future<dynamic>.value(),
        returnValueForMissingStub: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);
}
