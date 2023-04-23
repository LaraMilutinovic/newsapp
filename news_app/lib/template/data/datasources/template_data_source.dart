import 'package:news_app/template/domain/entity/template_entity.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class TemplateDataSource {
  Future<TemplateEntity> getDummyData();
}
