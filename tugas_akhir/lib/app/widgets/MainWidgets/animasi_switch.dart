import 'package:flutter/material.dart';
import 'package:tugas_akhir/app/styles/color_theme.dart';

class AnimasiSwitch extends StatelessWidget {
  final List<bool> isToggled;
  final int index;
  final void Function() onTap;

  const AnimasiSwitch({
    Key? key,
    required this.isToggled,
    required this.index,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 28,
        width: 46,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: Theme.of(context).primaryColor,
          ),
        ),
        child: Stack(
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                height: 30,
                width: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.transparent,
                ),
              ),
              secondChild: Container(
                height: 30,
                width: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).primaryColor,
                ),
              ),
              crossFadeState: isToggled[index]
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: Duration(
                milliseconds: 200,
              ),
            ),
            AnimatedAlign(
              alignment: isToggled[index]
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                height: 42 * 0.5,
                width: 42 * 0.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isToggled[index]
                      ? ColorTheme.white1
                      : Theme.of(context).primaryColor,
                ),
              ),
              duration: Duration(
                microseconds: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
