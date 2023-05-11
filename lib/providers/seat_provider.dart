import 'package:flutter/material.dart';
import 'package:seat_finder/models/seat_position_model.dart';
import 'package:seat_finder/repositories/seat_repository.dart';

class SeatProvider extends ChangeNotifier {
  SeatPositionModel? selectedSeat;
  bool typingValid = false;

  void selectSeatBySearch(String text) {
    int seatNo = int.parse(text);
    SeatPositionModel seat = SeatRepository.seats
        .where((pos) => pos.positionNumber == seatNo)
        .toList()
        .first;
    selectedSeat = seat;
    notifyListeners();
  }

  void selectSeatByClick(SeatPositionModel seat) {
    if (seat.positionNumber == selectedSeat?.positionNumber) {
      selectedSeat = null;
    } else {
      selectedSeat = seat;
    }
    notifyListeners();
  }

  void validateTyping(String? text) {
    if (text?.isNotEmpty == true) {
      typingValid = true;
    } else {
      typingValid = false;
    }
    notifyListeners();
  }
}
