part of '../home_page.dart';

class BottomRowSeat extends StatelessWidget {
  final SeatPositionModel seatPositionModel;
  const BottomRowSeat({Key? key, required this.seatPositionModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SeatProvider seatProvider = Provider.of<SeatProvider>(context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
          child: SingleSeatComponent(
            seatNumber: seatPositionModel.positionNumber,
            seatPosition: seatPositionModel.seatPosition,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 30,
            // width: 55,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
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
