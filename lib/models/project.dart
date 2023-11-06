// To parse this JSON data, do
//
//     final project = projectFromJson(jsonString);

import 'dart:convert';

Project projectFromJson(String str) => Project.fromJson(json.decode(str));

String projectToJson(Project data) => json.encode(data.toJson());

class Project {
    int version;
    String name;
    List<String> languages;
    String primaryLanguages;
    String apiKey;
    List<ProjectIten> projectItens;

    Project({
        required this.version,
        required this.name,
        required this.languages,
        required this.primaryLanguages,
        required this.apiKey,
        required this.projectItens,
    });

    factory Project.fromJson(Map<String, dynamic> json) => Project(
        version: json["version"],
        name: json["name"],
        languages: List<String>.from(json["languages"].map((x) => x)),
        primaryLanguages: json["primary_languages"],
        apiKey: json["apiKey"],
        projectItens: List<ProjectIten>.from(json["projectItens"].map((x) => ProjectIten.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "version": version,
        "name": name,
        "languages": List<dynamic>.from(languages.map((x) => x)),
        "primary_languages": primaryLanguages,
        "apiKey": apiKey,
        "projectItens": List<dynamic>.from(projectItens.map((x) => x.toJson())),
    };
}

class ProjectIten {
    String original;
    List<String> translate;

    ProjectIten({
        required this.original,
        required this.translate,
    });

    factory ProjectIten.fromJson(Map<String, dynamic> json) => ProjectIten(
        original: json["original"],
        translate: List<String>.from(json["translate"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "original": original,
        "translate": List<dynamic>.from(translate.map((x) => x)),
    };
}
