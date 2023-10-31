import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AppbarWidgets extends StatefulWidget {
  const AppbarWidgets({
    super.key,
  });

  @override
  State<AppbarWidgets> createState() => _AppbarWidgetsState();
}

class _AppbarWidgetsState extends State<AppbarWidgets> {
  String? _dateCount;
  String? _range;

  @override
  void initState() {
    _dateCount = '';
    _range = '';
    super.initState();
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        final PickerDateRange selectedRanges = args.value;

        _range =
            '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} - ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: context.getsize.width - 60,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: AppColor.bgWhiteColor,
                  border: Border.all(width: 0.5, color: AppColor.primaryColor),
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
              const SizedBox(
                width: 10,
              ),
              InkWell(
                splashFactory: NoSplash.splashFactory,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                SfDateRangePicker(
                                  onSelectionChanged: _onSelectionChanged,
                                  selectionMode:
                                      DateRangePickerSelectionMode.range,
                                  allowViewNavigation: true,
                                  initialDisplayDate: DateTime.now(),
                                  extendableRangeSelectionDirection:
                                      ExtendableRangeSelectionDirection.forward,
                                  selectionShape:
                                      DateRangePickerSelectionShape.rectangle,
                                  initialSelectedDate: DateTime.now(),
                                  showNavigationArrow: true,
                                  showActionButtons: true,
                                  confirmText: 'Apply',
                                  cancelText: 'Cancel',
                                ),
                              ],
                            ),
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
            height: 15,
          ),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: '12/02/2023  ',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'To',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.26,
                      ),
                    ),
                    const TextSpan(
                      text: '  31/3/2023',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
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
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
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
                    '\u{20B9} 500,000.00',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 25,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.80,
                  child: Text(
                    'Date: 12/03/2023 to 31/04/2024',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
