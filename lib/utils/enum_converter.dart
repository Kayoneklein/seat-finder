import 'package:seat_finder/enums/seat_position.dart';

class PositionToString {
  static String position(SeatPosition seatPosition) {
    if (seatPosition == SeatPosition.sideLower) {
      return 'SIDE LOWER';
    }
    if (seatPosition == SeatPosition.sideUpper) {
      return 'SIDE UPPER';
    }
    return seatPosition.name.toUpperCase();
  }
}
