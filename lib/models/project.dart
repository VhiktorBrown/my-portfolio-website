class Project {
  Project({required this.title, required this.description, this.link, this.iconPath});
  final String? title, description, link, iconPath;
}

List<Project> demoProjects = [
  Project(
      title: "iQuest",
      description: "iQuest is an Ed-Tech mobile app that is bringing thousands of undergraduate students closer to their academic goals. "
          "I was part of small mobile team responsible for setting up the project structure, building its user interface and writing readable, efficient, scalable code "
          "as well as shipping to the app store.",
      link: "",
      iconPath: "assets/icons/google_play.svg",
  ),
  Project(
      title: "Syticks",
      description: "Responsible for building from scratch the app that's gradually digitalizing the traditional ticketing industry, I was responsible for "
          "setting up project using MVVM structure, building UI, writing optimal Java and Kotlin code, implementing dependency injection with Dagger2, writing tests and "
          "shipping apps to the store.",
      link: "",
      iconPath: "assets/icons/google_play.svg",
  ),
  Project(
      title: "Syticks For Businesses",
      description: "The business facing end to the Syticks app, I ensured that business were able to put up ticket for sale, see stats from a dashboard, "
          "check out buyers profiles, retrieve QR codes for their experiences and share with their fans, digitally sign in attendees by scanning their ticket QR codes. Implemented later features "
          "like business statistics, discount codes, and many more.",
      link: "",
    iconPath: "assets/icons/google_play.svg",
  ),
  Project(
      title: "Track your Finance",
      description: "Fintech app responsible for tracking your finances and helping you categorize them into different sections and displaying them "
          "in a pie chart",
    link: "",
    iconPath: "",
  ),
  Project(
      title: "Order Food",
      description: "A food ordering app that helps users you find their favourite dishes.",
    link: "",
    iconPath: "",
  ),
  Project(
      title: "PayStack WebView Android",
      description: "An open source library I developed using Java that helps developers integrate Paystack's payment gateway in their apps with only few lines of code.",
    link: "",
    iconPath: "",
  )
];