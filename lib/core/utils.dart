import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

String getNameFromEmail(String email) {
  //SuryanshJaiswal@gmail.com
  // LIST  = [SuryanshJaiswal, gmail.com]
  return email.split("@")[0];
}
