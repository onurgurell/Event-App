import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:event_app/core/logger.dart';

class TicketPageViewModel extends BaseViewModel {
  Logger log;

  TicketPageViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
