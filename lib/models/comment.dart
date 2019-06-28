import 'like.dart';
import 'user.dart';

class Comment{
  String comment;
  User user;
  DateTime commentedDate;
  bool isLiked;
  List<Like> likes;

  Comment(
    this.comment,
    this.user,
    this.commentedDate,
    this.isLiked,
    this.likes
  );
}
