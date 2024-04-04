
import 'package:blue_sky/constants/hex_color_extention.dart';
import 'package:blue_sky/constants/widget_extenstion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonFormView extends StatefulWidget {
  const CommonFormView({
    super.key,
    required this.child,
    this.height,
    this.width,
  });
  final Widget child;
  final double? height;
  final double? width;
  @override
  State<CommonFormView> createState() => _CommonFormViewState();
}

class _CommonFormViewState extends State<CommonFormView> {
  late final Image form = Image.asset(
    "assets/doctor_view/images/form_rectangle.png",
    fit: BoxFit.fill,
    width: widget.width,
    height: widget.height,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(form.image, context);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(child: form),
          Positioned.fill(child: Center(child: widget.child))
        ],
      ),
    );
  }
}

Widget commonTextFormFeild({
  String? placeholder,
  required String headerText,
  Widget suffix = const SizedBox.shrink(),
  Widget headersuffixWidget = const SizedBox.shrink(),
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headerText,
              style: TextStyle(
                color: '#211F2B'.toColor(),
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            headersuffixWidget
          ],
        ).pOnly(
          left: 10.w,
          right: 10.w,
        ),
        CupertinoTextField.borderless(
          padding: EdgeInsets.zero,
          placeholderStyle: TextStyle(
            color: '#83828E'.toColor(),
            fontSize: 11.sp,
            fontWeight: FontWeight.bold,
          ),
          placeholder: placeholder,
          decoration: const BoxDecoration(),
          suffix: suffix,
        )
            .pOnly(
              left: 25.w,
              right: 25.w,
            )
            .textform(
              height: 53.h,
              width: ScreenUtil().screenWidth,
            ),
      ],
    );
