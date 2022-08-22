import 'package:flutter/material.dart';

Widget customListTile({
  String title,
  String artist,
  String album,
  String coverUrl,
  IconData iconPlaying,
  onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
          child: Row(
            children: [
              // NOTE: Cover
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(coverUrl),
                  ),
                ),
              ),
              SizedBox(width: 10),

              // NOTE: Details of Song
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // NOTE: Title
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),

                    // NOTE: Artist
                    Text(
                      artist,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),

                    // NOTE: Album
                    Text(
                      album,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),

              // NOTE: Song Indicator when Playing
              Icon(
                iconPlaying,
                size: 35,
                color: (iconPlaying == Icons.wifi_tethering)
                    ? Colors.grey
                    : Colors.transparent,
              ),
            ],
          ),
        ),

        // NOTE: Divider
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Divider(),
        ),
      ],
    ),
  );
}
