import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:primevideo/data/models/cast_list_model.dart';
import 'package:primevideo/data/models/show_list_model.dart';
import 'package:primevideo/utils/constants/strings.dart';
import 'package:http/http.dart' as http;

abstract class ShowRepo {
  
  Future<Either<String, List<ShowListModel>>> get getShowList;

  Future<Either<String, ShowListModel>> getShowDetails ({required String? id});

  Future<Either<String, List<CastListModel>>> getCastList ({required String? id});

  Future<Either<String, Person>> getCastDetails({required String? id});  
}

@LazySingleton(as: ShowRepo)
class ShowRepoImpl implements ShowRepo {
  @override
  Future<Either<String, Person>> getCastDetails({required String? id}) async {
    try {
      final url = Uri.https(domain,"$castDetailsEndpoint/$id");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        log("Cast Details : ${response.body}");
        final cast = Person.fromJson(jsonDecode(response.body));
        return Right(cast);
      }else{
        return Left("Error Code : ${response.statusCode}");
      }
    } catch (e) {
      return Left(e.toString()); 
    }
  }

  @override
  Future<Either<String, List<CastListModel>>> getCastList({required String? id}) async{
    try {
      final url = Uri.https(domain,"$showEndpoint/$id/cast");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final cast = await compute(castListModelFromJson,response.body);
        return Right(cast);
      }else{
        return Left("Error Code : ${response.statusCode}");
      }
    } catch (e) {
      return Left(e.toString()); 
    }
  }

  @override
  Future<Either<String, ShowListModel>> getShowDetails ({required String? id}) async{
    try {
      final url = Uri.https(domain,"$showEndpoint/$id");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final show = ShowListModel.fromJson(jsonDecode(response.body));
        return Right(show);
      }else{
        return Left("Error Code : ${response.statusCode}");
      }
    } catch (e) {
      return Left(e.toString()); 
    }
  }

  @override
  Future<Either<String, List<ShowListModel>>> get getShowList async {
    try {
      final url = Uri.https(domain,showEndpoint);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final shows = await compute(showListModelFromJson,response.body);
        return Right(shows);
      }else{
        return Left("Error Code : ${response.statusCode}");
      }
    } catch (e) {
      return Left(e.toString()); 
    }
  }

}