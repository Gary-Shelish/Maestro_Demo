import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCountdownTimer extends ConsumerStatefulWidget {
  const MyCountdownTimer(this.countDownDuration, {Key? key}) : super(key: key);

  final Duration countDownDuration;

  @override
  ConsumerState<MyCountdownTimer> createState() => _MyCountdownTimerState();
}

class _MyCountdownTimerState extends ConsumerState<MyCountdownTimer> {
  CountDownController countDownController = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: GestureDetector(
          onTap: () {
            countDownController.start();
          },
          child: CircularCountDownTimer(
            duration: widget.countDownDuration.inSeconds,
            initialDuration: 5,
            controller: countDownController,
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            ringColor: Colors.grey[300]!,
            ringGradient: null,
            fillColor: Colors.purpleAccent[100]!,
            fillGradient: null,
            backgroundColor: Colors.purple[500],
            backgroundGradient: null,
            strokeWidth: 20.0,
            strokeCap: StrokeCap.round,
            textStyle: const TextStyle(
                fontSize: 33.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            textFormat: CountdownTextFormat.S,
            isReverse: true,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: false,
            onStart: () {
              debugPrint('Countdown Started: ');
            },
            onComplete: () {
              debugPrint('Countdown Ended');
            },
            onChange: (String timeStamp) {
              debugPrint('Countdown Changed $timeStamp');
            },
            timeFormatterFunction: (defaultFormatterFunction, duration) {
              if (duration.inSeconds == 0) {
                return "Start";
              } else {
                String minutes = duration.inMinutes.toString();
                String seconds =
                    (duration.inSeconds - (duration.inMinutes * 60))
                        .toString()
                        .padLeft(2, '0');
                return "$minutes:$seconds";
              }
            },
          ),
        ),
      ),
    );
  }
}
