import 'package:flutter/material.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget({
    Key? key,
    required this.thumbImage,
    required this.profileImage,
    required this.title,
    required this.channelName,
    required this.visualizations,
    required this.uploadInterval,
  }) : super(key: key);

  final String thumbImage;
  final String profileImage;
  final String title;
  final String channelName;
  final String visualizations;
  final String uploadInterval;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.network(thumbImage),
            Container(
              margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              color: Colors.black,
              child: Text(
                '16:49',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        ListTile(
          leading: Image.network(
            profileImage,
            height: 40.0,
          ),
          title: Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            '$channelName ∙ $visualizations ∙ $uploadInterval',
            style: TextStyle(color: Colors.grey),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 18.0,
            ),
            onPressed: () {},
          ),
          contentPadding: EdgeInsets.only(left: 15.0),
          isThreeLine: true,
        ),
      ],
    );
  }
}
