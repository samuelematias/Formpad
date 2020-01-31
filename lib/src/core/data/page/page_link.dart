class PageLink {
  final String image;
  final String title;
  final String subtitle;
  final String description;
  final String button;
  final String buttonUrl;

  const PageLink(
      {this.image,
      this.title,
      this.subtitle,
      this.description,
      this.button,
      this.buttonUrl});

  static PageLink first() => PageLink(
      title: "Dream job",
      subtitle: "Find your dream job at Netguru",
      description:
          "Join us and create revolutionary products that change the way people do things. Learn by doing what you enjoy most.",
      button: "View available jobs",
      buttonUrl: "https://www.netguru.com/career");

  static PageLink second() => PageLink(
      title: "Our culture supports our vision",
      subtitle: "Dive deep into our unique culture",
      description: "Core values. Social norms. Principles of collaboration.",
      button: "See the Culture book",
      buttonUrl: "https://www.netguru.com/netguru-culture-book");

  static PageLink third() => PageLink(
      title: "Netguru College workshops",
      subtitle: "Learn from the best",
      description:
          "The vision for the Netguru College workshops is to share knowledge and experience with those who have the desire to grow.",
      button: "Find out more",
      buttonUrl: "https://www.netguru.com/netgurucollege");

  static List<PageLink> all() => [first(), second(), third()];
}
