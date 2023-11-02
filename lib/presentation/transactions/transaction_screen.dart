import 'package:executives/application/transactions/transactions_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/transactions/widgets/app_bar_widget.dart';
import 'package:executives/presentation/transactions/widgets/transaction_details_card.dart';
import 'package:executives/presentation/transactions/widgets/transaction_shimmer.dart';
import 'package:executives/presentation/user_details/user_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    if (context.read<TransactionsBloc>().state.transactions.isEmpty) {
      context.read<TransactionsBloc>().add(
            GetAllTransactions(
              employeeId: context.employeeId,
              branchId: context.branchId,
            ),
          );
    }
    scrollController.addListener(
      () {
        double delta = MediaQuery.of(context).size.height * 0.16;
        if (scrollController.position.atEdge) {
          if (scrollController.position.pixels != 0 &&
              scrollController.position.pixels >= delta) {
            if (context.read<TransactionsBloc>().state.noMoredata == false) {
              context.read<TransactionsBloc>().add(
                    GetAllTransactions(
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
    return ColoredBox(
      color: AppColor.scaffoldColor,
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<TransactionsBloc>().add(
                RefreshTransaction(
                  employeeId: context.employeeId,
                  branchId: context.branchId,
                ),
              );
        },
        child: BlocBuilder<TransactionsBloc, TransactionsState>(
          builder: (context, state) {
            return CustomScrollView(
              controller: scrollController,
              slivers: [
                const SliverAppBar(
                  expandedHeight: 202,
                  toolbarHeight: 10,
                  floating: true,
                  pinned: true,
                  backgroundColor: AppColor.scaffoldColor,
                  surfaceTintColor: AppColor.scaffoldColor,
                  flexibleSpace: FlexibleSpaceBar(
                    background: AppbarWidgets(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 8),
                    child: Opacity(
                      opacity: 0.70,
                      child: Text(
                        state.dailyCollection == null
                            ? 'All'
                            : '${DateFormat.yMMMd().format(state.dateRange!.startDate!)} to ${DateFormat.yMMMd().format(state.dateRange!.endDate!)}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: state.dailyCollection == null ? 14 : 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                if (state.transactions.isNotEmpty)
                  SliverList.builder(
                    itemCount: state.transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = state.transactions[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              child: UserDetailsScreen(
                                userDetails: transaction.userDetails,
                              ),
                              type: PageTransitionType.rightToLeft,
                            ),
                          );
                        },
                        child: TransactionDetailsCard(transaction: transaction),
                      );
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
                                'Nothing to show',
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
