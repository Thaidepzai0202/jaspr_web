import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/constants/app_colors.dart';

class ContactUsBlock extends StatefulComponent {
  const ContactUsBlock({super.key});

  @override
  State<ContactUsBlock> createState() => GenderSelectionState();
}

class GenderSelectionState extends State<ContactUsBlock> {
  int numSelected = 1;
  String textValue = '';
  String emailValue = '';

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            margin: Margin.symmetric(horizontal: 100.px),
            radius: BorderRadius.circular(45.px),
            backgroundColor: AppColors.backgroundWhite),
        [
          _detailComponent(),
        ]);
  }

  Component _nameInput() {
    return div(
        styles: Styles(
            display: Display.flex,
            height: 92.px,
            flexDirection: FlexDirection.column,
            justifyContent: JustifyContent.spaceBetween),
        [
          Text("Name"),
          input(
              type: InputType.text,
              value: textValue,
              onInput: (e) => setState(() => textValue = e.value ?? ''),
              styles: Styles(
                  height: 58.px,
                  padding: Padding.symmetric(horizontal: 30.px),
                  radius: BorderRadius.circular(14.px),
                  color: AppColors.primaryColor,
                  fontSize: 18.px,
                  fontWeight: FontWeight.w400,
                  backgroundColor: AppColors.white),
              [Text("name")])
        ]);
  }
  Component _emailInput() {
    return div(
        styles: Styles(
            display: Display.flex,
            height: 92.px,
            flexDirection: FlexDirection.column,
            justifyContent: JustifyContent.spaceBetween),
        [
          Text("Email"),
          input(
              type: InputType.text,
              value: emailValue,
              onInput: (e) => setState(() => emailValue = e.value ?? ''),
              styles: Styles(
                  height: 58.px,
                  padding: Padding.symmetric(horizontal: 30.px),
                  radius: BorderRadius.circular(14.px),
                  color: AppColors.primaryColor,
                  fontSize: 18.px,
                  fontWeight: FontWeight.w400,
                  backgroundColor: AppColors.white),
              [Text("name")])
        ]);
  }

  Component _detailComponent() {
    return div(
        styles: Styles(
            width: 45.percent,
            height: 650.px,
            padding: Padding.only(top: 60.px, bottom: 60.px, left: 100.px)),
        [
          div(
              styles: Styles(
                  display: Display.flex,
                  height: 28.px,
                  flexDirection: FlexDirection.row),
              [
                _radioComponent(
                  value: "Say Hi",
                  intValue: 1,
                ),
                SizeBoxComponent(width: 35),
                _radioComponent(
                  value: "Get a Quote",
                  intValue: 2,
                ),
              ]),
          SizeBoxComponent(height: 40),
          _nameInput(),
          SizeBoxComponent(height: 25),
          _emailInput(),
        ]);
  }

  Component _radioComponent({
    required String value,
    required int intValue,
  }) {
    return div(
        styles: Styles(
          display: Display.flex,
          flexDirection: FlexDirection.row,
        ),
        [
          button(
              styles: Styles(height: 28.px, border: Border.none),
              onClick: () => setState(() => numSelected = intValue),
              [
                div(
                    styles: Styles(
                        display: Display.flex,
                        width: 20.px,
                        height: 20.px,
                        // padding: Padding.all(4.px),
                        border:
                            Border(color: AppColors.primaryColor, width: 1.px),
                        radius: BorderRadius.circular(20.px),
                        justifyContent: JustifyContent.center,
                        alignItems: AlignItems.center),
                    [
                      div(
                          styles: Styles(
                              width: 14.px,
                              height: 14.px,
                              radius: BorderRadius.circular(12.px),
                              backgroundColor: intValue == numSelected
                                  ? AppColors.greenPrimary
                                  : AppColors.white),
                          [])
                    ]),
              ]),
          SizeBoxComponent(width: 14),
          div(styles: Styles(fontSize: 18.px, fontWeight: FontWeight.w400), [
            Text(value),
          ])
        ]);
  }
}
