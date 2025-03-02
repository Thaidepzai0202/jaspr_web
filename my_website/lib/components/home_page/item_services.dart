// import 'package:flutter_svg/svg.dart';
import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/constants/app_colors.dart';
import 'package:my_website/constants/image_constant.dart';

class ItemServices extends StatelessComponent {
  final Color? backgroundColor;
  final Color? backgroundText;
  final Color? titleColor;
  final Color? contentColor;
  final Color? backgroundItem;
  final Color? itemColor;
  final String? title;
  final String? content;
  final Component? iconComponent;
  final String? itemBig;

  const ItemServices(
      {this.title,
      this.itemBig,
      this.content,
      this.iconComponent,
      this.backgroundColor,
      this.backgroundText,
      this.titleColor,
      this.contentColor,
      this.backgroundItem,
      this.itemColor,
      super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
          display: Display.flex,
          width: 500.px,
          height: 210.px,
          padding: Padding.all(50.px),
          border: Border(width: 1.px, color: AppColors.primaryColor),
          radius: BorderRadius.circular(45.px),
          shadow: BoxShadow(
              offsetX: 0.px, offsetY: 5.px, color: AppColors.primaryColor),
          flexDirection: FlexDirection.row,
          justifyContent: JustifyContent.spaceBetween,
          backgroundColor: backgroundColor ?? AppColors.backgroundWhite
        ),
        [
          div(
              styles: Styles(
                  width: 45.percent,
                  display: Display.flex,
                  flexDirection: FlexDirection.column,
                  justifyContent: JustifyContent.spaceBetween),
              [
                div(
                  styles: Styles(
                    display: Display.flex,
                    width: 100.percent,
                    padding: Padding.symmetric(horizontal: 10.px),
                    radius: BorderRadius.circular(8.px),
                    flexWrap: FlexWrap.wrap,
                  ),
                  [
                    for (var word in (title ?? "").split(' '))
                      span(
                        styles: Styles(
                          padding: Padding.symmetric(
                              horizontal: 6.px, vertical: 4.px),
                          radius: BorderRadius.circular(4.px),
                          color: titleColor ?? AppColors.primaryColor,
                          fontSize: 30.px,
                          fontWeight: FontWeight.w500,
                          backgroundColor: backgroundText?? AppColors.greenPrimary,
                        ),
                        [Text(word)],
                      ),
                  ],
                ),
                div(
                    styles: Styles(
                        display: Display.flex,
                        flexDirection: FlexDirection.row,
                        alignItems: AlignItems.center),
                    [
                      iconComponent ??
                          img(
                              height: 20,
                              width: 20,
                              src: Icons.upRightArrowIcon,
                              styles: Styles(
                                  padding: Padding.all(10.px),
                                  backgroundColor: AppColors.white,
                                  radius: BorderRadius.circular(20.px))),
                      SizeBoxComponent(width: 15),
                      div(
                          styles: Styles(
                              fontSize: 20.px, fontWeight: FontWeight.w400,color: contentColor ?? AppColors.primaryColor ),
                          [Text(content ?? "")])
                    ])
              ]),
          itemBig != null
              ? img(src: itemBig!, height: 200, width: 200)
              : div([])
        ]);
  }
}
