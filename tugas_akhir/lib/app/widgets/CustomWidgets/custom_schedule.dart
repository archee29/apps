import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

class CustomSchedule extends StatefulWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final EdgeInsetsGeometry margin;
  final bool disabled;
  final Widget? icon;

  const CustomSchedule({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.margin = const EdgeInsets.only(bottom: 16),
    this.disabled = false,
    this.icon,
  });

  @override
  State<CustomSchedule> createState() => _CustomScheduleState();
}

class _CustomScheduleState extends State<CustomSchedule> {
  DateTime? picked;
  Timestamp? scheduledDateTimeStamp;
  final TextEditingController scheduleController = TextEditingController();
  void pickDateDialog() async {
    picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(
        const Duration(days: 0),
      ),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        scheduleController.text =
            '${picked!.year} - ${picked!.month} - ${picked!.day}';
        scheduledDateTimeStamp = Timestamp.fromMicrosecondsSinceEpoch(
            picked!.microsecondsSinceEpoch);
      });
    }
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
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: AppColors.secondaryExtraSoft),
        ),
        child: TextField(
          enableInteractiveSelection: widget.disabled,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'poppins',
          ),
          maxLines: 1,
          controller: scheduleController,
          enabled: false,
          onTap: () {
            pickDateDialog();
          },
          decoration: InputDecoration(
            icon: widget.icon,
            fillColor: AppColors.primary,
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
