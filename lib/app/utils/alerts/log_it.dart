import 'package:linkbalanco2/app/constantes/env.dart';
import 'package:logger/logger.dart';

///Está classe é responsável por exibir log gerados por execções
class LogIt {
  final Logger logger;

  LogIt(this.logger);

  /// Log a message at level [Level.verbose].
  void verbose(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace stackTrace,
  }) {
    if (Env.IS_RELEASE && !showInProd) {
      return;
    }

    logger.v(message, error, stackTrace);
  }

  /// Registra uma mensagem no nível [Level.debug].
  void debug(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace stackTrace,
  }) {
    if (Env.IS_RELEASE && !showInProd) {
      return;
    }

    logger.d(message, error, stackTrace);
  }

  /// Registrar uma mensagem no nível [Level.info].
  void info(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace stackTrace,
  }) {
    if (Env.IS_RELEASE && !showInProd) {
      return;
    }

    logger.i(message, error, stackTrace);
  }

  /// Registrar uma mensagem no nível [Level.warning].
  void warn(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace stackTrace,
  }) {
    if (Env.IS_RELEASE && !showInProd) {
      return;
    }

    logger.w(message, error, stackTrace);
  }

  /// Registrar uma mensagem no nível [Level.error].
  void error(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace stackTrace,
  }) {
    if (Env.IS_RELEASE && !showInProd) {
      return;
    }

    logger.e(message, error, stackTrace);
  }

  /// Registrar uma mensagem no nível [Level.wtf].
  void wtf(
    dynamic message, {
    dynamic error,
    bool showInProd = false,
    StackTrace stackTrace,
  }) {
    if (Env.IS_RELEASE && !showInProd) {
      return;
    }

    logger.wtf(message, error, stackTrace);
  }
}
