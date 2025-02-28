import 'package:jaspr/jaspr.dart';
import 'package:my_website/constants/app_colors.dart';

class ButtonPrimaryBlack extends StatelessComponent {
  final String text;
  final VoidCallback? onClick;

  const ButtonPrimaryBlack({required this.text, this.onClick, super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'btn-container', [
      div(
          classes: 'btn-primary-black',
          events: {'click': (_) => onClick?.call()},
          [Text(text)])
    ]);
  }

  @css
  static final styles = [
    css.import(
        "https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;700&display=swap"),
    css('.btn-container').styles(
      display: Display.flex
    ),
    css('.btn-primary-black', [
      css('&').styles(
        padding: Padding.symmetric(horizontal: 35.px, vertical: 20.px),
        radius: BorderRadius.circular(14.px),
        color: AppColors.white,
        fontFamily: FontFamily.list(
            [FontFamily("Space Grotesk"), FontFamilies.andaleMono]),
        fontSize: 20.px,
        backgroundColor: AppColors.primaryColor,
      ),
    ])
  ];
}
