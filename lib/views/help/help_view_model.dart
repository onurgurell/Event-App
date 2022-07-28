import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:event_app/core/logger.dart';

class HelpViewModel extends BaseViewModel {
  Logger log;

  HelpViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
