import 'package:news_app/core/infrastructure/result.dart';
import 'package:news_app/template/domain/entity/template_entity.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class TemplateRepository {
  Future<Result<TemplateEntity>> getDummyData();
}
