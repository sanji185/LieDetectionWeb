import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const Color colorPrimary = Color(0xff85FFDA);
const Color colorSecondary = Color(0xffEBFDF9);
const Color colorFontHighlighter = Color(0xff4C8900);
const Color colorFont = Color(0xff707070);

const bgDecoration = BoxDecoration(
    image:
        DecorationImage(image: AssetImage("images/bg.png"), fit: BoxFit.cover));

final indicatorDecoration = BoxDecoration(
    color: colorPrimary, borderRadius: BorderRadius.circular(8.0));

final tabLabelStyle = TextStyle(
    fontFamily: "Poppins-Medium",
    fontSize: 3.5.sp,
    fontWeight: FontWeight.w700);
