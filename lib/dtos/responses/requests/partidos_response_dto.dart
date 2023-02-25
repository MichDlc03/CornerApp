
import 'package:meta/meta.dart';
import 'dart:convert';

PartidosResponseDto partidosResponseDtoFromJson(String str) =>
    PartidosResponseDto.fromJson(json.decode(str));

String partidosResponseDtoToJson(PartidosResponseDto data) => json.encode(data.toJson());

class PartidosResponseDto {
  PartidosResponseDto({
    required this.id,
    required this.mId,
    required this.team1Id,
    required this.team2Id,
    required this.score1,
    required this.score2,
    required this.matchDescr,
    required this.published,
    required this.isExtra,
    required this.mPlayed,
    required this.mDate,
    required this.mTime,
    required this.mLocation,
    required this.refereeId,
    required this.bonus1,
    required this.bonus2,
    required this.team1,
    required this.team2,
  });

  final int id;
  final String mId;
  final String team1Id;
  final String team2Id;
  final String score1;
  final String score2;
  final String matchDescr;
  final String published;
  final String isExtra;
  final String mPlayed;
  final DateTime mDate;
  final String mTime;
  final String mLocation;
  final String refereeId;
  final String bonus1;
  final String bonus2;
  final Team team1;
  final Team team2;

  factory PartidosResponseDto.fromMap(Map<String, dynamic> json) => PartidosResponseDto(
        id: json["id"],
        mId: json["m_id"],
        team1Id: json["team1_id"],
        team2Id: json["team2_id"],
        score1: json["score1"],
        score2: json["score2"],
        matchDescr: json["match_descr"],
        published: json["published"],
        isExtra: json["is_extra"],
        mPlayed: json["m_played"],
        mDate: DateTime.parse(json["m_date"]),
        mTime: json["m_time"],
        mLocation: json["m_location"],
        refereeId: json["refereeId"],
        bonus1: json["bonus1"],
        bonus2: json["bonus2"],
        team1: Team.fromJson(json["team1"]),
        team2: Team.fromJson(json["team2"]),
      );

  factory PartidosResponseDto.fromJson(Map<String, dynamic> json) =>
      PartidosResponseDto(
        id: json["id"],
        mId: json["m_id"],
        team1Id: json["team1_id"],
        team2Id: json["team2_id"],
        score1: json["score1"],
        score2: json["score2"],
        matchDescr: json["match_descr"],
        published: json["published"],
        isExtra: json["is_extra"],
        mPlayed: json["m_played"],
        mDate: DateTime.parse(json["m_date"]),
        mTime: json["m_time"],
        mLocation: json["m_location"],
        refereeId: json["refereeId"],
        bonus1: json["bonus1"],
        bonus2: json["bonus2"],
        team1: Team.fromJson(json["team1"]),
        team2: Team.fromJson(json["team2"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "m_id": mId,
        "team1_id": team1Id,
        "team2_id": team2Id,
        "score1": score1,
        "score2": score2,
        "match_descr": matchDescr,
        "published": published,
        "is_extra": isExtra,
        "m_played": mPlayed,
        "m_date":
            "${mDate.year.toString().padLeft(4, '0')}-${mDate.month.toString().padLeft(2, '0')}-${mDate.day.toString().padLeft(2, '0')}",
        "m_time": mTime,
        "m_location": mLocation,
        "refereeId": refereeId,
        "bonus1": bonus1,
        "bonus2": bonus2,
        "team1": team1.toJson(),
        "team2": team2.toJson(),
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

  factory Team.fromMap(Map<String, dynamic> json) =>
      Team(
        id: json["id"],
        tName: json["t_name"],
        tDescr: json["t_descr"],
        tYteam: json["t_yteam"],
        defImg: json["def_img"],
        tEmblem: json["t_emblem"],
        tCity: json["t_city"],
      );

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        tName: json["t_name"],
        tDescr: json["t_descr"],
        tYteam: json["t_yteam"],
        defImg: json["def_img"],
        tEmblem: json["t_emblem"],
        tCity: json["t_city"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "t_name": tName,
        "t_descr": tDescr,
        "t_yteam": tYteam,
        "def_img": defImg,
        "t_emblem": tEmblem,
        "t_city": tCity,
      };
}
