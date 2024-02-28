import 'package:executives/application/transactions/employee_detais/get_emloyee_details_cubit.dart';
import 'package:executives/application/user/user_bloc.dart';
import 'package:executives/application/user_details/user_details_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:executives/presentation/user_details/user_details.dart';
import 'package:executives/presentation/users/widgets/user_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shimmer/shimmer.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    if (context.read<UserBloc>().state.users.isEmpty) {
      context.read<UserBloc>().add(GetAllusers(context.branchId));
    }

    if (context.read<GetEmloyeeDetailsCubit>().state.executive == null) {
      context
          .read<GetEmloyeeDetailsCubit>()
          .getEmployeeDetails(context.employeeId);
    }
    if (context.read<UserBloc>().state.dailyCollection == null) {
      context.read<UserBloc>().add(
            GetEmployeeDailyCollection(context.employeeId),
          );
    }
    if (context.read<UserBloc>().state.branchdailyCollection == null) {
      context.read<UserBloc>().add(
            GetBranchDailyCollection(context.branchId),
          );
    }

    if (context.read<UserDetailsBloc>().state.cashAndBankDetails.id == null) {
      context.read<UserDetailsBloc>().add(
            GetCashAndBankDetails(context.branchId),
          );
    }

    scrollController.addListener(() {
      double delta = MediaQuery.of(context).size.height * 0.16;
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0 &&
            scrollController.position.pixels >= delta) {
          if (context.read<UserBloc>().state.noMoreData == false) {
            context.read<UserBloc>().add(
                  GetAllusers(context.branchId),
                );
          }
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColor.scaffoldColor,
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                expandedHeight: 70,
                toolbarHeight: 10,
                floating: true,
                pinned: true,
                snap: true,
                backgroundColor: AppColor.scaffoldColor,
                surfaceTintColor: AppColor.scaffoldColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: context.getsize.width - 20,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: AppColor.bgWhiteColor,
                        border:
                            Border.all(width: 1, color: AppColor.primaryColor),
                      ),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 0.85,
                            child: const ImageIcon(AssetImage(MediaRes.search)),
                          ),
                          SizedBox(
                            width: 300,
                            child: TextField(
                              onChanged: (value) {
                                if (value.isEmpty) {
                                  context
                                      .read<UserBloc>()
                                      .add(const ClearUserData());
                                  context.read<UserBloc>().add(
                                        GetEmployeeDailyCollection(
                                            context.employeeId),
                                      );
                                  context.read<UserBloc>().add(
                                        GetAllusers(context.branchId),
                                      );
                                }
                                context
                                    .read<UserBloc>()
                                    .add(SerchTearmChanged(value));
                              },
                              onSubmitted: (value) {
                                context.read<UserBloc>().add(
                                      SearchClicked(context.branchId),
                                    );
                              },
                              textInputAction: TextInputAction.search,
                              decoration: InputDecoration(
                                hintText: 'Search by phone number',
                                hintStyle: context.theme.titleMedium!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 7),
                  child: Opacity(
                    opacity: 0.70,
                    child: Text(
                      'Users under your branch',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              if (state.users.isNotEmpty)
                SliverList.builder(
                  itemCount: state.users.length,
                  itemBuilder: (context, index) {
                    final user = state.users[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: UserDetailsScreen(
                              userDetails: user,
                            ),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                      },
                      child: UserDetailsWidget(
                        user: user,
                      ),
                    );
                  },
                )
              else
                const SliverFillRemaining(
                  child:   ShimmerWidget(),
                ),
              if (state.isLoading && state.users.length >= 10)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child:
                          CustomCircularProgress(color: AppColor.primaryColor),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    this.height,
    super.key,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            height: height ?? 86,
            decoration: ShapeDecoration(
              color: AppColor.bgWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Shimmer.fromColors(
              baseColor:
                  const Color.fromARGB(255, 192, 192, 192).withOpacity(0.3),
              highlightColor: AppColor.scaffoldColor,
              enabled: true,
              child: const Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70,
                        height: 63,
                        child: Card(
                          margin: EdgeInsets.zero,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 180,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.5),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.5),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 80,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.5),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ));
      },
    );
  }
}
