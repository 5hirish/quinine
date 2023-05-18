
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/keys.dart';

final keyboardPreferenceProvider = StateProvider<KeyboardPreference>((ref) => KeyboardPreference.androidStudio);
