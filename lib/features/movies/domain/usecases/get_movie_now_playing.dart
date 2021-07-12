import 'package:dartz/dartz.dart';
import 'package:filmeira/core/error/failure.dart';
import 'package:filmeira/core/usecase/usecase.dart';
import 'package:filmeira/features/movies/domain/entities/movie_entity.dart';
import 'package:filmeira/features/movies/domain/repositories/movie_repository.dart';

class GetMovieNowPlaying implements UseCase<MovieEntity, NoParams> {
  final MovieRepositoryAbs repository;

  GetMovieNowPlaying(this.repository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call(NoParams params) async {
    return await repository.getListMovieNowPlayingRemote();
  }
}
