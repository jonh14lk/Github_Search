import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

List<Repo> repos = [];
Profile profile;
bool find;

List<Repo> parseRepos(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return repos = parsed.map<Repo>((json) => Repo.fromJson(json)).toList();
}

Future<List<Repo>> fetchRepos(String url) async {
  final res = await http.get(url);
  String st = res.body;
  return compute(parseRepos, st);
}

Future fetchUser(user) async {
  final res = await http.get('https://api.github.com/users/' + user);
  String st = res.body;
  final jsonResponse = json.decode(st);
  profile = new Profile.fromJson(jsonResponse);
  if (profile.name == null) {
    find = false;
  } else {
    await fetchRepos(profile.reposUrl);
  }
}

class Repo {
  String name, url;
  Repo({this.name, this.url});
  factory Repo.fromJson(Map<String, dynamic> json) {
    Repo ret = Repo(
      name: json['name'] as String,
      url: '',
    );
    ret.url = 'https://github.com/' + profile.login + '/' + ret.name;
    return ret;
  }
}

class Profile {
  String login, name, pic, location, reposUrl;
  int following, followers, repos;
  Profile({
    this.login,
    this.name,
    this.pic,
    this.location,
    this.reposUrl,
    this.following,
    this.followers,
    this.repos,
  });
  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      login: json['login'] as String,
      name: json['name'] as String,
      pic: json['avatar_url'] as String,
      location: json['location'] as String,
      reposUrl: json['repos_url'] as String,
      following: json['following'] as int,
      followers: json['followers'] as int,
      repos: json['public_repos'] as int,
    );
  }
}

Future init(String user) async {
  find = true;
  await fetchUser(user);
}
