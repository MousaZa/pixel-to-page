import 'package:flutter/material.dart';
import 'package:pixel_to_page/fontstyles.dart';
import 'package:pixel_to_page/posts.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          // Image section
          Container(
            width: 180,
            height: double.infinity,
            child: Stack(
              children: [
                Image.network(
                  randomImages[post.hashCode % randomImages.length],
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[200],
                      child: const Icon(
                        Icons.broken_image,
                        size: 48,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
                // Gradient overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.4),
                        ],
                      ),
                    ),
                  ),
                ),
                // Category badge
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'İŞ',
                      style: AppFontStyles.bold.copyWith(
                        fontSize: 11,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Content section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    post.title,
                    style: AppFontStyles.bold.copyWith(
                      fontSize: 18,
                      height: 1.3,
                      color: Colors.grey[900],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 32,
                    width: 200,
                    child: Divider(
                    ),
                  ),
                  // Description
                  SizedBox(
                    width: 360,
                    child: Text(
                      post.longDescription,
                      style: AppFontStyles.regular.copyWith(
                        fontSize: 13,
                        color: Colors.grey[600],
                        height: 1.4,
                      ),
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}