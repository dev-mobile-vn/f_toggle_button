library f_toggle_button;

import 'package:flutter/material.dart';

class FToggleButton extends StatefulWidget {
  final bool isEnable;
  final Function(bool) onChangeStatus;
  final double width, height;
  final double widthSwitch, heightSwitch;
  final Color bgSwitchLeft, bgDisable;
  final Color borderColorEnable, borderColorDisEnable;
  final Color bgSwitchRight;

  const FToggleButton({
    super.key,
    required this.isEnable,
    required this.onChangeStatus,
    this.width = 48,
    this.height = 24,
    required this.bgSwitchRight,
    required this.bgSwitchLeft,
    required this.bgDisable,
    required this.borderColorEnable,
    required this.borderColorDisEnable,
    this.widthSwitch = 22,
    this.heightSwitch = 24,
  });

  @override
  State<FToggleButton> createState() => _FToggleButtonState();
}

class _FToggleButtonState extends State<FToggleButton> {
  bool isEnable = false;

  @override
  void initState() {
    super.initState();
    isEnable = widget.isEnable;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEnable = !isEnable;
        });
        widget.onChangeStatus(isEnable);
      },
      child: Container(
          width: widget.width,
          height: widget.height,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: isEnable ? widget.bgSwitchLeft : widget.bgDisable,
            border: Border.all(
                color: isEnable
                    ? widget.borderColorEnable
                    : widget.borderColorDisEnable,
                width: isEnable ? 1 : 0),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: isEnable ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            height: widget.heightSwitch,
            width: widget.widthSwitch,
            decoration: BoxDecoration(
                color: isEnable ? widget.bgSwitchRight : Colors.white,
                shape: BoxShape.circle),
          )),
    );
  }
}
