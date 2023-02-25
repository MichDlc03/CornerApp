// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TeamsResponsDto welcomeFromMap(String str) => TeamsResponsDto.fromMap(json.decode(str));

String welcomeToMap(TeamsResponsDto data) => json.encode(data.toMap());

class TeamsResponsDto {
    TeamsResponsDto({
        required this.id,
        required this.tName,
        required this.tDescr,
        required this.tYteam,
        required this.defImg,
        required this.tEmblem,
        required this.tCity,
        required this.players,
    });

    final int id;
    final String tName;
    final String tDescr;
    final String tYteam;
    final String defImg;
    final String tEmblem;
    final String tCity;
    final List<Player> players;

    factory TeamsResponsDto.fromMap(Map<String, dynamic> json) => TeamsResponsDto(
        id: json["id"],
        tName: json["t_name"],
        tDescr: json["t_descr"],
        tYteam: json["t_yteam"],
        defImg: json["def_img"],
        tEmblem: json["t_emblem"],
        tCity: json["t_city"],
        players: List<Player>.from(json["players"].map((x) => Player.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "t_name": tName,
        "t_descr": tDescr,
        "t_yteam": tYteam,
        "def_img": defImg,
        "t_emblem": tEmblem,
        "t_city": tCity,
        "players": List<dynamic>.from(players.map((x) => x.toMap())),
    };
}

class Player {
    Player({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.nick,
        required this.about,
        required this.positionId,
        required this.defImg,
        required this.teamId,
        required this.playerNumber,
        required this.curp,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
    });

    final int id;
    final String firstName;
    final String lastName;
    final String nick;
    final String about;
    final String positionId;
    final String defImg;
    final String teamId;
    final String playerNumber;
    final dynamic curp;
    final String status;
    final DateTime createdAt;
    final DateTime updatedAt;

    factory Player.fromMap(Map<String, dynamic> json) => Player(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        nick: json["nick"],
        about: json["about"],
        positionId: json["position_id"],
        defImg: json["def_img"],
        teamId: json["team_id"],
        playerNumber: json["player_number"],
        curp: json["curp"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "nick": nick,
        "about": about,
        "position_id": positionId,
        "def_img": defImg,
        "team_id": teamId,
        "player_number": playerNumber,
        "curp": curp,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
