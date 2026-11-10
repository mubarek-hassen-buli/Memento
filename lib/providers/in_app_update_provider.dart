import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:storypad/core/types/in_app_update_status.dart' show InAppUpdateStatus;

class InAppUpdateProvider extends ChangeNotifier {
  InAppUpdateProvider();

  InAppUpdateStatus? get displayStatus => _displayStatus;
  InAppUpdateStatus? _displayStatus;

  void setDisplayStatus(InAppUpdateStatus? value) {
    _displayStatus = value;
    notifyListeners();
  }

  Future<void> update() async {}
}
