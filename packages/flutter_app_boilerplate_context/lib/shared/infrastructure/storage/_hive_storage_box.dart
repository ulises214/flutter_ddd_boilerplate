// 📦 Package imports:
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// An abstraction to make local operation with [Hive]
abstract class HiveStorage {
  /// Initialize [Hive] and creates the box
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox<String>(boxName);
  }

  /// The name for creating the box
  String get boxName;
  late final Box<String> _box;

  /// Save an value using [keyName] as key
  @protected
  void store(String keyName, String data) => _box.put(keyName, data);

  /// Read an value using [keyName] as key
  @protected
  String? read(String keyName) => _box.get(keyName);

  /// Delete an value using [keyName] as key
  @protected
  void delete(String keyName) => _box.get(keyName);
}
