import 'package:flutter/material.dart';
import 'package:logistics/theme/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  //final hintType;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardType;
  final bool isPassword, isPasswordVisible;
  final VoidCallback? passwordVisible;

  const CustomTextFormField(
      {super.key,
      required this.hintText,
      //this.hintType,
      required this.onChanged,
      required this.keyboardType,
      this.isPassword = false,
      this.isPasswordVisible = false,
      this.passwordVisible});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      //autofocus: true,
      //autofillHints: hintType,
      textCapitalization: TextCapitalization.none,
      obscureText: isPassword == true && isPasswordVisible == false? true :false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w100,
            color: AppColors.hint),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.error,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.background,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(24, 18.5, 24, 18.5),
        suffixIcon: isPassword == true?
        InkWell(
          onTap: passwordVisible,
          focusNode: FocusNode(skipTraversal: true),
          child: Icon(
            isPasswordVisible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined,
            color: Theme.of(context).colorScheme.onSurface,
            size: 20,
          ),
        ):null
      ),
      style: Theme.of(context).textTheme.bodyLarge,
      keyboardType: keyboardType,
    );
  }
}
