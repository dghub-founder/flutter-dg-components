import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static start() async {
    if (!await Permission.storage.status.isDenied) {
      print('request storage');
      await Permission.storage.request();
    }
    if (!await Permission.manageExternalStorage.isDenied) {
      print('request manageExternalStorage');
      await Permission.manageExternalStorage.request();
    }
  }
}
