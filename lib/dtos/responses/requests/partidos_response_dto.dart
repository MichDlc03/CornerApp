// To parse this JSON data, do
//
//     final torneoResponseDto = torneoResponseDtoFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PartidosResponseDto partidosResponseDtoFromMap(String str) =>
    PartidosResponseDto.fromMap(json.decode(str));

String partidosResponseDtoToMap(PartidosResponseDto data) =>
    json.encode(data.toMap());

class PartidosResponseDto {
  PartidosResponseDto({
    required this.id,
    required this.mid,
    required this.team1id,
    required this.team2id,
    required this.score1,
    required this.score2,
    required this.matchdescr,
    required this.published,
    required this.isextra,
    required this.mplayed,
    required this.mdate,
    required this.mtime,
    required this.mlocation,
    required this.refereeId,
    required this.bonus1,
    required this.bonus2,
    required this.logo,
    required this.teams,
  });

  final int id;
  final String mid;
  final String team1id;
  final String team2id;
  final String score1;
  final String score2;
  final String matchdescr;
  final String published;
  final String isextra;
  final String mplayed;
  final String mdate;
  final String mtime;
  final String mlocation;
  final String refereeId;
  final String bonus1;
  final String bonus2;
  final dynamic logo;
  final List<Team> teams;

  factory PartidosResponseDto.fromMap(Map<String, dynamic> json) =>
      PartidosResponseDto(
        id: json["id"],
        mid: json["m_id"],
        team1id: json["team1_id"],
        team2id: json["team2_id"],
        score1: json["score1"],
        score2: json["score2"],
        matchdescr: json["match_descr"],
        published: json["published"],
        isextra: json["is_extra"],
        mplayed: json["m_played"],
        mdate: json["m_date"],
        mtime: json["m_time"],
        mlocation: json["m_location"],
        refereeId: json["refereeId"],
        bonus1: json["bonus1"],
        bonus2: json["bonus2"],
        logo: json["logo"],
        teams: List<Team>.from(json["teams"].map((x) => Team.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "m_id": mid,
        "team1_id": team1id,
        "team2_id": team2id,
        "score1": score1,
        "score2": score2,
        "match_descr": matchdescr,
        "published": published,
        "is_extra": isextra,
        "m_played": mplayed,
        "m_date": mdate,
        "m_time": mtime,
        "m_location": mlocation,
        "refereeId": refereeId,
        "bonus1": bonus1,
        "bonus2": bonus2,
        "logo": logo,
        "teams": List<dynamic>.from(teams.map((x) => x.toMap())),
      };
}

class Team {
  Team({
    required this.id,
    required this.tName,
    required this.tDescr,
    required this.tYteam,
    required this.defImg,
    required this.tEmblem,
    required this.tCity,
  });

  final int id;
  final String tName;
  final String tDescr;
  final String tYteam;
  final String defImg;
  final String tEmblem;
  final String tCity;

  factory Team.fromMap(Map<String, dynamic> json) => Team(
        id: json["id"],
        tName: json["t_name"],
        tDescr: json["t_descr"],
        tYteam: json["t_yteam"],
        defImg: json["def_img"],
        tEmblem: json["t_emblem"],
        tCity: json["t_city"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "t_name": tName,
        "t_descr": tDescr,
        "t_yteam": tYteam,
        "def_img": defImg,
        "t_emblem": tEmblem,
        "t_city": tCity,
      };
}