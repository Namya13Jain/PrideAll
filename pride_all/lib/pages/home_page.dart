import 'package:flutter/material.dart';
import 'package:pride_all/helper/commons.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Nav Bar
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
            // Head Text
            //What is Pride All
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Row(
                children: [
                  Animate(
                    effects: const [
                      FadeEffect(),
                      ScaleEffect(),
                    ],
                    child: Image.asset(
                      "assets/images/love_nobg.png",
                      height: 200,
                      width: 300,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 1000,
                    height: 300,
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
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: const Text(
                            "Welcome to PrideAll, your ultimate online platform dedicated to serving the LGBTQ+ community. Our website is designed to provide a safe and inclusive space for individuals from all walks of life to connect, engage, and thrive. Whether you identify as lesbian, gay, bisexual, transgender, queer, questioning, or any other part of the diverse LGBTQ+ spectrum, PrideAll is here to support you.",
                            style: introText,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: const Text(
                            "At PrideAll, we believe in the power of community and connection. Our primary goal is to foster meaningful relationships among LGBTQ+ individuals worldwide. By joining our platform, you can connect with like-minded individuals, make new friends, and build a strong support system within a vibrant and accepting community.",
                            style: introText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //2ndd body text
            //Opportunities
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Row(
                children: [
                  Container(
                    width: 1000,
                    height: 240,
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
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: const Text(
                            "PrideAll also offers numerous opportunities for personal and professional growth. Through our platform, you can discover exciting career prospects, internships, and volunteer opportunities tailored to the LGBTQ+ community. We aim to create an environment where you can find the support you need to succeed in your chosen field while embracing your authentic self.",
                            style: introText,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'opportunity_page');
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              height: 30,
                              width: 130,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 180, 180, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Explore More", style: buttonStyle),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Animate(
                    effects: const [
                      FadeEffect(),
                      ScaleEffect(),
                    ],
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 10, 50, 10),
                      child: Image.asset(
                        "assets/images/opp.png",
                        height: 400,
                        width: 300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //3rd body text
            //legal knowledge
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                children: [
                  Animate(
                    effects: const [
                      FadeEffect(),
                      ScaleEffect(),
                    ],
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 10, 50, 10),
                      child: Image.asset(
                        "assets/images/law.png",
                        height: 400,
                        width: 200,
                      ),
                    ),
                  ),
                  Container(
                    width: 1000,
                    height: 240,
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
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: const Text(
                            "In addition to facilitating connections, PrideAll is dedicated to empowering the LGBTQ+ community through various resources. Our website provides comprehensive learning materials on national and international laws that affect LGBTQ+ individuals, helping you understand and navigate your rights and protections. We strive to keep you informed about the latest legal developments and advancements in LGBTQ+ rights, ensuring you have the knowledge to advocate for yourself and others.",
                            style: introText,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'learn_page');
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              height: 30,
                              width: 140,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 180, 180, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(3.0),
                                child:
                                    Text("Legal Booklet", style: buttonStyle),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //4th body text
            // platform for ideas and startups
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Row(
                children: [
                  Container(
                    width: 1000,
                    height: 230,
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
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: const Text(
                            "We also take great pride in providing a platform for LGBTQ+ individuals to promote their products, ideas, and businesses. Whether you have a disruptive tech solution, a social enterprise, or a groundbreaking product, we want to hear from you. 'Shark Tank' offers not only financial support but also invaluable guidance from seasoned industry experts who are eager to share their knowledge and experience. ",
                            style: introText,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'store_page');
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              height: 30,
                              width: 140,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 180, 180, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(3),
                                child: Text("Register Now", style: buttonStyle),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Animate(
                    effects: const [
                      FadeEffect(),
                      ScaleEffect(),
                    ],
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 10, 50, 10),
                      child: Image.asset(
                        "assets/images/start.png",
                        height: 300,
                        width: 250,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //5th Body Text
            //Community Forums
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                children: [
                  Animate(
                    effects: const [
                      FadeEffect(),
                      ScaleEffect(),
                    ],
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 10, 50, 10),
                      child: Image.asset(
                        "assets/images/comm.png",
                        height: 500,
                        width: 300,
                      ),
                    ),
                  ),
                  Container(
                    width: 1000,
                    height: 230,
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
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: const Text(
                            "PrideAll features dynamic community forums where you can engage in thoughtful discussions, share personal experiences, and seek advice from fellow community members. Our forums cover a wide range of topics, from coming out stories and relationship advice to mental health and self-care. You can find solace, guidance, and solidarity within these virtual spaces, knowing that you are not alone on your journey.",
                            style: introText,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'community_page');
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              height: 30,
                              width: 140,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 180, 180, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text("Join Forums", style: buttonStyle),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Bottom Nav Bar
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
