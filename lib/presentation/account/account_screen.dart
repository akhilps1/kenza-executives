import 'package:executives/application/auth/auth_bloc.dart';
import 'package:executives/application/core/constants.dart';
import 'package:executives/application/transactions/employee_detais/get_emloyee_details_cubit.dart';
import 'package:executives/application/transactions/transactions_bloc.dart';
import 'package:executives/application/user/user_bloc.dart';
import 'package:executives/application/user_details/user_details_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/presentation/account/widgets/account_item_widget.dart';
import 'package:executives/presentation/core/widgets/custom_catched_network_image.dart';
import 'package:executives/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.logoutSuccessOption.fold(
          () => null,
          (_) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const SplashScreen(),
              ),
              (route) => false,
            );
            context.read<AuthBloc>().add(const ClearAuth());
            context.read<TransactionsBloc>().add(const ClearTransactionData());
            context.read<GetEmloyeeDetailsCubit>().clear();
            context.read<UserBloc>().add(const ClearUserData());
            context.read<UserDetailsBloc>().add(const ClearUserDetailsData());
          },
        );
      },
      builder: (context, state) {
        return ColoredBox(
          color: AppColor.scaffoldColor,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: context.getsize.height * 0.65,
                      padding: const EdgeInsets.all(15),
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, -1),
                          )
                        ],
                      ),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: context.getsize.height * 0.09,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                state.executive?.name ?? '',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Opacity(
                                opacity: 0.50,
                                child: Text(
                                  state.executive?.phoneNumber ?? '',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          const AccountItemWidget(
                            title: "Share Kenza’s Application",
                            icon: MediaRes.share,
                          ),
                          const Divider(
                            color: AppColor.black,
                          ),
                          const AccountItemWidget(
                            title: "Updates",
                            icon: MediaRes.refresh,
                          ),
                          const Divider(
                            color: AppColor.black,
                          ),
                          const AccountItemWidget(
                            title: "Rate Us",
                            icon: MediaRes.rating,
                          ),
                          const Divider(
                            color: AppColor.black,
                          ),
                          const AccountItemWidget(
                            title: "Privacy And Policy",
                            icon: MediaRes.insurance,
                          ),
                          const Divider(
                            color: AppColor.black,
                          ),
                          const AccountItemWidget(
                            title: "Terms And Conditions",
                            icon: MediaRes.terms,
                          ),
                          const Divider(
                            color: AppColor.black,
                          ),
                          InkWell(
                            onTap: () {
                              context.read<AuthBloc>().add(const Logout());
                            },
                            child: const AccountItemWidget(
                              title: "Logout",
                              icon: MediaRes.exit,
                            ),
                          ),
                          const Divider(
                            color: AppColor.black,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: context.getsize.height * 0.57,
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.bgWhiteColor,
                      border: Border.all(
                        color: AppColor.primaryColor,
                        width: 3,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: state.executive != null &&
                              state.executive!.imgUrl.isEmpty
                          ? CustomCachedNetworkImage(
                              url: state.executive!.imgUrl,
                            )
                          : Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.blueShade.withOpacity(0.05),
                              ),
                              child: const Center(
                                child: ImageIcon(
                                  AssetImage(MediaRes.user),
                                  size: 45,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
