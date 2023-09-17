import 'package:package_info_plus/package_info_plus.dart';

void setMockPackage() {
  PackageInfo.setMockInitialValues(
      appName: 'Quinine Test',
      packageName: 'quinine.test',
      version: '1',
      buildNumber: '1',
      buildSignature: 'buildSignature');
}
