import 'package:flutter/material.dart';

abstract class MBaseWidget extends StatefulWidget {
  final String mType;
  const MBaseWidget({Key? key, required this.mType}) : super(key: key);
}
