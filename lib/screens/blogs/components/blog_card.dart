import 'package:flutter/material.dart';
import 'package:online_course_app/constants.dart';

class BlogCard extends StatelessWidget {
  final String image, title, content, date, fullArticle;
  const BlogCard({
    super.key,
    required this.content,
    required this.date,
    required this.image,
    required this.title,
    required this.fullArticle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      margin: const EdgeInsets.only(bottom: 24),
      width: MediaQuery.of(context).size.width,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(6),
            bottomLeft: Radius.circular(6),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Hero(
                  tag: 'image-$image',
                  child: Image.asset(
                    image,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  )
                  /* CachedNetworkImage(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  imageUrl: image,
                  placeholder: (context, url) => Image(
                    image: const AssetImage('images/dotted-placeholder.jpg'),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ), */
                  ),
            ),
            GestureDetector(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      title,
                      style: bigText.copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(content, maxLines: 2, style: smallText),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(date, style: description)
                  ],
                ),
              ),
              /* onTap: () {
                Navigator.push(
                  context,
                  Transition(
                    child: ArticleScreen(articleUrl: fullArticle),
                    transitionEffect: TransitionEffect.BOTTOM_TO_TOP,
                  ),
                );
              }, */
            ),
          ],
        ),
      ),
    );
  }
}
