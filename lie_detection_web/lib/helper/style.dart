import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const Color colorPrimary = Color(0xffF2F1F1);
const Color colorSecondary = Color(0xffF3F1F5);
const Color colorHeading = Color(0xff007600);
const Color colorDark = Color(0xff343235);
const Color colBodyGrey = Color(0xFF7F7C82);
const Color colWhite = Color(0xFFF3F1F5);

const String instruction1 =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitant dignissim nunc id sollicitudin id nisl acilisis posuere tristique. Vel lorem cras gravida id nullam. Proin iaculis quam augue faucibus quis non nisl. Tincidunt risus sit mauris porta nullam faucibus.";
const String instruction2 =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitant dignissim nunc id sollicitudin id nisl acilisis posuere tristique. Vel lorem cras gravida id nullam. Proin iaculis quam augue faucibus quis non nisl. Tincidunt risus sit mauris porta nullam faucibus.";
const String instruction3 =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Habitant dignissim nunc id sollicitudin id nisl acilisis posuere tristique. Vel lorem cras gravida id nullam. Proin iaculis quam augue faucibus quis non nisl. Tincidunt risus sit mauris porta nullam faucibus.";

const bgDecoration = BoxDecoration(
    image:
        DecorationImage(image: AssetImage("images/bg.png"), fit: BoxFit.cover));

final containerShadow1 = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Colors.black.withOpacity(.25),
);
final containerShadow2 = BoxShadow(
  offset: Offset(4, 0),
  blurRadius: 4,
  color: Colors.black.withOpacity(.25),
);
