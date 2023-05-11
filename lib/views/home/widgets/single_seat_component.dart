part of '../home_page.dart';

class SingleSeatComponent extends StatelessWidget {
  final int seatNumber;
  final SeatPosition seatPosition;
  final bool isTopRow;
  const SingleSeatComponent({
    Key? key,
    required this.seatNumber,
    required this.seatPosition,
    this.isTopRow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SeatProvider seatProvider = Provider.of<SeatProvider>(context);
    return InkWell(
      onTap: () {
        seatProvider.selectSeatByClick(
          SeatPositionModel(
              seatPosition: seatPosition, positionNumber: seatNumber),
        );
      },
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: seatProvider.selectedSeat?.positionNumber == seatNumber
              ? CustomColors.darkBlue
              : Colors.blue.shade200,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection:
                isTopRow ? VerticalDirection.up : VerticalDirection.down,
            children: [
              Text(
                '$seatNumber',
                style: TextSize.body(
                  color: seatProvider.selectedSeat?.positionNumber == seatNumber
                      ? CustomColors.white
                      : CustomColors.darkBlue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const VerticalSpace(3),
              Text(
                PositionToString.position(seatPosition),
                style: TextSize.bodySmall(
                  color: seatProvider.selectedSeat?.positionNumber == seatNumber
                      ? CustomColors.white
                      : CustomColors.darkBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
