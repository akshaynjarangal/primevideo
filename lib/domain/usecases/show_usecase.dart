import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:primevideo/data/models/cast_list_model.dart';
import 'package:primevideo/data/models/show_list_model.dart';
import 'package:primevideo/data/repositories/show_repo.dart';

@injectable
class ShowUseCase {
  final ShowRepo _showRepository;
  ShowUseCase({required ShowRepo showRepository}) : _showRepository = showRepository;

  Future<Either<String, List<ShowListModel>>> get getShowList async {
    return await _showRepository.getShowList;
  }

  Future<Either<String, ShowListModel>> getShowDetails({required String? id}) async {
    return await _showRepository.getShowDetails(id: id);
  }

  Future<Either<String, List<CastListModel>>> getCastList({required String? id}) async {
    return await _showRepository.getCastList(id: id);
  }

  Future<Either<String, Person>> getCastDetails({required String? id}) async {
    return await _showRepository.getCastDetails(id: id);
  }
}
