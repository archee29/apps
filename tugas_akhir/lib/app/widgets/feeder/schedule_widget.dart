import 'package:flutter/material.dart';
import 'package:tugas_akhir/app/model/feeder.dart';

class FeederSchedule extends StatelessWidget {
  final Feeder schedule;
  final Function() onDelete;
  final Function()? onTap;
  const FeederSchedule({
    Key? key,
    required this.schedule,
    required this.onDelete,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        schedule.title,
      ),
      subtitle: Text(
        schedule.date.toString(),
      ),
      onTap: onTap,
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onDelete,
      ),
    );
  }
}
