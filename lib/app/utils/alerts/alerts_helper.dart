import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/constantes/errors.dart';
import 'package:linkbalanco2/app/utils/alerts/log_it.dart';
import 'package:linkbalanco2/app/utils/exceptions/exceptions.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

import 'alerts_model.dart';

class AlertsHelper {
  LogIt log = LogIt(Logger());

  AlertsModel getAlert(
    BuildContext context,
    String body, {
    String title,
    AlertsTypeEnum type,
    AlertsPopupEnum popupType,
    StackTrace stackTrace,
    Duration duration,
  }) {
    String _title;
    final _type = type ?? AlertsTypeEnum.ERROR;
    final _popupType = popupType ?? AlertsPopupEnum.FLUSHBAR;

    switch (_type) {
      case AlertsTypeEnum.INFO:
        _title = 'Informação';

        log.info(_title, error: body, stackTrace: stackTrace);
        break;
      case AlertsTypeEnum.WARNING:
        _title = 'Atenção';

        log.warn(_title, error: body, stackTrace: stackTrace);
        break;
      case AlertsTypeEnum.SUCCESS:
        _title = 'Sucesso';
        break;
      case AlertsTypeEnum.ERROR:
      default:
        _title = 'Erro';

        log.error(_title, error: body, stackTrace: stackTrace);
        break;
    }

    return AlertsModel(
      context: context,
      body: body,
      title: _title,
      type: type,
      popupType: _popupType,
      duration: duration,
    );
  }

  AlertsModel getException(
    BuildContext context,
    Exception exception, {
    @required StackTrace stackTrace,
  }) {
    String _body;

    if (exception is BadNetworkException) {
      _body = Errors.BAD_NETWORK_MESSAGE;
    } else if (exception is UnauthenticatedException) {
      Modular.to.pushReplacementNamed("/home");
      _body = Errors.INVALID_UNAUTHENTICATED_MESSAGE;
    } else if (exception is ApiException) {
      _body = Errors.INVALID_API_MESSAGE;
    } else if (exception is InternalServerException) {
      _body = Errors.INTERNAL_SERVER_MESSAGE;
    } else if (exception is CacheException) {
      _body = Errors.CACHE_FAILURE_MESSAGE;
    } else if (exception is ApiErrorMessageException &&
        exception.errorMessage != null) {
      _body = exception.errorMessage;
    } else {
      _body = Errors.UNKNOWN_FAILURE_MESSAGE;
    }

    return getAlert(context, _body);
  }
}
