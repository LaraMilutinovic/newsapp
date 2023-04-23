import 'package:news_app/core/infrastructure/result.dart';
import 'package:news_app/template/data/datasources/template_data_source.dart';
import 'package:news_app/template/domain/entity/template_entity.dart';
import 'package:news_app/template/domain/repository/template_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TemplateRepository)
class TemplateRepositoryImpl extends TemplateRepository {
  final TemplateDataSource dataSource;

  TemplateRepositoryImpl(@Named('local') this.dataSource);

  @override
  Future<Result<TemplateEntity>> getDummyData() {
    return Result.guardFuture(dataSource.getDummyData);
  }
}
