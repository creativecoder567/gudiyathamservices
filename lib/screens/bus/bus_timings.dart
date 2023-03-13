import 'package:flutter/material.dart';

class BusTimings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(label: Text('Route')),
        DataColumn(label: Text('Bus Timings')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Chennai')),
          DataCell(Text('03.15, 03.30, 04.10, 04.15, 04.30, 04.35, 05.05, 05.20, 05.45, 06.30, 06.40, 06.50, 07.10, 7.25, 07.55, 08.15, 08.25, 08.35, 08.45, 08.55, 09.10, 09.40, 10.10, 10.30, 10.40, 10.50, 11.00, 11.10, 11.40, 11.55, 12.20, 12.50, 13.10. 13.20, 13.30, 13.50, 14.25, 14.40, 15.00, 15.35, 15.40, 16.05, 16.35, 16.40, 16.50, 17.00, 17.15, 18.05, 18.20, 18.35, 18.40, 19.10, 19.25, 19.55, 20.25 20.35, 20.45, 2055.')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Sholinganallur')),
          DataCell(Text('04.25')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Sirucheri')),
          DataCell(Text('03.55')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Tambaram')),
          DataCell(Text('04.10, 05.00, 05.20, 07.15, 11.37, 16.22.')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Kancheepuram')),
          DataCell(Text('05.50, 09.05')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Chidambaram')),
          DataCell(Text('04.10, 05.40, 11.25, 12.45, 20.10')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Tiruttani')),
          DataCell(Text('05.25, 06.25, 14.15')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Marakkanam')),
          DataCell(Text('05.30')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Melmaruvathur')),
          DataCell(Text('12.30')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Puducherry')),
          DataCell(Text('05.50')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Chittoor')),
          DataCell(Text('04.50, 09.25, 13.15')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Palamaner')),
          DataCell(Text('06.20, 12.10, 17.40')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Madanapalle')),
          DataCell(Text('04.50, 09.10, 12.30')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to K.G.F')),
          DataCell(Text('04.40, 05.45, 08.00, 09.10, 10.55, 11.30, 12.40, 12.55, 13.00, 14.15, 16.07, 16.50, 17.05, 18.10, 19.00, 19.25, 20.30, 22.05')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Bangalore (Via) Pernambut')),
          DataCell(Text('05.25, 07.55, 15.05')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Bangalore (Via) Vellore')),
          DataCell(Text('04.15, 06.40 08.00 16.10, 21.25, 22.15')),
        ]),
        DataRow(cells: [
          DataCell(Text('Gudiyatham to Tirupati')),
          DataCell(Text('04.50')),
        ]),
      ],
    );
  }
}