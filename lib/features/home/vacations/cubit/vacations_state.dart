part of 'vacations_cubit.dart';

@immutable
sealed class VacationsState {}

final class VacationsInitial extends VacationsState {}

final class toggleBottomSheet extends VacationsState {}
class LoadingGetCatogreyModel extends VacationsState {}

class ErrorGetCatogreyModel extends VacationsState {}
class ONChangeType extends VacationsState {}
