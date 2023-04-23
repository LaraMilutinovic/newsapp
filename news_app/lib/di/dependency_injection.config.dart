// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../template/data/datasources/template_data_source.dart' as _i3;
import '../template/data/datasources/template_local_data_source_impl.dart'
    as _i4;
import '../template/data/datasources/template_remote_data_source_impl.dart'
    as _i5;
import '../template/data/repository/template_repository_impl.dart' as _i7;
import '../template/domain/repository/template_repository.dart' as _i6;
import '../template/presentation/view_model/template_view_model.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.TemplateDataSource>(
    () => _i4.TemplateLocalDataSourceImpl(),
    instanceName: 'local',
  );
  gh.factory<_i3.TemplateDataSource>(
    () => _i5.TemplateRemoteDataSourceImpl(),
    instanceName: 'remote',
  );
  gh.factory<_i6.TemplateRepository>(() => _i7.TemplateRepositoryImpl(
      get<_i3.TemplateDataSource>(instanceName: 'local')));
  gh.factory<_i8.TemplateViewModel>(() =>
      _i8.TemplateViewModel(templateRepository: get<_i6.TemplateRepository>()));
  return get;
}
