import 'package:flutter/material.dart';

Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color navigationColor = Color(0xFF6751B5);
Color gradientStartColor = Color(0xFF0050AC);
Color gradientEndColor = Color(0xFF9354B9);
Color lightBackground = Color(0xFFf5f7fa);
const kDarkPrimaryColor = Color(0xFF212121);
const kDarkSecondaryColor = Color(0xFF373737);
const kAccentColor = Color(0xFFFFC107);

Gradient blueGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFa1c4fd ),
      Color(0xFFc2e9fb),
    ],
    stops: [
      0.1, 0.8,
    ]
);

Gradient greyGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFc3cfe2).withOpacity(0.25),
      Color(0xFFc3cfe2).withOpacity(0.5),
    ],
    stops: [
      0.3, 0.8,
    ]
);

Gradient darkblueGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF1e3c72).withOpacity(0.75),
      Color(0xFF1e3c72),
    ],
    stops: [
      0.1, 1.5,
    ]
);
