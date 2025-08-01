import '../positions.dart';

String posToString(Position pos) {
  switch (pos) {
    case Position.QB:
      return "Quarterbacks";
    case Position.RB:
      return "Running Backs";
    case Position.WR:
      return "Wide Recievers";
    case Position.OL:
      return "Offensive Line";
    case Position.DL:
      return "Defensive Line";
  }
}
