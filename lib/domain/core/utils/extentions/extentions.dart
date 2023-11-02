import 'package:executives/application/auth/auth_bloc.dart';
import 'package:executives/application/transactions/employee_detais/get_emloyee_details_cubit.dart';
import 'package:executives/domain/auth/models/executive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BuildContextSettig on BuildContext {
  Size get getsize => MediaQuery.of(this).size;
  TextTheme get theme => Theme.of(this).textTheme;
  String get branchId =>
      BlocProvider.of<AuthBloc>(this).state.executive!.branchId;
  String get employeeId => BlocProvider.of<AuthBloc>(this).state.executive!.id!;
  Executive get executive =>
      BlocProvider.of<GetEmloyeeDetailsCubit>(this, listen: true)
          .state
          .executive!;
}

extension StringCapitalization on String {
  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return this[0].toUpperCase() + substring(1);
  }
}
