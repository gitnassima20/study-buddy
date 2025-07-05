import 'package:flutter/material.dart';

//Value notifier : holds data
//ValueListenableBuilder: lsiten to data(doesn't need setstate)

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);
