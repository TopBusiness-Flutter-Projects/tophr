part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class ChangingTabs extends HomeState {}
class AccountTabsChanging extends HomeState {}
class changingButton extends HomeState {}
