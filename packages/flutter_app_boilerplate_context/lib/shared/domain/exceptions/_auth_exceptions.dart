part of '_exceptions.dart';

/// Creates a facotry with the common auth exceptions
abstract class AuthException extends CustomException {
  /// Can define custom [AuthException] message
  const AuthException([String? cause]) : super(cause);

  /// Occurs when the email is used by anothe user
  const factory AuthException.emailAlreadyInUse() = EmailAlreadyInUse;

  /// Occurs when the phone number is used by anothe user
  const factory AuthException.phoneNumberAlreadyInUse() =
      PhoneNumberAlreadyInUse;

  /// Occurs when the server says the email or password is invalid
  const factory AuthException.invalidEmailOrPassword() = InvalidEmailOrPassword;

  /// Occurs when the server has an error
  const factory AuthException.serverError() = ServerError;

  /// Occurs when the application has an error
  const factory AuthException.internalError() = InternalError;

  /// When passowrd or phone nomber isn't corrent in login
  const factory AuthException.invalidCredentialsException() =
      InvalidCredentialsException;
}

/// Occurs when the email is used by anothe user
class EmailAlreadyInUse extends AuthException {
  /// Occurs when the email is used by anothe user
  const EmailAlreadyInUse([String? cause = 'Email already in use'])
      : super(cause);
}

/// Occurs when the phone number is used by anothe user
class PhoneNumberAlreadyInUse extends AuthException {
  /// Occurs when the phone number is used by anothe user
  const PhoneNumberAlreadyInUse([String? cause = 'Phone number already in use'])
      : super(cause);
}

/// Occurs when the server says the email or password is invalid
class InvalidEmailOrPassword extends AuthException {
  /// Occurs when the server says the email or password is invalid
  const InvalidEmailOrPassword([String? cause = 'Invalid email or password'])
      : super(cause);
}

/// Occurs when the server has an error
class ServerError extends AuthException {
  /// Occurs when the server has an error
  const ServerError([String? cause = 'An error in the server']) : super(cause);
}

/// Occurs when the application has an error
class InternalError extends AuthException {
  /// Occurs when the application has an error
  const InternalError([String? cause = 'Error in the application'])
      : super(cause);
}

/// When passowrd or phone nomber isn't corrent in login
class InvalidCredentialsException extends AuthException {
  /// When the user hasn't a valid Phone and Password
  const InvalidCredentialsException([String? cause]) : super(cause);
}
