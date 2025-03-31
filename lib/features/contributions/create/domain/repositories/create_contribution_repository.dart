import 'package:aprovacao/core/arch/failures/failures.dart';
import 'package:aprovacao/features/contributions/list/domain/entities/contributions_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CreateContributionRepository {
  Future<Either<Failure, ContributionEntity>> createContribution({
    required ContributionEntity contribution,
  });
}
