// 📦 Package imports:
import 'package:get_it/get_it.dart';

typedef _DepBuilder<T> = T Function();

/// The abstract container for the dependencies
class DependencyContainer {
  DependencyContainer._();
  static final DependencyContainer _i = DependencyContainer._();

  /// The current instance
  static DependencyContainer get i => _i;

  /// Clear all dependencies in the instance
  Future<void> reset() async => GetIt.I.reset();

  /// Put a lazy instance in the dependency three
  void put<T extends Object>(_DepBuilder<T> builder) =>
      GetIt.I.registerLazySingleton<T>(builder);

  /// Put a lazy instance in the dependency three
  T get<T extends Object>() {
    try {
      return GetIt.I.get<T>();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Gets a dependency, if it's exists, then create it
  T getOrPut<T extends Object>(_DepBuilder<T> builder) {
    try {
      return get<T>();
    } catch (e) {
      put(builder);
      return get<T>();
    }
  }
}
