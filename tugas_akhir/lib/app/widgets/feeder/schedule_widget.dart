import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

class CustomScheduleInput extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool disabled;
  final EdgeInsetsGeometry margin;
  final bool obsecureText;
  final Widget? suffixIcon;

  const CustomScheduleInput({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.disabled = false,
    this.margin = const EdgeInsets.only(bottom: 16),
    this.obsecureText = false,
    this.suffixIcon,
  });

  @override
  State<CustomScheduleInput> createState() => _CustomScheduleInputState();
}

class _CustomScheduleInputState extends State<CustomScheduleInput> {
  TextEditingController dateInput = TextEditingController();
  DateTime? pickedDate;
  Timestamp? scheduleTimeStamp;

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 14, right: 14, top: 4),
        margin: widget.margin,
        decoration: BoxDecoration(
          color: (widget.disabled == false)
              ? Colors.transparent
              : AppColors.primaryExtraSoft,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: AppColors.secondaryExtraSoft),
        ),
        child: TextField(
          onTap: () async {
            pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(const Duration(days: 0)),
              lastDate: DateTime(2100),
            );
            if (pickedDate != null) {
              setState(() {
                dateInput.text =
                    '${pickedDate!.year} - ${pickedDate!.month} - ${pickedDate!.day}';
                scheduleTimeStamp = Timestamp.fromMicrosecondsSinceEpoch(
                    pickedDate!.microsecondsSinceEpoch);
              });
            }
          },
          readOnly: widget.disabled,
          obscureText: widget.obsecureText,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'poppins',
          ),
          maxLines: 1,
          controller: widget.controller,
          decoration: InputDecoration(
            suffixIcon: widget.suffixIcon ?? const SizedBox(),
            label: Text(
              widget.label,
              style: TextStyle(
                color: AppColors.secondaryExtraSoft,
                fontSize: 14,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: InputBorder.none,
            hintText: widget.hint,
            hintStyle: TextStyle(
              fontSize: 14,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
              color: AppColors.secondarySoft,
            ),
          ),
        ),
      ),
    );
  }
}
