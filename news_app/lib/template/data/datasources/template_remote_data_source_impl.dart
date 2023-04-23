import 'package:news_app/template/data/datasources/template_data_source.dart';
import 'package:news_app/template/domain/entity/template_entity.dart';
import 'package:injectable/injectable.dart';

@Named('remote')
@Injectable(as: TemplateDataSource)
class TemplateRemoteDataSourceImpl extends TemplateDataSource {
  @override
  Future<TemplateEntity> getDummyData() {
    // TODO: implement getDummyData
    throw UnimplementedError();
  }
}
