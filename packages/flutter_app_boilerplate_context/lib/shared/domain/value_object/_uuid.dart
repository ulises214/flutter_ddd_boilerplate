part of '_value_object.dart';

const _uuidGenerator = uuid_library.Uuid();

/// Creates a class for unique id
class Uuid {
  /// Initialize the uuid and ensure that [value] is a valid uuid
  Uuid(this.value) {
    _ensureIsValidUuid(value);
  }

  /// Creates a random [Uuid]
  factory Uuid.random() {
    return Uuid(_uuidGenerator.v4());
  }

  /// The value stores in this class
  final String value;

  void _ensureIsValidUuid(String id) {
    if (!uuid_library.Uuid.isValidUUID(fromString: id)) {
      throw InvalidArgumentException(
          '<$runtimeType> does not allow the value <$id>');
    }
  }

  @override
  String toString() {
    return value;
  }
}
