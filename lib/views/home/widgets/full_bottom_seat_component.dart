part of '../home_page.dart';

class FullBottomSeatComponent extends StatelessWidget {
  final List<SeatPositionModel> seatPosition;
  const FullBottomSeatComponent({
    Key? key,
    required this.seatPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: seatPosition.map((pos) {
            return Padding(
              padding: EdgeInsets.only(
                left: pos.seatPosition == SeatPosition.lower ? 5 : 0,
                right: pos.seatPosition == SeatPosition.upper ? 5 : 2,
                top: 5,
              ),
              child: SingleSeatComponent(
                seatNumber: pos.positionNumber,
                seatPosition: pos.seatPosition,
              ),
            );
          }).toList(),
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
