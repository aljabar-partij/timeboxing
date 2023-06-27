import 'package:flutter/material.dart';

enum TimeBoxingColorType { tint, shade }

extension TimeBoxingColors on Color {
  static Color _generateHexColor(String hex) {
    // Remove the # symbol if present
    if (hex[0] == '#') {
      hex = hex.substring(1);
    }

    // Convert the hexadecimal value to a color
    return Color(int.parse(hex, radix: 16) + 0xFF000000);
  }

  // Primary
  static Color primary(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#CCE2CB');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#CCE2CB');
    }
  }

  static Color primary20(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#D6E8D5');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#A3B5A2');
    }
  }

  static Color primary30(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#DBEBDB');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#8F9E8E');
    }
  }

  static Color primary40(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#E0EEE0');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#7A887A');
    }
  }

  static Color primary50(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#E6F1E5');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#667166');
    }
  }

  static Color primary60(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#EBF3EA');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#525A51');
    }
  }

  static Color primary70(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#F0F6EF');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#3D443D');
    }
  }

  static Color primary80(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#F5F9F5');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#292D29');
    }
  }

  static Color primary90(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FAFCFA');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#141714');
    }
  }

  // Secondary
  static Color secondary(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FCB9AA');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#FCB9AA');
    }
  }

  static Color secondary20(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FDC7BB');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#CA9488');
    }
  }

  static Color secondary30(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FDCEC4');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#B08277');
    }
  }

  static Color secondary40(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FDD5CC');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#976F66');
    }
  }

  static Color secondary50(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FEDCD5');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#7E5D55');
    }
  }

  static Color secondary60(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FEE3DD');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#654A44');
    }
  }

  static Color secondary70(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FEEAE6');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#4C3833');
    }
  }

  static Color secondary80(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FEF1EE');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#322522');
    }
  }

  static Color secondary90(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FFF8F7');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#191311');
    }
  }

  // Accent
  static Color accent(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#ECD5E3');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#ECD5E3');
    }
  }

  static Color accent20(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#F0DDE9');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#BDAAB6');
    }
  }

  static Color accent30(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#F2E2EB');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#A5959F');
    }
  }

  static Color accent40(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#F4E6EE');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#8E8088');
    }
  }

  static Color accent50(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#F6EAF1');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#766B72');
    }
  }

  static Color accent60(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#F7EEF4');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#5E555B');
    }
  }

  static Color accent70(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#F9F2F7');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#474044');
    }
  }

  static Color accent80(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FBF7F9');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#2F2B2D');
    }
  }

  static Color accent90(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#FDFBFC');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#181517');
    }
  }

  // Text
  static Color text(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#475261');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#475261');
    }
  }

  static Color text20(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#6C7581');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#39424E');
    }
  }

  static Color text30(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#7E8690');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#323944');
    }
  }

  static Color text40(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#9197A0');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#2B313A');
    }
  }

  static Color text50(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#A3A9B0');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#242931');
    }
  }

  static Color text60(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#B5BAC0');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#1C2127');
    }
  }

  static Color text70(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#C8CBD0');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#15191D');
    }
  }

  static Color text80(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#DADCDF');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#0E1013');
    }
  }

  static Color text90(TimeBoxingColorType colorType) {
    switch (colorType) {
      case TimeBoxingColorType.tint:
        return _generateHexColor('#EDEEEF');
      case TimeBoxingColorType.shade:
        return _generateHexColor('#07080A');
    }
  }

  // Neutral
  static Color neutralWhite() {
    return _generateHexColor('#FFFFFF');
  }

  static Color neutralLotion() {
    return _generateHexColor('#FDFDFD');
  }

  static Color neutralBlack() {
    return _generateHexColor('#000000');
  }

  // Rainbow
  static Color rainbow1() {
    return _generateHexColor('#E67C73');
  }

  static Color rainbow2() {
    return _generateHexColor('#F6EAC2');
  }

  static Color rainbow3() {
    return _generateHexColor('#FFE3D4');
  }

  static Color rainbow4() {
    return _generateHexColor('#C6DBDA');
  }

  static Color rainbow5() {
    return _generateHexColor('#D7EFEF');
  }

  static Color rainbow6() {
    return _generateHexColor('#97C1A9');
  }

  static Color rainbow7() {
    return _generateHexColor('#FFFFB5');
  }

  static Color rainbow8() {
    return _generateHexColor('#D4D479');
  }

  static Color rainbow9() {
    return _generateHexColor('#8FCACA');
  }
}
