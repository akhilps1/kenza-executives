import 'package:executives/presentation/account/account_screen.dart';
import 'package:executives/presentation/transactions/transaction_screen.dart';
import 'package:executives/presentation/users/user_screen.dart';
import 'package:flutter/material.dart';

const kSizedBoxH10 = SizedBox(
  height: 10,
);

const pages = [
  UsersScreen(),
  TransactionScreen(),
  AccountScreen(),
];

const pageName = ['KenzaGold', 'Transaction History', 'Profile'];
