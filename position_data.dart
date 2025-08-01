import 'positions.dart';

class PositionWithData {
  final Position position;
  final int goal;
  int donated;

  PositionWithData({
    required this.position,
    this.goal = 2500,
    this.donated = 0,
  });
}

List<PositionWithData> samplePositions = [
  PositionWithData(position: Position.QB, donated: 500),
  PositionWithData(position: Position.RB, donated: 300),
  PositionWithData(position: Position.WR, donated: 1000),
  PositionWithData(position: Position.OL),
  PositionWithData(position: Position.DL, donated: 2000),
];
