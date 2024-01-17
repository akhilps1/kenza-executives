import 'package:executives/application/transactions/transactions_bloc.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/presentation/transactions/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AppbarWidgets extends StatefulWidget {
  const AppbarWidgets({
    super.key,
  });

  @override
  State<AppbarWidgets> createState() => _AppbarWidgetsState();
}

class _AppbarWidgetsState extends State<AppbarWidgets> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      final PickerDateRange selectedRanges = args.value;
      if (selectedRanges.startDate == null || selectedRanges.endDate == null) {
        return;
      }

      final start = DateTime(selectedRanges.startDate!.year,
              selectedRanges.startDate!.month, selectedRanges.startDate!.day)
          .add(const Duration(hours: 5, minutes: 30));

      final end = DateTime(
              selectedRanges.endDate!.year,
              selectedRanges.endDate!.month,
              selectedRanges.endDate!.day,
              11,
              59,
              59,
              999,
              999999)
          .add(const Duration(hours: 5, minutes: 30));

      context.read<TransactionsBloc>().add(
            DateRangeChanged(
              range: PickerDateRange(start, end),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime todayStart = DateTime(now.year, now.month, now.day);
    return BlocBuilder<TransactionsBloc, TransactionsState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const TransactionSearchScreen(),
                          type: PageTransitionType.bottomToTop,
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: context.getsize.width - 60,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: AppColor.bgWhiteColor,
                        border: Border.all(
                            width: 0.5, color: AppColor.primaryColor),
                      ),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 0.85,
                            child: const ImageIcon(AssetImage(MediaRes.search)),
                          ),
                          SizedBox(
                            width: context.getsize.width - 116,
                            child: TextField(
                              onChanged: (value) {
                                if (value.isEmpty) {}
                              },
                              enabled: false,
                              onSubmitted: (value) {},
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
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 325,
                                    width: context.getsize.width - 20,
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      bottom: 10,
                                      left: 10,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        color: AppColor.bgWhiteColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        BlocBuilder<TransactionsBloc,
                                            TransactionsState>(
                                          builder: (context, state) {
                                            return SfDateRangePicker(
                                              onSelectionChanged:
                                                  _onSelectionChanged,
                                              selectionMode:
                                                  DateRangePickerSelectionMode
                                                      .range,
                                              allowViewNavigation: true,
                                              initialDisplayDate: todayStart,
                                              extendableRangeSelectionDirection:
                                                  ExtendableRangeSelectionDirection
                                                      .backward,
                                              selectionShape:
                                                  DateRangePickerSelectionShape
                                                      .rectangle,
                                              initialSelectedDate: todayStart,
                                              maxDate: DateTime.now(),
                                              showNavigationArrow: true,
                                              showActionButtons: true,
                                              confirmText: 'Apply',
                                              cancelText: 'Cancel',
                                              onCancel: () {
                                                if (state.dailyCollection ==
                                                    null) {
                                                  context
                                                      .read<TransactionsBloc>()
                                                      .add(
                                                          const CancelDateRange());
                                                } else {}
                                                Navigator.pop(context);
                                              },
                                              onSubmit: (_) {
                                                context
                                                    .read<TransactionsBloc>()
                                                    .add(
                                                        const ClearTransaction());
                                                context
                                                    .read<TransactionsBloc>()
                                                    .add(
                                                      DateRangeApplied(
                                                        branchId:
                                                            context.branchId,
                                                        employeeId:
                                                            context.employeeId,
                                                      ),
                                                    );
                                                Navigator.pop(context);
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (state.dailyCollection != null)
                                    Positioned(
                                      bottom: 25,
                                      left: 25,
                                      child: TextButton(
                                        onPressed: () {
                                          context.read<TransactionsBloc>().add(
                                                ClearDateRange(
                                                  branchId: context.branchId,
                                                  employeeId:
                                                      context.employeeId,
                                                ),
                                              );
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Clear Filter',
                                          style: context.theme.titleMedium!
                                              .copyWith(
                                            color: const Color.fromARGB(
                                                255, 160, 14, 16),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Column(
                      children: [
                        ImageIcon(
                          AssetImage(MediaRes.filter),
                          color: AppColor.primaryColor,
                          size: 28,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Opacity(
                          opacity: 0.67,
                          child: Text(
                            'Filter',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: context.getsize.width - 20,
                height: 112,
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2, color: Color(0x496F0F10)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Opacity(
                      opacity: 0.90,
                      child: Text(
                        convertNumber(
                          state.dailyCollection?.amount ??
                              context.executive.collected,
                        ),
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 25,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    if (state.dateRange != null &&
                        state.dateRange!.startDate != null &&
                        state.dateRange!.endDate != null)
                      Opacity(
                        opacity: 0.80,
                        child: Text(
                          'Date: ${DateFormat.yMd().format(state.dateRange!.startDate!)} to ${DateFormat.yMd().format(state.dateRange!.endDate!)}',
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    else
                      Opacity(
                        opacity: 0.80,
                        child: Text(
                          'Date:${DateFormat.yMd().format(context.executive.timestamp.toDate())}  to ${DateFormat.yMd().format(DateTime.now())}',
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String convertNumber(num value) {
    final amount = '\u{20B9} ${NumberFormat.simpleCurrency(
      locale: 'hi-IN',
      decimalDigits: 2,
    ).format(value).replaceAll('\u{20B9}', '')}';
    return amount;
  }
}
