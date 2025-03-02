import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/home_page/member_card.dart';
import 'package:my_website/constants/image_constant.dart';

class GroupOfCard extends StatelessComponent {
  const GroupOfCard({
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            margin: Margin.symmetric(vertical: 80.px, horizontal: 100.px)),
        [
          MemberCard(
              name: "John Smith",
              position: "CEO and Founder",
              imagePath: Images.memberTeam,
              content:
                  "10+ years of experience in digital marketing. Expertise in SEO, PPC, and content strategy")
        ]);
  }
}
