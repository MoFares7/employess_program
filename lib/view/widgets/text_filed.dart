import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../configs/size.dart';
import '../../configs/theme.dart';

class TextFormEditing extends StatelessWidget {
  const TextFormEditing(
      {Key? key,
      required this.hintText,
      required this.validator,
      required this.controller})
      : super(key: key);

  final TextEditingController controller;

  final String hintText;
  final FieldValidator validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defultPadding),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Required';
          }
          if (!RegExp(
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
              .hasMatch(value)) {
            return 'Enter Valid Value';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).primaryColor,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey, // <-- Change this
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
            // fontStyle: FontStyle.normal,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            //  borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors.primary1),
          ),
        ),
      ),
    );
  }
}

class NameFormEditing extends StatelessWidget {
  const NameFormEditing(
      {Key? key,
      required this.hintText,
      required this.validator,
      required this.controller,
      required this.kyebordType})
      : super(key: key);

  final TextEditingController controller;

  final String hintText;
  final FieldValidator validator;
  final TextInputType kyebordType;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: defultPadding),
        child: TextFormField(
          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return 'الحقل مطلوب';
            } else {
              return null;
            }
          },
          keyboardType: kyebordType,
          autofillHints: const [AutofillHints.email],
          decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).primaryColor,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey, // <-- Change this
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                // fontStyle: FontStyle.normal,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(width: 1, color: AppColors.primary1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(width: 1, color: AppColors.primary1),
              )),
        ));
  }
}

class PhoneFormEditing extends StatelessWidget {
  const PhoneFormEditing(
      {Key? key,
      required this.hintText,
      required this.validator,
      required this.controller})
      : super(key: key);

  final TextEditingController controller;

  final String hintText;
  final FieldValidator validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: defultPadding),
        child: TextFormField(
          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return 'الحقل مطلوب';
            } else {
              return null;
            }
          },
          keyboardType: TextInputType.number,
          autofillHints: const [AutofillHints.email],
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey, // <-- Change this
                fontSize: 9.sp,
                fontWeight: FontWeight.w400,
                // fontStyle: FontStyle.normal,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(width: 1, color: AppColors.primary1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(width: 1, color: AppColors.primary1),
              )),
        ));
  }
}
