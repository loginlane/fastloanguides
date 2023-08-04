import 'package:fastloanguide/config/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBox extends StatelessWidget {

  String label;
  String helpertext;
  TextEditingController tc;
  IconData icon;

  TextBox(this.label,this.helpertext,this.tc,this.icon);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return TextField(
      controller: tc,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border : OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.orangeColor),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.orangeColor),
          ),
          label: Text(label.toUpperCase(),style: GoogleFonts.roboto(fontSize: height/60,color:Colors.orange,fontWeight:FontWeight.bold)),
          hintText: 'Type Here...',
          helperText: helpertext,
          hintStyle: GoogleFonts.openSans(fontSize: height/60),
          suffixIcon: Icon(icon,color: Colors.black,)
      ),
    );
  }
}