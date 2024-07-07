import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 171,
      child: Container(
          margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
          child: Column(
            children: [
              //Blue part
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: isColor == null
                          ? AppStyles.ticketBlue
                          : AppStyles.ticketColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(21),
                          topRight: Radius.circular(21))),
                  child: Column(
                    children: [
                      // Show departure and destination  with icons in fisrt line
                      Row(
                        children: [
                          TextStyleThird(
                            text: ticket['from']['code'],
                            isColor: isColor,
                          ),
                          Expanded(child: Container()),
                          BigDot(
                            isColor: isColor,
                          ),
                          Expanded(
                              child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(
                                  randomDivider: 6,
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: isColor == null
                                          ? Colors.white
                                          : AppStyles.planeSecondColor,
                                      size: 24,
                                    )),
                              )
                            ],
                          )),
                          BigDot(
                            isColor: isColor,
                          ),
                          Expanded(child: Container()),
                          TextStyleThird(
                            text: ticket['to']['code'],
                            isColor: isColor,
                          )
                        ],
                      ),
                      const SizedBox(height: 3),
                      // Show departure and arrival cities with names in second line
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: ticket['from']['name'],
                              isColor: isColor,
                            ),
                          ),
                          Expanded(child: Container()),
                          TextStyleFourth(
                            text: ticket['flying_time'],
                            isColor: isColor,
                          ),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: ticket['to']['name'],
                              textAlign: TextAlign.end,
                              isColor: isColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
              // Circles and Dots
              Container(
                height: 20,
                color: isColor == null
                    ? AppStyles.ticketOrange
                    : AppStyles.ticketColor,
                child: Row(
                  children: [
                    BigCircle(
                      isRight: false,
                      isColor: isColor,
                    ),
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      isColor: isColor,
                      width: 6,
                    )),
                    BigCircle(
                      isRight: true,
                      isColor: isColor,
                    )
                  ],
                ),
              ),
              // Orange
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyles.ticketOrange
                        : AppStyles.ticketColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                        bottomRight:
                            Radius.circular(isColor == null ? 21 : 0))),
                child: Column(children: [
                  // Show departure and destination  with icons in fisrt line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: ticket['date'], bottomText: "DATE", isColor: isColor,),
                      AppColumnTextLayout(
                        topText: ticket['departure_time'],
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center, isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket['seat'].toString(),
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  ),
                ]),
              )
            ],
          )),
    );
  }
}
