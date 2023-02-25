import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:liga_corner_app/dtos/responses/requests/partidos_response_dto.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class PartidosProvider extends ChangeNotifier {
  bool isLoading = true;

  final logger = Logger();

  List<PartidosResponseDto>? _partidos; //propiedad privada

  List<PartidosResponseDto>? get partidos => _partidos; // obtener datos del usuario

  Future fetchUsers() async {
    final response = await http
        .get(Uri.parse('http://api.ligasabatinadefutbol.com.mx/api/matches'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final json = jsonDecode(response.body);
      final List<dynamic> data = json['data'];
      _partidos = data.map((e) => PartidosResponseDto.fromMap(e)).toList();
      isLoading = false;
      notifyListeners();
    } else {
      throw Exception('Failed to load album');
    }
  }
}
