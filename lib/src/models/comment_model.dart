
/*
 * CommentModel
 * Shows the structure of the model 
 */

import 'dart:convert';

class CommentModel {
    int postId;
    int id;
    String name;
    String email;
    String body;

    CommentModel({
        required this.postId,
        required this.id,
        required this.name,
        required this.email,
        required this.body,
    });

    factory CommentModel.fromRawJson(String str) => CommentModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
    };
}
