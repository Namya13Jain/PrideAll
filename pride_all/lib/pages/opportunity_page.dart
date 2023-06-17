import 'package:flutter/material.dart';
import 'package:pride_all/helper/commons.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class OpportunityPage extends StatefulWidget {
  const OpportunityPage({super.key});

  @override
  State<OpportunityPage> createState() => _OpportunityPageState();
}

class _OpportunityPageState extends State<OpportunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //NAV BAR
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
            //heading text
            const Text(
              "Want to apply for Jobs?",
              style: headingText,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 300, right: 100),
                  height: 800,
                  width: 900,
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
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: Text(
                          "PrideAll belives in equity at workplace. So, we have curated a list of 20 companies that support the LGBTQ+ community by offering an inclusive, supportive working environment, as well as fantastic jobs with excellent work flexibility.",
                          style: introText,
                        ),
                      ),
                      const SizedBox(height: 10),
                      //1st Company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("1.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Google",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //2nd company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("2.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://www.amazon.jobs/en/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Amazon",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //3rd company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("3.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url = Uri.parse(
                                    'https://www.crowdstrike.com/careers/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "CrowdStrike",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //4th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("4.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url = Uri.parse(
                                    'https://www.atlassian.com/company/careers');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Atlassian",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //5th compANY
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("5.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://jobs.citizensbank.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Citizens Bank",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //6th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("6.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url = Uri.parse(
                                    'https://www.capitalgroup.com/about-us/careers.html');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Capital Group",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //7th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("7.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url = Uri.parse(
                                    'https://www.epsilon.com/us/careers/join-our-team');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Epsilon",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //8th compnay
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("8.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url = Uri.parse(
                                    'https://jobs.dropbox.com/all-jobs');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Dropbox",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //9th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("9.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Intuit",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //10th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("10.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Lowe's",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //11th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("11.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Microsoft",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //12th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("12.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "SAP",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //13th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("13.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Servicenow",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //14th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("14.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Spotify",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //15th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("15.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Upwork",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //16th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("16.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "VMWare",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //17th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("17.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Wells Fargo",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //18th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("18.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "U.S. Bank",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //19th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("19.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "Starbucks",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //20th company
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Row(
                          children: [
                            const Text("20.  ", style: numText),
                            GestureDetector(
                              onTap: () {
                                final Uri _url =
                                    Uri.parse('https://careers.google.com/');
                                _launchUrl(_url);
                              },
                              child: const MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Text(
                                  "New York Life",
                                  style: companyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            //BOTTOM BAR
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
