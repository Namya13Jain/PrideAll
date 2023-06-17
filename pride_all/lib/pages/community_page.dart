import 'package:flutter/material.dart';
import 'package:pride_all/helper/commons.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

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
            //BODY

            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: const Text(
                "In today's interconnected world, community forums have emerged as powerful platforms for fostering engagement, knowledge sharing, and collaboration among individuals with shared interests. These online spaces provide a virtual meeting ground where people from diverse backgrounds can come together to discuss, learn, and contribute to various topics. Community forums serve as vibrant hubs of collective wisdom, where participants can seek advice, offer expertise, and form meaningful connections. From hobby enthusiasts to professionals in specialized fields, these forums cater to a wide range of interests, making them invaluable resources for learning, networking, and finding like-minded individuals. Whether you're looking for technical support, seeking inspiration, or simply yearning for a sense of belonging, community forums offer a welcoming environment where you can be part of a thriving community united by shared passions and common goals.",
                style: introText,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Column(
                children: [
                  const Text(
                    "Some Renowed Personalities",
                    style: headingTextUnderline,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Here are the inspiring stories of 11 LGBTQIA+ people from India that will warm even the coldest of all hearts",
                    style: buttonStyle,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ExpansionTile(
                    title: const Text(
                      "1. Navtej Singh Johar",
                      style: headingText,
                    ),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://im.indiatimes.in/media/content/2019/Jun/lgbt_1560335454_725x725.jpg",
                        height: 400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "The first Sikh to take up Bharatnatyam as a dance form, Navtej is a Sangeet Natak Akademi awardee and is a known name when it comes to the dance form being practiced in India. In June 2016, Johar and five others from the LGBT community , filed a writ petition in the Supreme Court of India challenging Section 377 of the Indian Penal Code. In the year 2018, Navtej Singh Johar and others v. Union of India became a landmark case when the Supreme Court unanimously declared the law unconstitutional \"in so far as it criminalises consensual sexual conduct between adults of the same sex\"",
                        style: introText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  //2nd
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const Text(
                      "2. Gauri Sawant",
                      style: headingText,
                    ),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://im.indiatimes.in/media/content/2019/Jun/lgbt_1560335497.jpg",
                        height: 400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Gauri became a known face after getting featured in an advertisement for Vicks but has been an activist for transgender rights since much longer. In fact, in 2014 she became the first transgender individual to file a petition with the Supreme Court of India for adoption rights of transgender people. This made sense since she had adopted a girl child in the year 2008 after the baby’s mother, who was a sex worker, passed away. Her part in the fight for rights has been a considerable one given that she was also a petitioner in the National Legal Services Authority case in which the Supreme Court recognised transgender as the third gender.",
                        style: introText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  //3rd
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const Text(
                      "3. Prince Manvendra Singh Gohil",
                      style: headingText,
                    ),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://im.indiatimes.in/media/content/2019/Jun/lgbt_1560335895.jpg",
                        height: 400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "He’s the first royal in India to come out as homosexual after which he started a trust called the Lakshya Trust to educate people from the LGBTQIA+ individuals about protected sex. Moreover, the trust also offers counselling sessions and treatment for sexually transmitted diseases. While he had to face a lot socially after coming out, that didn’t deter him from making efforts towards the well-being of one of the most marginalised communities in India.",
                        style: introText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  //4th\
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const Text(
                      "4. Dutee Chand",
                      style: headingText,
                    ),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://im.indiatimes.in/media/content/2019/Jun/lgbt_1560335533.jpg",
                        height: 400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "She’s an Indian professional sprinter. Her sports accolades are many but she was recently applauded for coming out publicly. She declared that she’s in a same-sex relationship. She is now, India’s first and only openly gay athlete.",
                        style: introText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  //5th
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const Text(
                      "5. Harish Iyer",
                      style: headingText,
                    ),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://im.indiatimes.in/media/content/2019/Jun/lgbt_1560335557_725x725.jpeg",
                        height: 400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Harish Iyer has appeared on Amir Khan’s Satyamev Jayate and has had a strong voice supporting the LGBTQIA+ community. However, he set a historic record by becoming the first openly gay inidividual in India to join a political party.",
                        style: introText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  //6th
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const Text(
                      "6. Keshav Suri",
                      style: headingText,
                    ),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://im.indiatimes.in/media/content/2019/Jun/lgbt_1560335730_725x725.png",
                        height: 400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Keshav is the Executive Director of The Lalit Suri Hospitality Group but is also a social activist who has, through his entrepreneurial ventures, created safe spaces as well as professional opportunities for the LGBTQ+ community",
                        style: introText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  //7th
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const Text(
                      "7. Vikram Seth",
                      style: headingText,
                    ),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://im.indiatimes.in/media/content/2019/Jun/lgbt_1560335919.jpg",
                        height: 400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "An extremely famous novelist and poet, Vikram identifies as bisexual. He has brought in a homosexual narrative through his writing, which in itself is an achievement given that he started writing at a time when homosexuality as a concept didn’t just lack narrative but also legality in India.",
                        style: introText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  //8th
                  const SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    title: const Text(
                      "8. Atri Kar",
                      style: headingText,
                    ),
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        "https://im.indiatimes.in/media/content/2019/Jun/lgbt_1560336033.jpg",
                        height: 400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Atri wanted to sit for civil service exams but noticed that there were only two options under the category of gender. There was a long legal battle before which she could sit down to take the exam as a trangender and in doing so, she became India’s first trangender to do so.",
                        style: introText,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "If you feel that your dtory can inspire other members of the community, feel free to email your story at 'pride_all.stories23@gmail.com'",
              style: sharknameText,
            ),
            const SizedBox(
              height: 50,
            ),

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
