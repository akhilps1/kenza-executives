import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default init
  preferRelativeImports: true, // default true
  asExtension: false,
)
Future<void> configureDependency() async => await init(
      sl,
      environment: Environment.prod,
    );

// @InjectableInit(preferRelativeImports: true)
// configureDependency({
//   String? env,
//   EnvironmentFilter? environmentFilter,
// }) async{
//   return getIt.init(
//     environmentFilter: environmentFilter,
//     environment: env,
//   );
// }
