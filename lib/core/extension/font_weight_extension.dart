import 'dart:ui';

import 'package:paxpass_app/core/enums/app_font_weight.dart';

extension Weight on AppFontWeight {
  FontWeight fontWeight() {
    switch (this) {
      case AppFontWeight.bold:
        return FontWeight.w900;
      case AppFontWeight.medium:
        return FontWeight.w500;
      case AppFontWeight.regular:
        return FontWeight.w400;
      case AppFontWeight.semiBold:
        return FontWeight.w700;
    }
  }
}
