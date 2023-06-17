import 'package:flutter/material.dart';
import 'package:pride_all/helper/commons.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flip_card/flip_card.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //nav bar
            Row(
              children: [
                Animate(
                  effects: const [
                    FadeEffect(),
                    ScaleEffect(),
                  ],
                  child: Image.asset(
                    "assets/images/inclusi_law_bg.png",
                    height: 100,
                    width: 180,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(400, 10, 50, 10),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'home_page');
                      },
                      child: const Text(
                        "Home",
                        style: navBarstyle,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'opportunity_page');
                      },
                      child: const Text(
                        "Opportunity",
                        style: navBarstyle,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'learn_page');
                      },
                      child: const Text(
                        "Learn",
                        style: navBarstyle,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'community_page');
                      },
                      child: const Text(
                        "Community",
                        style: navBarstyle,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'store_page');
                      },
                      child: const Text(
                        "Shark Tank",
                        style: navBarstyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Body
            Column(
              children: [
                const Text(
                  "Learn about the laws formulated for the community",
                  style: headingText,
                ),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  children: [
                    //Flip Card 1
                    Container(
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              // color: Colors.grey,
                              //offset: Offset.infinite,
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: Color.fromRGBO(255, 180, 180, 1),
                            ),
                          ],
                          color: const Color.fromARGB(255, 252, 245, 245),
                          borderRadius: BorderRadius.circular(20)),
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: FlipCard(
                          front: Center(
                            child: Text(
                              "International Laws",
                              style: LawsheadingText,
                            ),
                          ),
                          back: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    "Increased recognition for LGBT rights is also exemplified in the actions of individual countries. Efforts to overturn laws barring homosexual activity have appeared in Botswana, India, Kenya, and Trinidad and Tobago.",
                                    style: numText,
                                  ),
                                  Text(
                                    "\nIn Taiwan, the Constitutional Court issued a 2018 ruling declaring that same-sex marriage is a legal right. Although two referendums failed to approve legislative changes to the existing Taiwanese Civil Code, they have no effect on the court’s prior ruling.",
                                    style: numText,
                                  ),
                                  Text(
                                    "\nLGBT rights in Brazil have also experienced significant progress during the last decade, with the National Council of Justice legalizing gay marriage nationwide in 2013. In 2018, the council removed restrictions requiring transgender individuals to undergo surgery or judicial review in order to change their names or gender markers on identification document. Internationally, Brazil presented a 2003 resolution to the Economic and Social Council of the United Nations entitled “Promotion and Protection of Human Rights,” which addressed human rights violations due to sexual orientation.",
                                    style: numText,
                                  ),
                                  Text(
                                    "\nIn the United Kingdom, debate over reforms to the 2004 Gender Recognition Act have revealed rifts within feminism and between UK and US political norms. The act became the first in the world to allow for self-identification of gender without requirements such as medical transition to amend legal status. In October 2018, the Government Equalities Office opened a consultation to address concerns of bureaucratic inefficiency in the process of legal gender change. The consultation’s description states that “trans and non-binary people are members of our society and should be treated with respect.”",
                                    style: numText,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //Flip card 2
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 500,
                      width: 500,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              // color: Colors.grey,
                              //offset: Offset.infinite,
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: Color.fromRGBO(255, 180, 180, 1),
                            ),
                          ],
                          color: const Color.fromARGB(255, 252, 245, 245),
                          borderRadius: BorderRadius.circular(20)),
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: FlipCard(
                          front: Center(
                            child: Text(
                              "Indian Laws",
                              style: LawsheadingText,
                            ),
                          ),
                          back: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    "In 2018, the Supreme Court of India decriminalized consensual homosexuality between adults by downplaying Section 377 of the Indian Penal Code and excluding it from the scope of her landmark Navtej Singh Johar v. Union of India.",
                                    style: numText,
                                  ),
                                  Text(
                                    "\nArticle 15 of the Constitution of India states that:\n(a)Discrimination prohibited on the basis of religion, race, caste, sex, or place of birth.\n(b)The State shall not discriminate against any citizen on the basis of religion, race, caste, sex, or place of birth alone or in combination with any of the other grounds.\n(c)No citizen shall be subject to any disability, liability, restriction, or condition with respect to:\n(c.1.)Access to stores, public restaurants, hotels, and places of public entertainment; \n(c.2.)The use of wells, tanks, bathing Ghats, roads, and places of public resort maintained entirely or in part with money provided by the State or designated for the use of the general public.",
                                    style: numText,
                                  ),
                                  Text(
                                    "\nAccording to the Ipsos LGBT+ Pride 2021 Global Survey, 66% of Indians believe same-sex couples should have the same adoption rights as heterosexual couples, while 21% disagree and 13% are unsure. Similarly, 59% of Indians believe same-sex couples are as likely to be as successful in parenting as other parents, 26% are not and 16% are unsure.",
                                    style: numText,
                                  ),
                                  Text(
                                    "\nThe 2016 UGC Rule on Suppressing the Threat of Ragging in Higher Education Institutions (Third Amendment) prohibits bullying, raging, and discrimination against students based on their sexual orientation or gender identity.",
                                    style: numText,
                                  ),
                                  Text(
                                    "\nThe Indian Army does not openly allow LGBT people to serve. Bills amending the Army Act 1950, Navy Act 1957 and Air Force Act 1950 were introduced in the Indian Parliament by his BJP member Jagdhan Bikapal in late December 2018 to allow LGBT people to serve in the armed forces. Now The House of Representatives did not vote on the bill.",
                                    style: numText,
                                  ),
                                  Text(
                                    "According to the Ipsos LGBT+ Pride 2021 Global Survey, 44% of Indians support legalizing same-sex marriage, 14% support legal recognition of same-sex couples, 18% oppose and 25% do not express an opinion I chose to Additionally, the survey found that 56% of Indians now hold a different view of same-sex marriage than she did five years ago.A 2016 poll by the International Lesbian, Gay, Bisexual, Trans and Intersex Association found that 35% of Indians supported legalizing same-sex marriage, while another 35% opposed it. A Barkey Foundation poll conducted in September-October 2016 found that support for same-sex marriage was 53% higher between the age of 18 and her age of 21.",
                                    style: numText,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            //Bottom Bar
            Container(
              height: 40,
              width: 2000,
              color: const Color.fromRGBO(255, 180, 180, 1),
              child: const Center(
                child: Text(
                  "Made with love by Namya Jain",
                  style: bottomBarStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
