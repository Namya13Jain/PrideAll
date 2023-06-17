import 'package:flutter/material.dart';
import 'package:pride_all/helper/commons.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Nav BAr
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

            //BODY
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: const Text(
                "Attention all aspiring entrepreneurs and innovators! We are thrilled to announce an exciting opportunity for you to bring your startup ideas to life. We are currently accepting registrations for a unique program that combines funding and mentorship, designed to support and nurture promising ventures. Whether you have a disruptive tech solution, a social enterprise, or a groundbreaking product, we want to hear from you. This program offers not only financial support but also invaluable guidance from seasoned industry experts who are eager to share their knowledge and experience. Don't miss this chance to turn your vision into reality. Register now to secure your spot in this transformative program and embark on an extraordinary journey towards success. Together, we can build a thriving startup ecosystem and shape the future of entrepreneurship.",
                style: introText,
              ),
            ),
            //Photo
            Image.asset(
              "assets/images/shark_tank.jpg",
              width: 1300,
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                const Text(
                  "Details of the Programme",
                  style: headingTextUnderline,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Registration Starts: 20 June,2023",
                  style: buttonStyle,
                ),
                const Text(
                  "Registration End: 20 August,2023",
                  style: buttonStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Text(
                    "There are 3 rounds of selection:\n1.  All the startups will have to regsiter on the website along with the video of their user feedback and last year sales.\n2. The teams selected in Round 1 will proceed to Round 2 were they will be called for a virtual interview of 10 minutes and required to pitch their idea in front of the panelists.\n3. This is the last round where the sharks will invest in the potential startups and provide mentorship to all the startups which reach upto Round 3.",
                    style: introText,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse(
                        'https://docs.google.com/forms/d/e/1FAIpQLSfnbYoMMuTRQf88pyHIv_HVjB7P9D8xksZSFEWrQeHYPjyF8g/viewform?usp=sf_link');
                    _launchUrl(_url);
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 180, 180, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text("Registration Form", style: buttonStyle),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Meet the Sharks",
                  style: headingTextUnderline,
                ),
                const SizedBox(
                  height: 30,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  //runSpacing: 10,
                  children: [
                    //1st shark
                    Container(
                      width: 250,
                      height: 240,
                      margin: const EdgeInsets.fromLTRB(40, 10, 10, 20),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: Color.fromRGBO(255, 180, 180, 1),
                            ),
                          ],
                          color: const Color.fromARGB(255, 252, 245, 245),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.person_2,
                            size: 150,
                          ),
                          Text(
                            "Mr. Aman Gupta",
                            style: sharknameText,
                          ),
                          Text(
                            "CMO, Boat Lifestyles",
                            style: sharkcompanyText,
                          )
                        ],
                      ),
                    ),
                    //2nd shark
                    Container(
                      width: 250,
                      height: 240,
                      margin: const EdgeInsets.fromLTRB(50, 10, 10, 20),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: Color.fromRGBO(255, 180, 180, 1),
                            ),
                          ],
                          color: const Color.fromARGB(255, 252, 245, 245),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.person_2,
                            size: 150,
                          ),
                          Text(
                            "Mr. Amit Jain",
                            style: sharknameText,
                          ),
                          Text(
                            "Co-Founder, CarDekho Group",
                            style: sharkcompanyText,
                          )
                        ],
                      ),
                    ),
                    //3rd shark
                    Container(
                      width: 250,
                      height: 240,
                      margin: const EdgeInsets.fromLTRB(50, 10, 10, 20),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: Color.fromRGBO(255, 180, 180, 1),
                            ),
                          ],
                          color: const Color.fromARGB(255, 252, 245, 245),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.person_2,
                            size: 150,
                          ),
                          Text(
                            "Miss Vineeta",
                            style: sharknameText,
                          ),
                          Text(
                            "Co-Founder, Sugar Cosmetics",
                            style: sharkcompanyText,
                          )
                        ],
                      ),
                    ),
                    //4th shark
                    Container(
                      width: 250,
                      height: 240,
                      margin: const EdgeInsets.fromLTRB(50, 10, 10, 20),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: Color.fromRGBO(255, 180, 180, 1),
                            ),
                          ],
                          color: const Color.fromARGB(255, 252, 245, 245),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.person_2,
                            size: 150,
                          ),
                          Text(
                            "Miss Ghazal Alagh",
                            style: sharknameText,
                          ),
                          Text(
                            "Co-Founder, Mama Earth",
                            style: sharkcompanyText,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            //FAQ
            const Text(
              "FAQ",
              style: headingTextUnderline,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: const ExpansionTile(
                title: Text(
                  "Is there any registration fee?",
                  style: buttonStyle,
                ),
                children: <Widget>[
                  Text(
                    "Nada, participation in this programme is completely free. But if selected for Round 3 then the accomodation and travelling charges will have to be beared by you.",
                    style: introText,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: const ExpansionTile(
                title: Text(
                  "Do I need to submit some documents while registering?",
                  style: buttonStyle,
                ),
                children: <Widget>[
                  Text(
                    "For the authenticity of your startup, we require the following Documents which you can prepare before starting the registration process. Please read the Privacy Policies before adding these confidential details in the registration form.",
                    style: introText,
                  ),
                  Text(
                    "1. Licenses prevailing to your startup as applicable\n2. Identification(Aadhaar card/Voting ID/Passport) of the Co-Founder\n3. Income Tax Returns of your startup\n4. Agreement of the previous Rounds of Funding (if applicable)\n5. GST No. of your Startup",
                    style: introText,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: const ExpansionTile(
                title: Text(
                  "I still have certain questions which need to be answered",
                  style: buttonStyle,
                ),
                children: <Widget>[
                  Text(
                    "Follow us on Social Media Handles for updates. You can reach out to us at 'shark.tank@gmail.com' for queries. Please wait for the response for atleast 2 days.",
                    style: introText,
                  ),
                ],
              ),
            ),
            const Text(
              "Follow us",
              style: headingTextUnderline,
            ),
            Wrap(
              children: [
                GestureDetector(
                  onTap: () {
                    final Uri _url =
                        Uri.parse('https://twitter.com/sharktankindia');
                    _launchUrl(_url);
                  },
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        color: Color.fromARGB(255, 56, 76, 86),
                        size: 30,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse(
                        'https://www.linkedin.com/company/shark-tank-india/');
                    _launchUrl(_url);
                  },
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Color.fromARGB(255, 56, 76, 86),
                        size: 30,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse(
                        'https://www.linkedin.com/company/shark-tank-india/');
                    _launchUrl(_url);
                  },
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        color: Color.fromARGB(255, 56, 76, 86),
                        size: 30,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    final Uri _url = Uri.parse(
                        'https://www.linkedin.com/company/shark-tank-india/');
                    _launchUrl(_url);
                  },
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: Color.fromARGB(255, 56, 76, 86),
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Spacing
            const SizedBox(
              height: 40,
            ),
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
