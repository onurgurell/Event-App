import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:event_app/core/logger.dart';

class ProfilePageViewModel extends BaseViewModel {
  Logger log;

  ProfilePageViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
