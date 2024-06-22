import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/home.dart';
import '../pages/about.dart';
import '../pages/experience.dart';
import '../pages/skills.dart';
import '../pages/posts.dart';
import '../pages/error.dart';

import 'social_button.dart';
import 'navigation_button.dart';

enum NavigationLocation {
  home,
  about,
  experience,
  skills,
  posts,
  error
}

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(url: 'https://www.linkedin.com/in/ryan-dodd-171a30249/', icon: FontAwesomeIcons.linkedinIn, tooltip: "LinkedIn"),
        SocialButton(url: 'https://github.com/Conmmander', icon: FontAwesomeIcons.github, tooltip: "GitHub"),
        SocialButton(url: 'mailto:ryan@ryandodd.org', icon: FontAwesomeIcons.google, tooltip: "ryan@ryandodd.org"),
        SocialButton(url: 'tel:+18473404582', icon: Icons.phone, tooltip: "(847) 340 - 4582"),
        SocialButton(url: 'https://ryandodd.org/Dodd_Ryan_Resume.pdf', icon: Icons.book, tooltip: "Resume")
      ]
    );
  }
}

class Navigation extends StatelessWidget {
  const Navigation({super.key, required this.page});

  final NavigationLocation page;

  Widget currentPage() {
    switch (page) {
      case NavigationLocation.home:
        return const Home();
      case NavigationLocation.about:
        return const About();
      case NavigationLocation.experience:
        return const Experience();
      case NavigationLocation.skills:
        return const Skills();
      case NavigationLocation.posts:
        return const Posts();
      case NavigationLocation.error:
        return const ErrorPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    MediaQueryData queryData = MediaQuery.of(context);
    bool mobilePlatform = queryData.size.width >= 600 ? false : true;

    return Scaffold(
      drawer: mobilePlatform ? Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: theme.colorScheme.onSurface
              ),
              child: Text("Ryan Dodd",
                style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                  fontSize: 24
                )
              ),
            ),
            const NavigationButton(label: "Home", route: "/", icon: Icons.home_outlined, tip: "Home page"),
            const NavigationButton(label: "About", route: "/about", icon: Icons.person_outlined, tip: "Details about Ryan"),
            const NavigationButton(label: "Experience", route: "/experience", icon: Icons.checklist_outlined, tip: "Work experience"),
            const NavigationButton(label: "Skills", route: "/skills", icon: Icons.code_outlined, tip: "Ryan's skills"),
            const NavigationButton(label: "Posts", route: "/posts", icon: Icons.book_outlined, tip: "Articles, tutorials, and projects."),
          ]
        ),
      ) : null,
      appBar: AppBar(
        iconTheme: IconThemeData(color: theme.colorScheme.inversePrimary),
        backgroundColor: theme.colorScheme.primary,
        elevation: 5,
        shadowColor: theme.colorScheme.shadow,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: !mobilePlatform,
              child: Text("Ryan Dodd",
                style: TextStyle(
                  color: theme.colorScheme.onPrimary,
                )
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15
              )
            ),
            Visibility(visible: !mobilePlatform, child: const NavigationButton(label: "Home", route: "/", icon: Icons.home_outlined, tip: "Home page")),
            Visibility(visible: !mobilePlatform, child: const NavigationButton(label: "About", route: "/about", icon: Icons.person_outlined, tip: "Details about Ryan")),
            Visibility(visible: !mobilePlatform, child: const NavigationButton(label: "Experience", route: "/experience", icon: Icons.checklist_outlined, tip: "Work experience")),
            Visibility(visible: !mobilePlatform, child: const NavigationButton(label: "Skills", route: "/skills", icon: Icons.code_outlined, tip: "Ryan's skills")),
            Visibility(visible: !mobilePlatform, child: const NavigationButton(label: "Posts", route: "/posts", icon: Icons.book_outlined, tip: "Articles, tutorials, and projects.")),
          ]
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, 0),
            end: Alignment(1, 1),
            colors: [
              Color(0xFF136F63),
              Color(0xFFBEE3DB),
              Color(0xFFFAF9F9),
            ],
            stops: [0.0, 0.5, 1.0]
          ),
        ),
        child: Stack(
          children: [
            currentPage(),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Socials(),
              )
            )
          ],
        )
      ),
    );
  }
}