import 'dart:async';
import 'package:blue_sky/pages/new_login/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextField extends StatefulWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final int? maxLine;
  final int? maxLength;
  final bool? enabled;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final ValueChanged? onChanged;
  final Color? borderColor;
  final String? labelText;
  final Color? backgroundColor;
  final Color? hintTextColor;
  final InputBorder? border;
  final TextStyle? style;
  final BoxConstraints? suffixIconConstraints;
  final BoxConstraints? prefixIconConstraints;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscure;

  const PrimaryTextField({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLength,
    this.enabled,
    this.textAlign,
    this.keyboardType,
    this.decoration,
    this.onChanged,
    this.borderColor,
    this.maxLine,
    this.labelText,
    this.backgroundColor,
    this.hintTextColor,
    this.border,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.style,
    this.inputFormatters,
    this.obscure,
  });

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  late StreamController<bool> _isValid;
  @override
  void initState() {
    _isValid = StreamController<bool>.broadcast();
    super.initState();
  }

  @override
  void dispose() {
    _isValid.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: _isValid.stream,
        builder: (context, snapshot) {
          Color getColor(Color color) => (snapshot.data == null
              ? color
              : snapshot.data == true
                  ? color
                  : Colors.red);

          return TextFormField(
            validator: (value) {
              if (widget.validator != null) {
                _isValid.add(widget.validator!(value) == null);
                return widget.validator!(value);
              }
              return null;
            },
            obscureText: widget.obscure ?? false,
            inputFormatters: widget.inputFormatters,
            cursorColor: Colors.white,
            enabled: widget.enabled ?? true,
            controller: widget.controller,
            textInputAction: TextInputAction.done,
            //  style: const TextStyle(color: Colors.white),
            minLines: widget.maxLine,
            maxLines: widget.maxLine == null ? 1 : 100,
            maxLength: widget.maxLength,
            textAlign: widget.textAlign ?? TextAlign.start,
            keyboardType: widget.keyboardType,
            onChanged: widget.onChanged == null
                ? null
                : (val) {
                    widget.onChanged!(val);
                  },
            style: TextStyle(
              color: widget.hintTextColor ?? getColor(Colors.orange),

              //   ((validator == null) ? Colors.orange : Colors.red),
              fontSize: 16.sp,
            ),
            decoration: widget.decoration ??
                InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  filled: true,
                  isDense: true,
                  fillColor: (widget.enabled ?? true)
                      ? widget.backgroundColor ?? AppColor.primaryColor
                      : getColor(Colors.grey.shade200),
                  counterText: '',
                  //contentPadding: isPasswordField==null? EdgeInsets.all(5):isPasswordField? EdgeInsets.fromLTRB(5,5,5,5):EdgeInsets.all(5),
                  contentPadding: const EdgeInsets.all(12),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                    color: widget.hintTextColor ?? getColor(Colors.white),
                    fontSize: 16.sp,
                  ),
                  errorMaxLines: 3,
                  errorStyle: TextStyle(
                      color: widget.hintTextColor ?? Colors.red,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600),
                  labelText: widget.labelText,
                  // labelStyle: MyTextTheme.smallPCB,
                  // errorStyle: MyTextTheme.mediumBCN.copyWith(
                  //   color: AppColor.error,
                  //   fontSize: 14,
                  // ),

                  suffixIconConstraints: widget.suffixIconConstraints ??
                      BoxConstraints(
                          maxHeight: 16.h,
                          minHeight: 16.h,
                          maxWidth: 18.h,
                          minWidth: 18.h),
                  prefixIconConstraints: widget.prefixIconConstraints ??
                      BoxConstraints(
                          maxHeight: 16.h,
                          minHeight: 16.h,
                          maxWidth: 22.h,
                          minWidth: 22.h),
                  prefixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 8.r, 0),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        getColor(Colors.white),
                        BlendMode.modulate,
                      ),
                      child: widget.prefixIcon,
                    ),
                  ),
                  suffixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 8.r, 0),
                      child: widget.suffixIcon),
                  enabledBorder: widget.border ??
                      const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                  disabledBorder: widget.border ??
                      const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                  focusedBorder: widget.border ??
                      UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor.orange),
                      ),
                ),
          );
        });
  }
}
