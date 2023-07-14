import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
appbarStyle(){
  return GoogleFonts.nunito(
    fontSize: 20 ,
    fontWeight: FontWeight.w600,
    color: textPureBlack,
  );
}
categoryStyle(){
  return GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: textPureBlack,
    height: 2,
  );
}
normalStyle(){
  return GoogleFonts.nunito(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: textPureBlack,
    height: 1,
  );
}
boldStyle(){
  return GoogleFonts.nunito(
    fontSize: 12 ,
    fontWeight: FontWeight.w700,
    color: textPureBlack,
    height: 2,
  );
}
myFontStyle(double FS,[FontWeight? Fw, Color? clr]){
  return GoogleFonts.nunito(
    fontSize:FS ,
    fontWeight: Fw,
    color:clr ,
  );
}
regularStyle(){
  return GoogleFonts.nunito(
    fontSize:16 ,
    fontWeight: FontWeight.w500,
    color: textPureBlack,
  );
}
svgPic(String path ,[double? height,Color? clr]){
  return SvgPicture.asset('${path}',height: height,color:clr,);
}

const Color scaffoldBgClr=Color(0xffFFFFFF);
const Color textPureBlack=Color(0xff0B0B0B);
Color cardColor=const Color(0xffEEF5FC).withOpacity(0.2);
const Color secondaryColor=Color(0xff01BDF3);
const Color primaryColors=Color(0xff0671E0);
const Color levelClr=Color(0xff8A8A8E);
late Size mq;