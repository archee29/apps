import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({
    super.key,
  });

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TableCalendar(
        focusedDay: _focusedDay,
        firstDay: DateTime(1950),
        lastDay: DateTime(2100),
        headerStyle: HeaderStyle(
          decoration: BoxDecoration(color: AppColors.primary),
          headerMargin: const EdgeInsets.only(
            bottom: 8.0,
          ),
          titleTextStyle: const TextStyle(color: Colors.white),
          formatButtonDecoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          formatButtonTextStyle: const TextStyle(color: Colors.white),
          leftChevronIcon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          rightChevronIcon: const Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        ),
        calendarStyle: CalendarStyle(
          todayDecoration:
              BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
          todayTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'poppins',
            color: Colors.white,
            fontSize: 14,
          ),
          weekendTextStyle: TextStyle(
            color: AppColors.primary,
          ),
          selectedDecoration: BoxDecoration(
            color: AppColors.success,
            shape: BoxShape.circle,
          ),
          selectedTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'poppins',
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          }
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
      ),
    );
  }
}
