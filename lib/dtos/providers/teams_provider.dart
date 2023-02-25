import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:liga_corner_app/dtos/responses/requests/players_responses.dart';
import 'package:liga_corner_app/dtos/responses/requests/teams_responses_dto.dart';
import 'package:logger/logger.dart';

class TeamsProvider extends ChangeNotifier {
  bool isLoanding = true;
  final logger = Logger();
  List<TeamsResponsDto>? _teams;
  List<TeamsResponsDto>? get teams => _teams;
  List<PlayersResponseDto>? _players;
  List<PlayersResponseDto>? get players => _players;

  Future fetchTeams() async {
    final response = await http.get(Uri.parse(
        'https://api.ligasabatinadefutbol.com.mx/api/teams'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      //return Album.fromJson(jsonDecode(response.body));
      final json = jsonDecode(response.body);
      final List<dynamic> data = json['data'];
      _teams = data.map((e) => TeamsResponsDto.fromMap(e)).toList();
      logger.d(data);
      final List<dynamic> datas = json['data'];
      _players = datas.map((e) => PlayersResponseDto.fromMap(e)).toList();
      logger.d(datas);
      isLoanding = false;
      notifyListeners();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Users');
    }
  }
}
