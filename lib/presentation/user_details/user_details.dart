import 'package:executives/application/core/constants.dart';
import 'package:executives/application/user_details/user_details_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/core/widgets/custom_textfield.dart';
import 'package:executives/presentation/user_details/widgets/transaction_details_shimmer.dart';
import 'package:executives/presentation/user_details/widgets/transaction_detals.dart';
import 'package:executives/presentation/user_details/widgets/user_details_card.dart';
import 'package:executives/presentation/user_details/widgets/user_details_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key, required this.userDetails});
  final UserDetails userDetails;

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    context.read<UserDetailsBloc>()
      ..add(
        GetAllAccounts(
          userId: widget.userDetails.id!,
          branchId: widget.userDetails.branchId,
        ),
      )
      ..add(
        GetMonthlyLimit(widget.userDetails),
      );
    _animationController = BottomSheet.createAnimationController(this);

    _animationController.duration = const Duration(milliseconds: 500);
    _animationController.reverseDuration = const Duration(milliseconds: 400);
    _animationController.drive(CurveTween(curve: Curves.easeIn));

    scrollController.addListener(
      () {
        double delta = MediaQuery.of(context).size.height * 0.16;
        if (scrollController.position.atEdge) {
          if (scrollController.position.pixels != 0 &&
              scrollController.position.pixels >= delta) {
            if (context.read<UserDetailsBloc>().state.noMoredata == false) {
              context.read<UserDetailsBloc>().add(
                    GetAllTransactions(
                      userId: widget.userDetails.id!,
                      branchId: widget.userDetails.branchId,
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
        context.read<UserDetailsBloc>().add(const ClearUserDetailsData());
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: AppColor.scaffoldColor,
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          titleSpacing: 0,
          iconTheme: const IconThemeData(color: AppColor.bgWhiteColor),
          title: Text(
            widget.userDetails.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: BlocBuilder<UserDetailsBloc, UserDetailsState>(
          builder: (context, state) {
            return CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  expandedHeight: 238,
                  backgroundColor: AppColor.scaffoldColor,
                  leading: const SizedBox(),
                  flexibleSpace: FlexibleSpaceBar(
                    background: state.isLoading == false
                        ? UserDetailsCard(
                            userDetails: widget.userDetails,
                            onClicked: () {
                              showModalBottomSheet(
                                context: context,
                                transitionAnimationController:
                                    _animationController,
                                isScrollControlled: true,
                                builder: (context) => Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: const ReceveAmountDialog(),
                                ),
                              );
                            },
                          )
                        : const ShimmerUserCard(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: state.isLoading == false
                        ? const Text(
                            'Previous Transactions',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        : const Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: ShimmerText(),
                              ),
                            ],
                          ),
                  ),
                ),
                if (state.transactions.isNotEmpty)
                  SliverList.builder(
                    itemCount: state.transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = state.transactions[index];
                      return TransactionDetailsWidget(
                        transaction: transaction,
                      );
                    },
                  )
                else
                  SliverFillRemaining(
                    child: state.isLoading
                        ? const TranactionShimmerWidget()
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

class ReceveAmountDialog extends StatelessWidget {
  const ReceveAmountDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getsize.height * 0.38,
      padding: const EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BlocBuilder<UserDetailsBloc, UserDetailsState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Opacity(
                opacity: 0.90,
                child: Text(
                  'Add Money',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              kSizedBoxH10,
              const Opacity(
                opacity: 0.70,
                child: Text(
                  'Amount',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              kSizedBoxH10,
              CustomTextField(
                autovalidateMode: state.showError,
                onChanged: (value) {
                  context.read<UserDetailsBloc>().add(
                        AmountChanged(
                          num.tryParse(value) ?? 0,
                        ),
                      );
                },
                validator: (value) {
                  return state.amount.value.fold(
                    (failure) => failure.maybeMap(
                      orElse: () {
                        return null;
                      },
                      invalidAmount: (value) => value.errorMsg,
                    ),
                    (r) => null,
                  );
                },
                textInputType: TextInputType.number,
                borderColor: Colors.black54,
                hintText: 'Enter Amount',
              ),
              const SizedBox(
                height: 15,
              ),
              const Opacity(
                opacity: 0.70,
                child: Text(
                  'Note',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              kSizedBoxH10,
              CustomTextField(
                autovalidateMode: AutovalidateMode.disabled,
                borderColor: Colors.black54,
                hintText: 'Enter Your Note',
                validator: (value) {
                  return '';
                },
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: context.getsize.width - 30,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      AppColor.primaryColor,
                    ),
                  ),
                  child: false == false
                      ? const Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      : const CustomCircularProgress(),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
