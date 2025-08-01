import 'package:chrisproj/positions.dart';
import 'package:flutter/material.dart';

IconData posToIcon(Position pos) {
  switch (pos) {
    case Position.QB:
      return Icons.sports_football;
    case Position.RB:
      return Icons.directions_run;
    case Position.WR:
      return Icons.sports_handball;
    case Position.OL:
      return Icons.shield;
    case Position.DL:
      return Icons.sports_kabaddi;
  }
}
