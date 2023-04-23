class TemplateDto {
  final String templateFirstValue;
  final String templateSecondValue;

  TemplateDto({
    required this.templateFirstValue,
    required this.templateSecondValue,
  });

  factory TemplateDto.fromJson(Map<String, dynamic> json) {
    return TemplateDto(
      templateFirstValue: json['template_first_value'],
      templateSecondValue: json['template_second_value'],
    );
  }
}
