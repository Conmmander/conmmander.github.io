import 'package:flutter/material.dart';

import '../widgets/skills_box.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   ThemeData theme = Theme.of(context);
  //   MediaQueryData queryData = MediaQuery.of(context);

  //   return Scaffold(
  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.all(10.0),
  //           child: Text("Programming Languages",
  //             style: TextStyle(
  //               fontSize: queryData.size.width *0.026,
  //               color: theme.colorScheme.onPrimary
  //             )
  //           ),
  //         ),
  //         const Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             SkillsBox(imgLocation: "assets/img/icons/java-original.svg", tooltip: "Java", certification: "assets/certs/java_basic.png"),
  //             SkillsBox(imgLocation: "assets/img/icons/dart-original.svg", tooltip: "Dart"),
  //             SkillsBox(imgLocation: "assets/img/icons/javascript-original.svg", tooltip: "Javascript"),
  //             SkillsBox(imgLocation: "assets/img/icons/lua-original.svg", tooltip: "Lua"),
  //             SkillsBox(imgLocation: "assets/img/icons/python-original.svg", tooltip: "Python"),
  //             SkillsBox(imgLocation: "assets/img/icons/html5-original.svg", tooltip: "HTML"),
  //             SkillsBox(imgLocation: "assets/img/icons/cplusplus-original.svg", tooltip: "C++"),
  //             SkillsBox(imgLocation: "assets/img/icons/csharp-original.svg", tooltip: "C#"),
  //             SkillsBox(imgLocation: "assets/img/icons/typo3-original.svg", tooltip: "TypeScript"),
  //           ]
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.all(10.0),
  //           child: Text("IDEs and Editors",
  //             style: TextStyle(
  //               fontSize: queryData.size.width *0.026,
  //               color: theme.colorScheme.onPrimary
  //             )
  //           ),
  //         ),
  //         const Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             SkillsBox(imgLocation: "assets/img/icons/vscode-original.svg", tooltip: "VSCode"),
  //             SkillsBox(imgLocation: "assets/img/icons/visualstudio-original.svg", tooltip: "Visual Studio"),
  //             SkillsBox(imgLocation: "assets/img/icons/rstudio-original.svg", tooltip: "RStudio"),
  //             SkillsBox(imgLocation: "assets/img/icons/intellij-original.svg", tooltip: "Intellij"),
  //             SkillsBox(imgLocation: "assets/img/icons/eclipse-original.svg", tooltip: "Eclipse"),
  //             SkillsBox(imgLocation: "assets/img/icons/unity-original.svg", tooltip: "Unity"),
  //             SkillsBox(imgLocation: "assets/img/icons/clion-original.svg", tooltip: "CLion"),
  //           ]
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.all(10.0),
  //           child: Text("Tools and Technology",
  //             style: TextStyle(
  //               fontSize: queryData.size.width *0.026,
  //               color: theme.colorScheme.onPrimary
  //             )
  //           ),
  //         ),
  //         const Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             SkillsBox(imgLocation: "assets/img/icons/css3-original.svg", tooltip: "CSS"),
  //             SkillsBox(imgLocation: "assets/img/icons/firebase-original.svg", tooltip: "Firebase"),
  //             SkillsBox(imgLocation: "assets/img/icons/flutter-original.svg", tooltip: "Flutter"),
  //             SkillsBox(imgLocation: "assets/img/icons/git-original.svg", tooltip: "Git"),
  //             SkillsBox(imgLocation: "assets/img/icons/github-original.svg", tooltip: "Github"),
  //             SkillsBox(imgLocation: "assets/img/icons/mongodb-original.svg", tooltip: "MongoDB"),
  //             SkillsBox(imgLocation: "assets/img/icons/mysql-original.svg", tooltip: "MySQL"),
  //             SkillsBox(imgLocation: "assets/img/icons/nodejs-original.svg", tooltip: "Node.JS"),
  //             SkillsBox(imgLocation: "assets/img/icons/react-original.svg", tooltip: "React"),
  //             SkillsBox(imgLocation: "assets/img/icons/markdown-original.svg", tooltip: "Markdown"),
  //             SkillsBox(imgLocation: "assets/img/icons/cloudflare-original.svg", tooltip: "Cloudflare"),
  //             SkillsBox(imgLocation: "assets/img/icons/sqlite-original.svg", tooltip: "SQLite"),
  //             SkillsBox(imgLocation: "assets/img/icons/ssh-original.svg", tooltip: "SSH"),
  //             SkillsBox(imgLocation: "assets/img/icons/trello-original.svg", tooltip: "Trello"),
  //             SkillsBox(imgLocation: "assets/img/icons/digitalocean-original.svg", tooltip: "Digital Ocean"),
  //           ]
  //         ),
  //       ]
  //     )
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Programming Languages",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: queryData.size.width *0.026,
                  color: theme.colorScheme.onPrimary
                )
              ),
            ),
            GridView.extent(
              shrinkWrap: true,
              maxCrossAxisExtent: 125,
              children: const <SkillsBox>[
                SkillsBox(imgLocation: "assets/img/icons/java-original.svg", tooltip: "Java", certification: "assets/certs/java_basic.png"),
                SkillsBox(imgLocation: "assets/img/icons/dart-original.svg", tooltip: "Dart"),
                SkillsBox(imgLocation: "assets/img/icons/javascript-original.svg", tooltip: "Javascript"),
                SkillsBox(imgLocation: "assets/img/icons/lua-original.svg", tooltip: "Lua"),
                SkillsBox(imgLocation: "assets/img/icons/python-original.svg", tooltip: "Python"),
                SkillsBox(imgLocation: "assets/img/icons/html5-original.svg", tooltip: "HTML"),
                SkillsBox(imgLocation: "assets/img/icons/cplusplus-original.svg", tooltip: "C++"),
                SkillsBox(imgLocation: "assets/img/icons/csharp-original.svg", tooltip: "C#"),
                SkillsBox(imgLocation: "assets/img/icons/typo3-original.svg", tooltip: "TypeScript"),
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("IDEs and Editors",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: queryData.size.width *0.026,
                  color: theme.colorScheme.onPrimary
                )
              ),
            ),
            GridView.extent(
              shrinkWrap: true,
              maxCrossAxisExtent: 125,
              children: const <SkillsBox>[
                SkillsBox(imgLocation: "assets/img/icons/vscode-original.svg", tooltip: "VSCode"),
                SkillsBox(imgLocation: "assets/img/icons/visualstudio-original.svg", tooltip: "Visual Studio"),
                SkillsBox(imgLocation: "assets/img/icons/rstudio-original.svg", tooltip: "RStudio"),
                SkillsBox(imgLocation: "assets/img/icons/intellij-original.svg", tooltip: "Intellij"),
                SkillsBox(imgLocation: "assets/img/icons/eclipse-original.svg", tooltip: "Eclipse"),
                SkillsBox(imgLocation: "assets/img/icons/unity-original.svg", tooltip: "Unity"),
                SkillsBox(imgLocation: "assets/img/icons/clion-original.svg", tooltip: "CLion"),
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Tools and Technology",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: queryData.size.width *0.026,
                  color: theme.colorScheme.onPrimary
                )
              ),
            ),
            GridView.extent(
              shrinkWrap: true,
              maxCrossAxisExtent: 125,
              children: const <SkillsBox>[
                SkillsBox(imgLocation: "assets/img/icons/css3-original.svg", tooltip: "CSS"),
                SkillsBox(imgLocation: "assets/img/icons/firebase-original.svg", tooltip: "Firebase"),
                SkillsBox(imgLocation: "assets/img/icons/flutter-original.svg", tooltip: "Flutter"),
                SkillsBox(imgLocation: "assets/img/icons/git-original.svg", tooltip: "Git"),
                SkillsBox(imgLocation: "assets/img/icons/github-original.svg", tooltip: "Github"),
                SkillsBox(imgLocation: "assets/img/icons/mongodb-original.svg", tooltip: "MongoDB"),
                SkillsBox(imgLocation: "assets/img/icons/mysql-original.svg", tooltip: "MySQL"),
                SkillsBox(imgLocation: "assets/img/icons/nodejs-original.svg", tooltip: "Node.JS"),
                SkillsBox(imgLocation: "assets/img/icons/react-original.svg", tooltip: "React"),
                SkillsBox(imgLocation: "assets/img/icons/markdown-original.svg", tooltip: "Markdown"),
                SkillsBox(imgLocation: "assets/img/icons/cloudflare-original.svg", tooltip: "Cloudflare"),
                SkillsBox(imgLocation: "assets/img/icons/sqlite-original.svg", tooltip: "SQLite"),
                SkillsBox(imgLocation: "assets/img/icons/ssh-original.svg", tooltip: "SSH"),
                SkillsBox(imgLocation: "assets/img/icons/trello-original.svg", tooltip: "Trello"),
                SkillsBox(imgLocation: "assets/img/icons/digitalocean-original.svg", tooltip: "Digital Ocean"),
              ]
            ),
          ]
        ),
      )
    );
  }
}