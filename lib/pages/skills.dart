import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({super.key, required this.imgLocation, required this.tooltip});

  final String imgLocation;
  final String tooltip;

  @override
  Widget build (BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FloatingActionButton.large(
        onPressed: null,
        tooltip: tooltip,
        backgroundColor: theme.colorScheme.onSurface,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(imgLocation),
        )
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Programming Languages",
              style: TextStyle(
                fontSize: 50,
                color: theme.colorScheme.onPrimary
              )
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkillsBox(imgLocation: "assets/img/icons/java-original.svg", tooltip: "Java"),
              SkillsBox(imgLocation: "assets/img/icons/dart-original.svg", tooltip: "Dart"),
              SkillsBox(imgLocation: "assets/img/icons/javascript-original.svg", tooltip: "Javascript"),
              SkillsBox(imgLocation: "assets/img/icons/lua-original.svg", tooltip: "Lua"),
              SkillsBox(imgLocation: "assets/img/icons/python-original.svg", tooltip: "Python"),
              SkillsBox(imgLocation: "assets/img/icons/html5-original.svg", tooltip: "HTML"),
              SkillsBox(imgLocation: "assets/img/icons/cplusplus-original.svg", tooltip: "C++"),
            ]
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("IDEs and Editors",
              style: TextStyle(
                fontSize: 50,
                color: theme.colorScheme.onPrimary
              )
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkillsBox(imgLocation: "assets/img/icons/vscode-original.svg", tooltip: "VSCode"),
              SkillsBox(imgLocation: "assets/img/icons/visualstudio-original.svg", tooltip: "Visual Studio"),
              SkillsBox(imgLocation: "assets/img/icons/rstudio-original.svg", tooltip: "RStudio"),
              SkillsBox(imgLocation: "assets/img/icons/intellij-original.svg", tooltip: "Intellij"),
              // Add eclipse
            ]
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Tools and Technology",
              style: TextStyle(
                fontSize: 50,
                color: theme.colorScheme.onPrimary
              )
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkillsBox(imgLocation: "assets/img/icons/css3-original.svg", tooltip: "CSS"),
              SkillsBox(imgLocation: "assets/img/icons/firebase-original.svg", tooltip: "Firebase"),
              SkillsBox(imgLocation: "assets/img/icons/flutter-original.svg", tooltip: "Flutter"),
              SkillsBox(imgLocation: "assets/img/icons/git-original.svg", tooltip: "Git"),
              SkillsBox(imgLocation: "assets/img/icons/github-original.svg", tooltip: "Github"),
              SkillsBox(imgLocation: "assets/img/icons/mongodb-original.svg", tooltip: "MongoDB"),
              SkillsBox(imgLocation: "assets/img/icons/mysql-original.svg", tooltip: "MySQL"),
              SkillsBox(imgLocation: "assets/img/icons/nodejs-original.svg", tooltip: "Node.JS"),
              SkillsBox(imgLocation: "assets/img/icons/react-original.svg", tooltip: "React"),
            ]
          ),
        ]
      )
    );
  }
}