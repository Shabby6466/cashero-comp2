import 'package:cashero_ui_later_merge2/core/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String? labelText;
  final FocusNode? focusNode;
  final bool? isEnable;
  final bool? autofocus;
  final FormFieldValidator<String>? validator;
  final int? textFieldMaxLength;
  final ValueChanged<String>? onChanged;
  final TextCapitalization? textCapitalization;
  final String? errorText;
  final bool showCounter;
  final List<TextInputFormatter>? inputFormatters;
  final Color? hintColor;
  final Color? enableBorderColor;

  const CustomTextField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.validator,
    this.onChanged,
    this.enableBorderColor,
    this.hintColor,
    this.isEnable,
    this.focusNode,
    this.textCapitalization,
    this.textFieldMaxLength,
    this.labelText,
    this.autofocus,
    this.inputFormatters,
    this.errorText,
    this.showCounter = false,
  });

  @override
  State createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (shouldShowLabel()) ...[
          Text(
            '${widget.labelText}',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 12.sp,
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ] else
          SizedBox(height: 12.h),
        Container(height: 4.h),
        Focus(
          onFocusChange: (value) {
            isFocused = value;
            setState(() {});
          },
          child: TextFormField(
            enabled: widget.isEnable ?? true,
            enableSuggestions: false,
            key: const ValueKey('text_field'),
            focusNode: widget.focusNode,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400),
            controller: widget.textEditingController,
            maxLength: widget.textFieldMaxLength,
            maxLines: 1,
            cursorColor: Theme.of(context).primaryColor,
            maxLengthEnforcement: widget.textFieldMaxLength == 12
                ? MaxLengthEnforcement.enforced
                : MaxLengthEnforcement.none,
            textCapitalization:
                widget.textCapitalization ?? TextCapitalization.none,
            textInputAction: TextInputAction.done,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            inputFormatters: widget.inputFormatters ??
                [
                  LengthLimitingTextInputFormatter(50),
                  FilteringTextInputFormatter.deny(RegExp(r'\s')),
                ],
            autofocus: widget.autofocus == null ? true : widget.autofocus!,
            onChanged: (text) {
              widget.onChanged?.call(text);

              setState(() {});
            },
            validator: widget.validator,
            decoration: InputDecoration(
                isDense: true,
                hintText: shouldShowLabel() ? '' : widget.hintText,
                hintStyle: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 16.sp)
                    .copyWith(
                      color: widget.hintColor ?? Palette().dividerColor,
                    ),
                contentPadding: EdgeInsets.only(bottom: 4.h),
                counterText: widget.showCounter ? null : '',
                counterStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Palette().textfieldHintColor,
                      height: .5,
                    ),
                alignLabelWithHint: true,
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Palette().disabledColor),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: shouldShowBlueColor()
                        ? Theme.of(context).primaryColor
                        : widget.enableBorderColor ??
                            Theme.of(context).disabledColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).colorScheme.error)),
                suffixIconConstraints: BoxConstraints(maxHeight: 30.h),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: Theme.of(context).colorScheme.error),
                ),
                errorText: widget.errorText,
                errorStyle: const TextStyle(height: 0.6)),
          ),
        ),
      ],
    );
  }

  bool shouldShowBlueColor() =>
      isFocused || widget.textEditingController.text.isNotEmpty;

  bool shouldShowLabel() => widget.textEditingController.text.isNotEmpty;
}
