import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:event_app/core/logger.dart';

class UserHomeViewModel extends BaseViewModel {
  Logger log;

  UserHomeViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
