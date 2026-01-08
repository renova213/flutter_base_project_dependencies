import 'package:dependencies/src/app_log_filter.dart';
import 'package:logger/web.dart';

class Log {
  static var logger = Logger(
    printer: PrefixPrinter(
      PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 50,
        colors: true,
        printEmojis: true,
      ),
      debug: "[DEBUG] ",
      info: "[INFO] ",
      warning: "[WARNING] ",
      error: "[ERROR] ",
      trace: "[TRACE] ",
    ),
    filter: AppLogFilter(),
  );
}
