import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String name;
  final int year;
  final String imageUrl;
  final String description;
  const ProjectCard(
      {Key? key,
      required this.name,
      required this.year,
      required this.imageUrl,
      required this.description})
      : super(key: key);

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
              Text(
                name,
                style: const TextStyle(fontSize: 18.0),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  year.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 14.0),
                ),
              )
            ],
          ),
          const SizedBox(height: 15.0),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            description,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 14.0,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
