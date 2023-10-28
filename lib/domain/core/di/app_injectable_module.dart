// import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppInjectableModule {
  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();

  // @lazySingleton
  // ImagePicker get picker => ImagePicker();
}
