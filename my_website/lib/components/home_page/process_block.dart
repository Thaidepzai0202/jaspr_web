import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/home_page/card_process_block.dart';

class ProcessBlock extends StatelessComponent {
  const ProcessBlock({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            display: Display.flex,
            gap: Gap(row: 30.px),
            margin: Margin.symmetric(horizontal: 100.px),
            flexDirection: FlexDirection.column),
        [
          CardProcessBlock(
              index: "01",
              title: 'Consultation',
              content:
                  "During the initial consultation, we will discuss your business goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements."),
          CardProcessBlock(
              index: "02",
              title: 'Research and Strategy Development',
              content:
                  "During the initial consultation, we will discuss your business goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements."),
          CardProcessBlock(
              index: "03",
              title: 'Implementation',
              content:
                  "During the initial consultation, we will discuss your business goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements."),
          CardProcessBlock(
              index: "04",
              title: 'Monitoring and Optimization',
              content:
                  "During the initial consultation, we will discuss your business goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements."),
          CardProcessBlock(
              index: "05",
              title: 'Reporting and Communication',
              content:
                  "During the initial consultation, we will discuss your business goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements."),
          CardProcessBlock(
              index: "06",
              title: 'Continual Improvement',
              content:
                  "During the initial consultation, we will discuss your business goals and objectives, target audience, and current marketing efforts. This will allow us to understand your needs and tailor our services to best fit your requirements."),
        ]);
  }
}
