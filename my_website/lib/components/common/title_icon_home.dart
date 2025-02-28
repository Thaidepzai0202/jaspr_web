import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/constants/app_colors.dart';

class TitleIconHome extends StatelessComponent {
  final String title;
  final String? content;

  const TitleIconHome({super.key, this.content, required this.title});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
          padding: Padding.symmetric(
            vertical: 80.px,
            horizontal: 100.px
          )
        ),
        [
      div(
          styles: Styles(
            display: Display.flex,
            flexDirection: FlexDirection.row,
            alignItems: AlignItems.center, // 👈 Căn giữa theo chiều dọc
          ),
          [
            h1(
                styles: Styles(
                  padding: Padding.symmetric(horizontal: 10.px),
                  radius: BorderRadius.circular(8.px),
                  color: AppColors.primaryColor,
                  fontFamily: FontFamily.list([FontFamily("Space Grotesk"), FontFamilies.andaleMono]),
                  fontSize: 40.px,
                  fontWeight: FontWeight.w500,
                  whiteSpace: WhiteSpace.noWrap, // 👈 Thêm padding để title thoáng hơn
                  backgroundColor: AppColors.greenPrimary, // 👈 Giữ nguyên title trên 1 dòng
                ),
                [text(title)]),
            SizeBoxComponent(width: 40),
            div(
                styles: Styles(
                  margin: EdgeInsets.only(left: 10.px),
                  flex: Flex.auto,
                  fontFamily: FontFamily.list([FontFamily("Space Grotesk"), FontFamilies.andaleMono]),
                  fontSize: 18.px,
                  fontWeight: FontWeight.w400,
                ),
                [text(content ?? "")])
          ])
    ]);
  }
}
