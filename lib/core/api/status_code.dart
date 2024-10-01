class StatusCode {
  /// HTTP Response status Code is seperated to five responses

  /// First Response : 1xx: Informational responses: 100-199

  ///  Second Response : 2xx: Success responses: 200-299
  static const int ok = 200;

  /// Third  Response : 3xx: Redirection responses: 300-399
  static const int permanentRedirection = 301;
  static const int temporaryRedirection = 302;
  static const int notModified = 304;

  /// Forth Response : 4xx: Client Error response :400-499
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int methodNotAllowed = 405;
  static const int confilct = 409;

  ///  Fifth Response : 5xx: Server Error response :500-599
  static const int internalServerError = 500;
  static const int notImplemented = 501;
  static const int badGateWay = 502;
  static const int serviceUnavailavble = 503;
  static const int gatewayTimeout = 504;
}
// for more search on developer mozilla website