import 'package:flutter/material.dart';

class Textformfiled extends StatelessWidget {
  final GlobalKey<FormState> formstate = GlobalKey();
  final String hinttext;
  // final TextEditingController mycontroller;
  final bool? obscuretext;
  final IconData? icondata;
  final void Function()? ontap;
  final String? Function(String?)? validator;
  Textformfiled({
    super.key,
    required this.hinttext,
    this.obscuretext,
    this.icondata,
    this.ontap,
    this.validator,
    // required this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      height: 60,
      child: Form(
        child: TextFormField(
          obscureText:
              obscuretext == null || obscuretext == false ? false : true,
          validator: validator,
          // controller: mycontroller,
          decoration: InputDecoration(
            labelStyle: Theme.of(context).textTheme.displayMedium,
            labelText: hinttext,
            // hintText: hinttext,
            fillColor: Theme.of(context).colorScheme.background,
            filled: true,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent),
            ),
            focusColor: Colors.red,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(8)),
            border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
              borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: InkWell(
              onTap: ontap,
              child: Icon(icondata),
            ),
          ),
        ),
      ),
    );
  }
}
