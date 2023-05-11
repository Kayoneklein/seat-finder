part of '../home_page.dart';

class TopRowSeat extends StatelessWidget {
  final SeatPositionModel seatPositionModel;
  const TopRowSeat({Key? key, required this.seatPositionModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
          child: SingleSeatComponent(
            seatNumber: seatPositionModel.positionNumber,
            seatPosition: seatPositionModel.seatPosition,
            isTopRow: true,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 30,
            // width: 55,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 5,
                  color: Colors.blue,
                ),
                left: BorderSide(
                  width: 5,
                  color: Colors.blue,
                ),
                right: BorderSide(
                  width: 5,
                  color: Colors.blue,
                ),
              ),
            ),
            // child: ,
          ),
        ),
      ],
    );
  }
}
