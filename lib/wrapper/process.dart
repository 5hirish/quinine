// Define an abstract class to represent the process
import 'dart:io';

abstract class ProcessWrapper {
  // factory ProcessWrapper.start(String executablePath, List<String> arguments) =
  //     ActualProcessWrapper.start;

  Future<ProcessWrapper> start(String executable, List<String> arguments);

  Stream<List<int>> get stdout;
  Stream<List<int>> get stderr;
  IOSink get stdin;
  int get pid;
  Future<int> get exitCode;

  bool kill([ProcessSignal signal = ProcessSignal.sigterm]);
}

// Implement the wrapper for the actual process
class ActualProcessWrapper implements ProcessWrapper {
  late final Process _process;

  // ActualProcessWrapper.start(String executablePath, List<String> arguments) {
  //   Process.start(executablePath, arguments).then((value) {
  //     _process = value;
  //   });
  // }

  @override
  Future<ProcessWrapper> start(
      String executable, List<String> arguments) async {
    _process = await Process.start(executable, arguments);
    return this;
  }

  @override
  Stream<List<int>> get stdout => _process.stdout;

  @override
  Stream<List<int>> get stderr => _process.stderr;

  @override
  IOSink get stdin => _process.stdin;

  @override
  int get pid => _process.pid;

  @override
  Future<int> get exitCode => _process.exitCode;

  @override
  bool kill([ProcessSignal signal = ProcessSignal.sigterm]) {
    return _process.kill(signal);
  }
}
