import 'package:executives/application/user_details/otp_verification/otp_verification_cubit.dart';
import 'package:executives/application/user_details/user_details_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/user_details/widgets/custom_otp_dialog.dart';
import 'package:executives/presentation/user_details/widgets/receve_amount_dialog.dart';
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
            widget.userDetails.name.toLowerCase().capitalize,
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
                  floating: true,
                  backgroundColor: AppColor.scaffoldColor,
                  surfaceTintColor: AppColor.scaffoldColor,
                  leading: const SizedBox(),
                  flexibleSpace: FlexibleSpaceBar(
                    background: state.isLoading == false
                        ? UserDetailsCard(
                            userDetails: widget.userDetails,
                            onClicked: () {
                              if (state.account?.chechCompleted() == true &&
                                  context
                                      .read<OtpVerificationCubit>()
                                      .state
                                      .otpVerifySuccess
                                      .isNone()) {
                                showGeneralDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  barrierLabel:
                                      // ignore: use_build_context_synchronously
                                      MaterialLocalizations.of(context)
                                          .modalBarrierDismissLabel,
                                  barrierColor: Colors.black45,
                                  transitionBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    return SlideTransition(
                                      position: Tween(
                                        begin: const Offset(0, 1),
                                        end: const Offset(0, 0),
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(milliseconds: 500),
                                  pageBuilder: (context, anim1, anim2) =>
                                      Material(
                                    type: MaterialType.transparency,
                                    child: CustomOtpDialog(
                                      animationController: _animationController,
                                      userDetails: widget.userDetails,
                                    ),
                                  ),
                                );
                              } else {
                                showModalBottomSheet(
                                  context: context,
                                  transitionAnimationController:
                                      _animationController,
                                  isScrollControlled: true,
                                  builder: (context) => Padding(
                                    padding: MediaQuery.of(context).viewInsets,
                                    child: ReceveAmountDialog(
                                        userDetails: widget.userDetails),
                                  ),
                                );
                              }
                            },
                          )
                        : const ShimmerUserCard(),
                  ),
                ),
                if (state.account?.chechCompleted() == false)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
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
                if (state.transactions.isNotEmpty &&
                    state.account?.chechCompleted() == false)
                  SliverList.builder(
                    itemCount: state.transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = state.transactions[index];
                      return TransactionDetailsWidget(
                        transaction: transaction,
                      );
                    },
                  )
                else if (state.account?.chechCompleted() == true)
                  const SliverFillRemaining(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 85,
                      ),
                      Text(
                        'This Account Has Been Expired.\nDo You Want Renew Account, Click The Button',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ))
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
