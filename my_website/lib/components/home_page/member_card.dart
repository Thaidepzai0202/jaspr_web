import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/constants/app_colors.dart';

class MemberCard extends StatelessComponent {
  final String name;
  final String position;
  final String content;
  final String imagePath;

  const MemberCard({
    super.key,
    required this.name,
    required this.position,
    required this.imagePath,
    required this.content,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            height: 250.px,
            width: 310.px,
            border: Border(color: AppColors.primaryColor, width: 1.px),
            radius: BorderRadius.circular(45.px),
            shadow: BoxShadow(
                offsetX: 0.px, offsetY: 5.px, color: AppColors.primaryColor),
            padding: Padding.symmetric(horizontal: 35.px, vertical: 40.px)),
        [_nameAndPosition()]);
  }

  Component _nameAndPosition() {
    return div(
        styles: Styles(display: Display.flex, flexDirection: FlexDirection.row),
        [
          div([img(src: imagePath, width: 100, height: 100)]),
          SizeBoxComponent(width: 20),
          div(
              styles: Styles(
                  width: 100.percent,
                  justifyContent: JustifyContent.spaceBetween,
                  display: Display.flex,
                  alignItems: AlignItems.end,
                  flexDirection: FlexDirection.column),
              [
                _iconInstagram(),
                div(
                    styles: Styles(
                        width: 100.percent,
                        display: Display.flex,
                        alignItems: AlignItems.start,
                        flexDirection: FlexDirection.column),
                    [
                      div(
                          styles: Styles(
                              width: 100.percent,
                              color: AppColors.primaryColor,
                              fontSize: 20.px,
                              fontWeight: FontWeight.w500),
                          [Text(name)]),
                      div(
                          styles: Styles(
                              color: AppColors.primaryColor,
                              fontSize: 18.px,
                              fontWeight: FontWeight.w400),
                          [Text(position)])
                    ])
              ]),
        ]);
  }

  Component _iconInstagram() {
    return div(
        styles: Styles(
            width: 34.px,
            height: 34.px,
            display: Display.flex,
            radius: BorderRadius.circular(30.px),
            alignItems: AlignItems.center,
            justifyContent: JustifyContent.center,
            backgroundColor: AppColors.primaryColor,
            color: AppColors.greenPrimary,
            fontSize: 20.px,
            // padding: Padding.all(8.px),
            fontWeight: FontWeight.bold),
        [Text("in")]);
  }
}
