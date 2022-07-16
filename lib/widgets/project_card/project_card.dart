import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 15),
            color: Colors.black.withOpacity(.15),
            blurRadius: 15,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'My Project',
                style: TextStyle(fontSize: 18.0),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(5.0),
                child: const Text(
                  '2022',
                  style: TextStyle(color: Colors.white, fontSize: 14.0),
                ),
              )
            ],
          ),
          const SizedBox(height: 15.0),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandae consequuntur voluptatum laborum
            numquam blanditiis harum""",
            maxLines: 3,
            style: TextStyle(
              fontSize: 14.0,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
