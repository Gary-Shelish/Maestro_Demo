import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maestrohomescreen/my_countdown_timer.dart';
import 'package:maestrohomescreen/providers.dart';

class Timer extends ConsumerStatefulWidget {
  const Timer({Key? key}) : super(key: key);
  @override
  ConsumerState<Timer> createState() => _TimerState();
}

class _TimerState extends ConsumerState<Timer> {
  Duration? countDownDuration;

  void _onDurationSelected(Duration duration) {
    setState(() {
      countDownDuration = duration;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Container(
              width: 150,
              color: const Color(0xff2c2c2c),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        setState(() {
                          countDownDuration = const Duration(minutes: 15);
                        });
                      },
                      child: const Text('15 Minutes',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          countDownDuration = const Duration(minutes: 30);
                        });
                      },
                      child: const Text('30 Minutes',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          countDownDuration = const Duration(minutes: 60);
                        });
                        ref
                            .read(durationProvider)
                            .updateDuration(const Duration(minutes: 60));
                      },
                      child: const Text('60 Minutes',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          countDownDuration = const Duration(minutes: 90);
                        });
                      },
                      child: const Text('90 Minutes',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          countDownDuration = const Duration(minutes: 130);
                        });
                      },
                      child: const Text('130 Minutes',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Custom',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
            // if (countDownDuration != null) MyCountdownTimer(countDownDuration!),
            // if (countDownDuration == const Duration(minutes: 15))
            //   const MyCountdownTimer(Duration(minutes: 15)),
            // if (countDownDuration == const Duration(minutes: 60))
            //   const MyCountdownTimer(Duration(minutes: 60)),
            // if (countDownDuration == const Duration(minutes: 30))
            //   const MyCountdownTimer(Duration(minutes: 30)),
            // if (countDownDuration == const Duration(minutes: 90))
            //   const MyCountdownTimer(Duration(minutes: 90)),
            // if (countDownDuration == const Duration(minutes: 130))
            //   const MyCountdownTimer(Duration(minutes: 130)),
            if (countDownDuration != null)
              MyCountdownTimer(countDownDuration!,
                  onDurationSelected: _onDurationSelected)
          ],
        ),
      ),
    );
  }
}
