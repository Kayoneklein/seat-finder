part of '../home_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController seatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<SeatPositionModel> sideSeats = SeatRepository.getSideSeats();
    List<SeatPositionModel> mainSeats = SeatRepository.getMainSeats();
    List<SeatPositionModel> firstRow = mainSeats.take(3).toList();
    List<SeatPositionModel> secondRow = mainSeats.skip(3).take(6).toList();
    List<SeatPositionModel> thirdRow = mainSeats.skip(9).take(6).toList();
    List<SeatPositionModel> fourthRow = mainSeats.skip(15).take(6).toList();
    List<SeatPositionModel> fifthRow = mainSeats.skip(21).take(3).toList();

    SeatProvider seatProvider = Provider.of<SeatProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(20),
                Text(
                  'Seat Finder',
                  style: TextSize.h3(),
                ),
                const VerticalSpace(30),
                Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: TextFormField(
                        controller: seatController,
                        onChanged: (v) {
                          seatProvider.validateTyping(seatController.text);
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter Seat Number...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: CustomColors.blue,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: CustomColors.blue,
                              width: 2,
                            ),
                          ),
                          hintStyle: TextSize.body(),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          seatProvider.selectSeatBySearch(seatController.text);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.23,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: seatProvider.typingValid
                                ? CustomColors.blue
                                : CustomColors.grey,
                          ),
                          child: Center(
                              child: Text(
                            'Find',
                            style: TextSize.body(
                              color: CustomColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(30),

                /// THE ENTIRE DISPLAY BELOW COULD HAVE BEEN DONE PROGRAMMATICALLY USING LOOPS
                /// BUT I HAD TO STATICALLY DO IT DUE TO TIME
                /// IT CAN BE REFACTORED WITH LOOP FOR BETTER DISPLAY
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FullBottomSeatComponent(seatPosition: firstRow),
                    BottomRowSeat(seatPositionModel: sideSeats[0]),
                  ],
                ),
                const VerticalSpace(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        FullTopSeatComponent(
                          seatPosition: secondRow.take(3).toList(),
                        ),
                        const VerticalSpace(1),
                        FullBottomSeatComponent(
                          seatPosition: secondRow.skip(3).toList(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TopRowSeat(seatPositionModel: sideSeats[1]),
                        const VerticalSpace(1),
                        BottomRowSeat(seatPositionModel: sideSeats[2]),
                      ],
                    ),
                  ],
                ),
                const VerticalSpace(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        FullTopSeatComponent(
                            seatPosition: thirdRow.take(3).toList()),
                        const VerticalSpace(1),
                        FullBottomSeatComponent(
                          seatPosition: thirdRow.skip(3).toList(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TopRowSeat(seatPositionModel: sideSeats[3]),
                        const VerticalSpace(1),
                        BottomRowSeat(seatPositionModel: sideSeats[4]),
                      ],
                    ),
                  ],
                ),
                const VerticalSpace(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        FullTopSeatComponent(
                            seatPosition: fourthRow.take(3).toList()),
                        const VerticalSpace(1),
                        FullBottomSeatComponent(
                            seatPosition: fourthRow.skip(3).toList()),
                      ],
                    ),
                    Column(
                      children: [
                        TopRowSeat(seatPositionModel: sideSeats[5]),
                        const VerticalSpace(1),
                        BottomRowSeat(seatPositionModel: sideSeats[6]),
                      ],
                    ),
                  ],
                ),
                const VerticalSpace(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        FullTopSeatComponent(
                            seatPosition: fifthRow.take(3).toList()),
                        const VerticalSpace(1),
                        // FullBottomSeatComponent(),
                      ],
                    ),
                    Column(
                      children: [
                        TopRowSeat(seatPositionModel: sideSeats[7]),
                        const VerticalSpace(1),
                        // BottomRowSeat(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
