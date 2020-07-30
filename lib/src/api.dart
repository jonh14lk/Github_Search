import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Profile profile;

Future fetch(user) async {
  final res = await http.get('https://api.github.com/users/' + user);
  String st = res.body;
  final jsonResponse = json.decode(st);
  profile = new Profile.fromJson(jsonResponse);
  print(profile);
}

class Profile {
  String login, name, pic, location;
  int following, followers, repos;
  Profile(
      {this.login,
      this.name,
      this.pic,
      this.location,
      this.following,
      this.followers,
      this.repos});
  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
        login: json['login'] as String,
        name: json['name'] as String,
        pic: json['avatar_url'] as String,
        location: json['location'] as String,
        following: json['following'] as int,
        followers: json['followers'] as int,
        repos: json['public_repos'] as int);
  }
}

Future init(String user) async {
  await fetch(user);
}
