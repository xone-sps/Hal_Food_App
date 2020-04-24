import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hal_food_app/src/constant/color.dart';
class Delivery_Status extends StatefulWidget {
  Delivery_Status() : super();

  final String title = "Stepper Demo";

  @override
  Delivery_StatusState createState() => Delivery_StatusState();
}

class Delivery_StatusState extends State<Delivery_Status> {
  //
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Packing'),
      content: Text('ຮັບອາຫານ ແລະຈັດສົ່ງ'),
      isActive: true,
    ),
    Step(
      title: Text('On Delivery'),
      content: Text('ກຳລັງຈັດສົ່ງ!'),
      isActive: true,
    ),
    Step(
      title: Text('Complete'),
      content: Text('ສົ່ງສຳເລັດແລ້ວ'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: mainColor));
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        iconTheme: IconThemeData(color: secondColor),
        title: Text("Delivery Status",style: TextStyle(color: secondColor),),
      ),
      // Body
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: Stepper(
          currentStep: this.current_step,
          steps: steps,
          type: StepperType.horizontal,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            });
          },
        ),
      ),
    );
  }
}
