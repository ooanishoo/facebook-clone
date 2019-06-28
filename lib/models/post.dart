import 'package:flutter/material.dart';
import 'User.dart';
import 'comment.dart';
import 'like.dart';

class Post{
  String description;
  Image image;
  User user;
  List<Like> likes;
  List<Comment> comments;
  DateTime created;
  bool isLiked;
  bool isSaved;

  Post(
    this.description,
    this.image,
    this.user,
    this.likes,
    this.comments,
    this.created,
    this.isLiked,
    this.isSaved
  );
}
