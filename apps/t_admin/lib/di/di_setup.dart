import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/di/di_setup.config.dart';

/// GetIt instance
final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)

/// Configure dependencies
Future<void> configureDependencies({String env = Environment.dev}) async =>
    $initGetIt(getIt);
