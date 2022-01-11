part of '_common_types.dart';

/// Creates a valid website
class WebSite extends RequiredStringValueObject {
  /// Initialize the value for a web site and verify it
  WebSite(String value) : super(value) {
    if (!Fzregex.hasMatch(this.value, FzPattern.url)) {
      throw InvalidArgumentException("<$value> isn't a valid website");
    }
  }
}
