import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/di/dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async {
  $initGetIt(getIt);
}
