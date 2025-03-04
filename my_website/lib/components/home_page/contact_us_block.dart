import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/constants/app_colors.dart';
import 'package:my_website/constants/image_constant.dart';

class ContactUsBlock extends StatefulComponent {
  const ContactUsBlock({super.key});

  @override
  State<ContactUsBlock> createState() => GenderSelectionState();
}

class GenderSelectionState extends State<ContactUsBlock> {
  int numSelected = 1;
  String textValue = '';
  String emailValue = '';
  String messageValue = '';

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            display: Display.flex,
            margin: Margin.symmetric(horizontal: 100.px),
            radius: BorderRadius.circular(45.px),
            flexDirection: FlexDirection.row,
            justifyContent: JustifyContent.spaceBetween,
            alignItems: AlignItems.center,
            backgroundColor: AppColors.backgroundWhite),
        [
          _detailComponent(),
          img(
              // styles: Styles(height: 100.percent),
              src: Images.imageContactUsCard,
              height: 550)
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

  Component _messageInput() {
    return div(
      styles: Styles(
        display: Display.flex,
        height: 223.px,
        flexDirection: FlexDirection.column,
        justifyContent: JustifyContent.spaceBetween,
      ),
      [
        Text("Message*"),
        SizeBoxComponent(height: 6),
        textarea(
            // value: messageValue,
            onInput: (e) => setState(() => messageValue = e ?? ''),
            styles: Styles(
              height: 170.px,
              padding: Padding.symmetric(horizontal: 30.px, vertical: 18.px),
              border: Border(color: AppColors.primaryColor, width: 2.px),
              radius: BorderRadius.circular(14.px),
              color: AppColors.primaryColor,
              fontSize: 18.px,
              fontWeight: FontWeight.w400,
              backgroundColor: AppColors.white,
              raw: {'resize': 'none'},
            ),
            readonly: false,
            required: true,
            []),
      ],
    );
  }

  Component _detailComponent() {
    return div(
        styles: Styles(
            width: 45.percent,
            // height: 650.px,
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
          SizeBoxComponent(height: 25),
          _messageInput(),
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
