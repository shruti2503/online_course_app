class Course {
  final String title, author, authorimg, thmbnail, intro, duration;
  final double courseRating;
  final lectures;

  Course({
    required this.lectures,
    required this.courseRating,
    required this.title,
    this.author = 'Shaban Sir',
    this.duration = "8 hours",
    this.authorimg =
        "https://unsplash.com/photos/5EIW3DDX6dw/download?force=true&w=640",
    this.intro = "",
    this.thmbnail = "assets/Backgrounds/img.jpg",
  });
}

final List<Course> courses = [
  Course(
    title: "Mathematics 1",
    courseRating: 4.5,
    lectures: [
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
    ],
  ),
  Course(
    title: "Mathematics 2",
    courseRating: 5,
    lectures: [
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
    ],
  ),
  Course(
    title: "Mathematics 3",
    courseRating: 5,
    lectures: [
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
    ],
  ),
  Course(
    title: "Mathematics 4",
    courseRating: 5,
    lectures: [
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
      "https://youtu.be/0F-nudTm5EU",
    ],
  ),
];
