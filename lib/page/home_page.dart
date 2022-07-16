import 'package:flutter/material.dart';
import 'package:portofolio/widgets/header/header.dart';
import 'package:portofolio/widgets/project_card/project_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Header(username: 'Seb'),
                SizedBox(height: 25),
                Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ProjectCard(
                  name: 'My Project',
                  year: 2022,
                  imageUrl:
                      'https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                  description:
                      """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandae consequuntur voluptatum laborum
            numquam blanditiis harum""",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
