import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:event_app/core/logger.dart';

class DetailsPageViewModel extends BaseViewModel {
  Logger log;

  DetailsPageViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
