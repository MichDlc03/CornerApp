import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/responses/requests/torneo_response_dto.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class TorneoProvider extends ChangeNotifier {
  bool isLoading = true;

  final logger = Logger();

  List<TorneoResponseDto>? _torneos; //propiedad privada

  List<TorneoResponseDto>? get torneos => _torneos; // obtener datos del usuario

  Future fetchUsers() async {
    final response = await http
        .get(Uri.parse('http://api.ligasabatinadefutbol.com.mx/api/seasons'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final json = jsonDecode(response.body);
      final List<dynamic> data = json['data'];
      _torneos = data.map((e) => TorneoResponseDto.fromMap(e)).toList();
      isLoading = false;
      notifyListeners();
      //logger.d('Total:  ${json['data']}');
      //logger.d('Respuesta: ${response.body}');
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
