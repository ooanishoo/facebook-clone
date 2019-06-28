import 'package:flutter/material.dart';
import 'post.dart';

class User{
  String firstname;
  String lastname;
  Image profilePicture;
  bool hasStory;
  List<User> friends;
  List<Post> savedPosts;

  User(
    this.firstname,
    this.lastname,
    this.profilePicture,
    this.hasStory,
    this.friends,
    this.savedPosts
  );

}