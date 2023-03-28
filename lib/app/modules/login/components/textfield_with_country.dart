import 'package:donate_life/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomDropDownWithFlag extends StatelessWidget {
  const CustomDropDownWithFlag({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.secondaryColor.withOpacity(0.1),
        ),
        // boxShadow: [
        // BoxShadow(
        //   color: AppColors.black.withOpacity(0.1),
        //   blurRadius: 10,
        //   offset: const Offset(0, 5),
        // ),
        // ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Colors.transparent,
              ),
            ),
            padding: const EdgeInsets.only(left: 15),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {},
              onInputValidated: (bool value) {},
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: const TextStyle(color: AppColors.secondaryColor),
              initialValue: PhoneNumber(isoCode: 'BD'),
              textFieldController: null, // TODO add controller
              formatInput: false,
              keyboardType: const TextInputType.numberWithOptions(
                signed: true,
                decimal: true,
              ),
              inputBorder: InputBorder.none,
              onSaved: (PhoneNumber number) {},
            ),
          ),
        ],
      ),
    );
  }
}
