import 'package:flutter/material.dart';
import 'package:portofolio/responsive.dart';
import 'package:portofolio/widgets/header/header.dart';
import 'package:share_plus/share_plus.dart';

import '../../example/projects.dart';
import '../../widgets/project_card/project_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.share),
        onPressed: () {
          Share.share(
              'Check out my portfolio https://my-portofolio-91580.web.app/#/');
        },
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(username: 'Seb'),
                  const SizedBox(height: 25),
                  const Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Responsive(
                    desktop: desktopBuilder(),
                    tablet: mobileTabletBuilder(450),
                    mobile: mobileTabletBuilder(350),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget mobileTabletBuilder(double height) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(project: projects[index]);
        },
      ),
    );
  }

  Widget desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: projects.length,
      itemBuilder: (BuildContext context, int index) {
        return ProjectCard(project: projects[index]);
      },
    );
  }
}
