import 'dart:developer';

import 'package:executives/application/transactions/transactions_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/transactions/widgets/transaction_details_card.dart';
import 'package:executives/presentation/transactions/widgets/transaction_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionSearchScreen extends StatefulWidget {
  const TransactionSearchScreen({super.key});

  @override
  State<TransactionSearchScreen> createState() =>
      _TransactionSearchScreenState();
}

class _TransactionSearchScreenState extends State<TransactionSearchScreen> {
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController.addListener(
      () {
        double delta = MediaQuery.of(context).size.height * 0.16;
        if (scrollController.position.atEdge) {
          if (scrollController.position.pixels != 0 &&
              scrollController.position.pixels >= delta) {
            if (context.read<TransactionsBloc>().state.noMoredata == false) {
              context.read<TransactionsBloc>().add(
                    SearchClicked(
                      employeeId: context.employeeId,
                      branchId: context.branchId,
                    ),
                  );
            }
          }
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.read<TransactionsBloc>().add(const ClearSearch());
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: AppColor.scaffoldColor,
        appBar: AppBar(
          backgroundColor: AppColor.bgWhiteColor,
          surfaceTintColor: AppColor.bgWhiteColor,
          iconTheme: const IconThemeData(
            color: Colors.black87,
          ),
          titleSpacing: 0,
          title: TextFormField(
            style: const TextStyle(color: Colors.black),
            cursorColor: AppColor.primaryColor,
            textInputAction: TextInputAction.search,
            onFieldSubmitted: (value) {
              context.read<TransactionsBloc>().add(
                    SearchClicked(
                      employeeId: context.employeeId,
                      branchId: context.branchId,
                    ),
                  );
            },
            decoration: InputDecoration(
              hintText: 'Search by phone number...',
              hintStyle: context.theme.titleMedium!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
            ),
            onChanged: (value) {
              context.read<TransactionsBloc>().add(const ClearSearch());
              context
                  .read<TransactionsBloc>()
                  .add(SearchTearmChanged(searchTearm: value));
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                context.read<TransactionsBloc>().add(
                      SearchClicked(
                        employeeId: context.employeeId,
                        branchId: context.branchId,
                      ),
                    );
              },
              icon: const ImageIcon(
                AssetImage(MediaRes.search),
                size: 20,
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
          ],
          elevation: 5,
        ),
        body: BlocBuilder<TransactionsBloc, TransactionsState>(
          builder: (context, state) {
            return CustomScrollView(
              controller: scrollController,
              slivers: [
                if (state.searchItems.isNotEmpty)
                  SliverList.builder(
                    itemCount: state.searchItems.length,
                    itemBuilder: (context, index) {
                      final transaction = state.searchItems[index];
                      return TransactionDetailsCard(transaction: transaction);
                    },
                  )
                else
                  SliverFillRemaining(
                    child: state.isLoading == true
                        ? const TranscatinShimmer()
                        : const Center(
                            child: Opacity(
                              opacity: 0.50,
                              child: Text(
                                'Search Somthing',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                  ),
                if (state.isLoading && state.transactions.length >= 15)
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: CustomCircularProgress(
                            color: AppColor.primaryColor),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
