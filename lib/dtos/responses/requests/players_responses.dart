
import 'dart:convert';

PlayersResponseDto playersResponseDtoFromMap(String str) => PlayersResponseDto.fromMap(json.decode(str));

String playersResponseDtoToMap(PlayersResponseDto data) => json.encode(data.toMap());

class PlayersResponseDto {
    PlayersResponseDto({
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
        required this.photos,
        required this.team,
        required this.position,
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
    final List<Photo> photos;
    final Team team;
    final Position position;

    factory PlayersResponseDto.fromMap(Map<String, dynamic> json) => PlayersResponseDto(
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
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromMap(x))),
        team: Team.fromMap(json["team"]),
        position: Position.fromMap(json["position"]),
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
        "photos": List<dynamic>.from(photos.map((x) => x.toMap())),
        "team": team.toMap(),
        "position": position.toMap(),
    };
}

class Photo {
    Photo({
        required this.id,
        required this.phName,
        required this.phFilename,
        required this.phDescr,
    });

    final int id;
    final String phName;
    final String phFilename;
    final String phDescr;

    factory Photo.fromMap(Map<String, dynamic> json) => Photo(
        id: json["id"],
        phName: json["ph_name"],
        phFilename: json["ph_filename"],
        phDescr: json["ph_descr"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "ph_name": phName,
        "ph_filename": phFilename,
        "ph_descr": phDescr,
    };
}

class Position {
    Position({
        required this.pId,
        required this.pName,
        required this.ordering,
    });

    final int pId;
    final String pName;
    final String ordering;

    factory Position.fromMap(Map<String, dynamic> json) => Position(
        pId: json["p_id"],
        pName: json["p_name"],
        ordering: json["ordering"],
    );

    Map<String, dynamic> toMap() => {
        "p_id": pId,
        "p_name": pName,
        "ordering": ordering,
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
