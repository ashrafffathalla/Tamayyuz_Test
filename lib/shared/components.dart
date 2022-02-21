import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller ,
  required TextInputType type,
  required FormFieldValidator<String>? validate ,
  VoidCallback ?  onTab,
  ValueChanged<String>? onChange,
  ValueChanged<String>? onSubmit ,
  VoidCallback? suffixPressed,
  bool isPassword = false,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isClickable = true,
  TextAlign? textAlign,

}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  enabled:isClickable ,
  onFieldSubmitted:onSubmit,
  onTap:onTab,
  textAlign: TextAlign.right,
  onChanged :onChange,
  validator: validate,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(
      prefix,
    ) ,
    suffixIcon: suffix != null ? IconButton(
      onPressed:(){
        suffixPressed!();
      },
      icon: Icon(
        suffix,
      ),
    ) : null ,
    border: OutlineInputBorder(),
  ),
);

//navigate method
void navigateTo(context,widget ){
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );

}