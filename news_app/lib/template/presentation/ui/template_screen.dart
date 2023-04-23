import 'package:flutter/material.dart';
import 'package:news_app/core/infrastructure/app_error.dart';
import 'package:news_app/core/view/base_view.dart';
import 'package:news_app/template/presentation/view_model/template_view_model.dart';


class TemplateScreen extends StatefulWidget {
  const TemplateScreen({Key? key}) : super(key: key);

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView<TemplateViewModel>(
        builder: (ctx, model, child) {
          return model.state.when(
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            loaded: () {
              return Center(
                child: Text(
                  '${model.templateData.templateFirstValue}\n${model.templateData.templateSecondValue}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
            error: (failure) {
              return Center(
                child: Text(
                  (failure as AppError).message,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
          );
        },
        onModelReady: (model) => model.fetchTemplateData(),
      ),
    );
  }
}
