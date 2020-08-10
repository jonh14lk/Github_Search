import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

List<Repo> repos = [];
Profile profile;
int find;
String username;

List<Repo> parseRepos(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Repo>((json) => Repo.fromJson(json)).toList();
}

Future<List<Repo>> fetchRepos(String url) async {
  final res = await http.get(url);
  String st = res.body;
  return repos = parseRepos(st);
}

Future fetchUser(user) async {
  final res = await http.get('https://api.github.com/users/' + user);
  String st = res.body;
  final jsonResponse = json.decode(st);
  if (jsonResponse['message'] == 'Not Found') {
    // user not found
    find = 0;
  } else if (jsonResponse['message'] == null) {
    // user found successfully
    find = 1;
    profile = new Profile.fromJson(jsonResponse);
    await fetchRepos(profile.reposUrl);
    complete();
  } else {
    // API rate limit exceeded
    find = 2;
  }
}

class Repo {
  String name, url;
  Repo({this.name, this.url});
  factory Repo.fromJson(Map<String, dynamic> json) {
    Repo ret = Repo(
      name: json['name'] as String,
      url: 'https://github.com/',
    );
    ret.url = ret.url + username + '/' + ret.name;
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
    Profile ret = Profile(
      login: json['login'] as String,
      name: json['name'] as String,
      pic: json['avatar_url'] as String,
      location: json['location'] as String,
      reposUrl: json['repos_url'] as String,
      following: json['following'] as int,
      followers: json['followers'] as int,
      repos: json['public_repos'] as int,
    );
    ret.reposUrl = ret.reposUrl + '?sort=updated';
    return ret;
  }
}

void complete() {
  // complete the data that is equal to "null, if exists"
  if (profile.name == null) profile.name = "Unavailable";
  if (profile.location == null) profile.location = "Unavailable";
  while (repos.length < 3) {
    // treating the case of the user having less than 3 repositories
    repos.add(Repo(
      name: 'Unavailable',
      url: 'https://github.com',
    ));
  }
}

Future init(String user) async {
  username = user;
  await fetchUser(user);
}
