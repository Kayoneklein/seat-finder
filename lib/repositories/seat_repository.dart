import 'package:seat_finder/enums/seat_position.dart';
import 'package:seat_finder/models/seat_position_model.dart';

class SeatRepository {
  static List<SeatPositionModel> seats = [
    SeatPositionModel(seatPosition: SeatPosition.lower, positionNumber: 1),
    SeatPositionModel(seatPosition: SeatPosition.middle, positionNumber: 2),
    SeatPositionModel(seatPosition: SeatPosition.upper, positionNumber: 3),
    SeatPositionModel(seatPosition: SeatPosition.lower, positionNumber: 4),
    SeatPositionModel(seatPosition: SeatPosition.middle, positionNumber: 5),
    SeatPositionModel(seatPosition: SeatPosition.upper, positionNumber: 6),
    SeatPositionModel(seatPosition: SeatPosition.sideLower, positionNumber: 7),
    SeatPositionModel(seatPosition: SeatPosition.sideUpper, positionNumber: 8),
    SeatPositionModel(seatPosition: SeatPosition.lower, positionNumber: 9),
    SeatPositionModel(seatPosition: SeatPosition.middle, positionNumber: 10),
    SeatPositionModel(seatPosition: SeatPosition.upper, positionNumber: 11),
    SeatPositionModel(seatPosition: SeatPosition.lower, positionNumber: 12),
    SeatPositionModel(seatPosition: SeatPosition.middle, positionNumber: 13),
    SeatPositionModel(seatPosition: SeatPosition.upper, positionNumber: 14),
    SeatPositionModel(seatPosition: SeatPosition.sideLower, positionNumber: 15),
    SeatPositionModel(seatPosition: SeatPosition.sideUpper, positionNumber: 16),
    SeatPositionModel(seatPosition: SeatPosition.lower, positionNumber: 17),
    SeatPositionModel(seatPosition: SeatPosition.middle, positionNumber: 18),
    SeatPositionModel(seatPosition: SeatPosition.upper, positionNumber: 19),
    SeatPositionModel(seatPosition: SeatPosition.lower, positionNumber: 20),
    SeatPositionModel(seatPosition: SeatPosition.middle, positionNumber: 21),
    SeatPositionModel(seatPosition: SeatPosition.upper, positionNumber: 22),
    SeatPositionModel(seatPosition: SeatPosition.sideLower, positionNumber: 23),
    SeatPositionModel(seatPosition: SeatPosition.sideUpper, positionNumber: 24),
    SeatPositionModel(seatPosition: SeatPosition.lower, positionNumber: 25),
    SeatPositionModel(seatPosition: SeatPosition.middle, positionNumber: 26),
    SeatPositionModel(seatPosition: SeatPosition.upper, positionNumber: 27),
    SeatPositionModel(seatPosition: SeatPosition.lower, positionNumber: 28),
    SeatPositionModel(seatPosition: SeatPosition.middle, positionNumber: 29),
    SeatPositionModel(seatPosition: SeatPosition.upper, positionNumber: 30),
    SeatPositionModel(seatPosition: SeatPosition.sideLower, positionNumber: 31),
    SeatPositionModel(seatPosition: SeatPosition.sideUpper, positionNumber: 32),
  ];

  static List<SeatPositionModel> getSideSeats() {
    return seats
        .where((seat) =>
            seat.seatPosition == SeatPosition.sideLower ||
            seat.seatPosition == SeatPosition.sideUpper)
        .toList();
  }

  static List<SeatPositionModel> getMainSeats() {
    return seats
        .where((seat) =>
            seat.seatPosition == SeatPosition.lower ||
            seat.seatPosition == SeatPosition.middle ||
            seat.seatPosition == SeatPosition.upper)
        .toList();
  }
}
