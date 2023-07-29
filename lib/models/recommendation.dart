class Recommendation {
  Recommendation({this.name, this.position, this.source, this.text, this.link});
  final String? name, position, source, text, link;
}

List<Recommendation> recommendations = [
  Recommendation(
    name: "Anthony Nzube",
    position: "Frontend Developer at IHS Medical Inc.",
    source: "LinkedIn",
    text: "I wholeheartedly recommend Victor Ebuka as a top-tier mobile developer. Collaborating with him has been an absolute delight. Ebuka's profound expertise in the latest mobile technologies and trends, coupled with his unwavering dedication, sets him apart from the rest.\n"
    "Throughout our collaboration, Ebuka\'s attention to detail and problem-solving skills were evident, resulting in captivating and user-friendly mobile apps that exceeded our expectations. His positive attitude and seamless collaboration with our team made the development process enjoyable and productive. Without hesitation, I confidently endorse Ebuka Chukwujekwu for any mobile app development venture; he is an invaluable asset to any project.",
    link: "https://www.linkedin.com/in/anthony-chukwujekwu",
  ),
  Recommendation(
    name: "Onoh Somtochukwu",
    position: "COO at Syticks",
    source: "LinkedIn",
    text: "I highly recommend Victor as a mobile developer based on my extensive experience working with him. He is exceptionally talented, and his dedication to crafting user-friendly and innovative mobile applications makes him an invaluable asset to any team. His collaborative nature and strong problem-solving skills further contribute to delivering outstanding results in mobile app development projects.",
    link: "https://www.linkedin.com/in/onoh-somtochukwu-394642167",
  ),
  Recommendation(
    name: "Henry Udorji",
    position: "CTO at iQuest.",
    source: "LinkedIn",
    text: "Victor is an exceptional Mobile App Engineer passionate about crafting captivating applications. He is proficient in Dart, Java, and Kotlin, combining technical expertise with a keen eye for beautiful UI designs. Victor's apps stand out for their functionality and elegance, leaving a lasting impact on users. With a collaborative nature and commitment to continuous learning, he is an invaluable asset to any team seeking innovation in app development. Elevate your app projects with Victor's unique blend of technical brilliance and creative flair.",
    link: "https://www.linkedin.com/in/ifechukwu-udorji-98204a1b1",
  ),
  // Recommendation(
  //   name: "Prevail Ejimadu",
  //   position: "CEO at Reevatech Solutions",
  //   source: "LinkedIn",
  //   text: "Victor's dedication to work is something I really admire. When he's on a project with you, every little detail matters and he's going to effectively communicate them.",
  //   link: "",
  // ),
];