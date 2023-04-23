import 'package:news_app/template/data/datasources/template_data_source.dart';
import 'package:news_app/template/data/model/template_dto.dart';
import 'package:news_app/template/domain/entity/template_entity.dart';
import 'package:injectable/injectable.dart';

@Named('local')
@Injectable(as: TemplateDataSource)
class TemplateLocalDataSourceImpl extends TemplateDataSource {
  @override
  Future<TemplateEntity> getDummyData() async {
    await Future.delayed(const Duration(seconds: 2));

    final templateDto = TemplateDto(
      templateFirstValue: 'first sample value',
      templateSecondValue: 'second sample value',
    );

    final templateEntity = _mapDtoToEntity(templateDto);
    // throw Exception("Sample error message");
    return templateEntity;
  }

  _mapDtoToEntity(TemplateDto templateDto) => TemplateEntity(
        templateFirstValue: templateDto.templateFirstValue,
        templateSecondValue: templateDto.templateSecondValue,
      );
}
