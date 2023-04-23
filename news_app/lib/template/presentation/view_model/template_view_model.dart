import 'package:news_app/core/view/view_state.dart';
import 'package:news_app/core/view_model/base_view_model.dart';
import 'package:news_app/template/domain/entity/template_entity.dart';
import 'package:news_app/template/domain/repository/template_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class TemplateViewModel extends BaseViewModel {
  final TemplateRepository templateRepository;

  TemplateViewModel({required this.templateRepository});

  dynamic _templateData;

  TemplateEntity get templateData => _templateData;

  void fetchTemplateData() async {
    setState(const ViewState.loading());
    final result = await templateRepository.getDummyData();

    result.when(
      success: (data) {
        _templateData = data;
        setState(const ViewState.loaded());
      },
      failure: (failure) => {
        setState(ViewState.error(error: failure)),
      },
    );
  }
}
