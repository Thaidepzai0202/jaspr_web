import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/constants/app_colors.dart';

class CardProcessBlock extends StatefulComponent {
  final String index;
  final String title;
  final String content;

  const CardProcessBlock({
    super.key,
    required this.index,
    required this.title,
    required this.content,
  });

  @override
  State<CardProcessBlock> createState() => CardProcessBlockState();
}

class CardProcessBlockState extends State<CardProcessBlock> {
  bool _isShowMoore = false;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            backgroundColor: _isShowMoore ? AppColors.greenPrimary : AppColors.backgroundWhite,
            display: Display.flex,
            border: Border(
              color: AppColors.primaryColor,
              width: 1.px
            ),
            shadow: BoxShadow(offsetX: 0.px, offsetY: 5.px,color: AppColors.primaryColor),
            radius: BorderRadius.circular(45.px),
            padding: Padding.symmetric(horizontal: 60.px, vertical: 40.px),
            flexDirection: FlexDirection.column),
        [
          div(
              styles: Styles(
                  display: Display.flex,
                  flexDirection: FlexDirection.row,
                  alignItems: AlignItems.center,
                  justifyContent: JustifyContent.spaceBetween),
              [
                div(
                    styles: Styles(
                        display: Display.flex,
                        flexDirection: FlexDirection.row,
                        alignItems: AlignItems.center),
                    [
                      div(
                          styles: Styles(
                              fontSize: 60.px,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor),
                          [
                            Text(component.index),
                          ]),
                      SizeBoxComponent(width: 25),
                      div(
                          styles: Styles(
                              fontSize: 30.px,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor),
                          [
                            Text(component.title),
                          ]),
                    ]),
                _iconShowMore(),
              ]),
          if (_isShowMoore)
            div([
              _line(),
              div(
                  styles: Styles(
                      fontSize: 18.px,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor),
                  [
                    Text(component.content),
                  ])
            ])
        ]);
  }

  Component _iconShowMore() {
    return button(
        onClick: () => setState(
              () => _isShowMoore = !_isShowMoore,
            ),
        styles: Styles(
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.center,
          fontSize: 36.px,
          width: 58.px,
          height: 58.px,
          radius: BorderRadius.circular(50.px),
          fontWeight: FontWeight.w600,
          color: AppColors.primaryColor,
          backgroundColor: AppColors.backgroundWhite,
        ),
        [  Text(_isShowMoore ? "-" : "+")]);
  }

  Component _line() {
    return div(
        styles: Styles(
            margin: Margin.symmetric(vertical: 30.px),
            height: 1.px,
            backgroundColor: AppColors.primaryColor),
      [

    ]);
  }
}
