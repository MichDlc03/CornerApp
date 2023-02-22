// To parse this JSON data, do
//
//     final torneoResponseDto = torneoResponseDtoFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

TorneoResponseDto torneoResponseDtoFromMap(String str) => TorneoResponseDto.fromMap(json.decode(str));

String torneoResponseDtoToMap(TorneoResponseDto data) => json.encode(data.toMap());

class TorneoResponseDto {
    TorneoResponseDto({
        required this.sId,
        required this.sName,
        required this.sDescr,
        required this.sRounds,
        required this.tId,
        required this.published,
        required this.sWinPoint,
        required this.sLostPoint,
        required this.sEnblExtra,
        required this.sExtraWin,
        required this.sExtraLost,
        required this.sDrawPoint,
        required this.sGroups,
        required this.sWinAway,
        required this.sDrawAway,
        required this.sLostAway,
        required this.logo,
        required this.teams,
        required this.tournament,
    });

    final int sId;
    final String sName;
    final String sDescr;
    final String sRounds;
    final String tId;
    final String published;
    final String sWinPoint;
    final String sLostPoint;
    final String sEnblExtra;
    final String sExtraWin;
    final String sExtraLost;
    final String sDrawPoint;
    final String sGroups;
    final String sWinAway;
    final String sDrawAway;
    final String sLostAway;
    final dynamic logo;
    final List<Team> teams;
    final Tournament tournament;

    factory TorneoResponseDto.fromMap(Map<String, dynamic> json) => TorneoResponseDto(
        sId: json["s_id"],
        sName: json["s_name"],
        sDescr: json["s_descr"],
        sRounds: json["s_rounds"],
        tId: json["t_id"],
        published: json["published"],
        sWinPoint: json["s_win_point"],
        sLostPoint: json["s_lost_point"],
        sEnblExtra: json["s_enbl_extra"],
        sExtraWin: json["s_extra_win"],
        sExtraLost: json["s_extra_lost"],
        sDrawPoint: json["s_draw_point"],
        sGroups: json["s_groups"],
        sWinAway: json["s_win_away"],
        sDrawAway: json["s_draw_away"],
        sLostAway: json["s_lost_away"],
        logo: json["logo"],
        teams: List<Team>.from(json["teams"].map((x) => Team.fromMap(x))),
        tournament: Tournament.fromMap(json["tournament"]),
    );

    Map<String, dynamic> toMap() => {
        "s_id": sId,
        "s_name": sName,
        "s_descr": sDescr,
        "s_rounds": sRounds,
        "t_id": tId,
        "published": published,
        "s_win_point": sWinPoint,
        "s_lost_point": sLostPoint,
        "s_enbl_extra": sEnblExtra,
        "s_extra_win": sExtraWin,
        "s_extra_lost": sExtraLost,
        "s_draw_point": sDrawPoint,
        "s_groups": sGroups,
        "s_win_away": sWinAway,
        "s_draw_away": sDrawAway,
        "s_lost_away": sLostAway,
        "logo": logo,
        "teams": List<dynamic>.from(teams.map((x) => x.toMap())),
        "tournament": tournament.toMap(),
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

class Tournament {
    Tournament({
        required this.id,
        required this.name,
        required this.descr,
        required this.published,
        required this.logo,
    });

    final String id;
    final String name;
    final String descr;
    final String published;
    final String logo;

    factory Tournament.fromMap(Map<String, dynamic> json) => Tournament(
        id: json["id"],
        name: json["name"],
        descr: json["descr"],
        published: json["published"],
        logo: json["logo"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "descr": descr,
        "published": published,
        "logo": logo,
    };
}
