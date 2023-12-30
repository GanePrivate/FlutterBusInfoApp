import 'package:flutter/material.dart';

StatelessWidget createScheduleTableContainer(String schedule) {
  if (schedule == 'A1') {
    return Container(
      color: const Color(0xFFF6D6D6).withOpacity(0.5),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('8',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text(
                          '00,  05,  10,  15,  20,  25,\n30,  35,  40,  45,  50,  55'),
                    ),
                    DataCell(Text('15',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  15,  30,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('9',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text(
                          '00,  05,  10,  15,  20,  25,\n30,  35,  40,  50, 55'),
                    ),
                    DataCell(Text('16',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  15,  30,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('00,  05,  10,  15,  20,  25,\n30,  35,  45,  55'),
                    ),
                    DataCell(Text('17',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  10,  25,  40')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  15,  25,  35,  45,  55')),
                    DataCell(Text('18',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  15,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('12',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  15,  25,  35,  45,  55')),
                    DataCell(Text('19',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  15,  30,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  20,  35,  50')),
                    DataCell(Text('20',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  30')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('14',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  15,  25,  35,  45,  55')),
                    DataCell(Text('21',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else if (schedule == 'A2') {
    return Container(
      color: const Color(0xFFF6D6D6).withOpacity(0.5),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('8',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('20,  50'),
                    ),
                    DataCell(Text('15',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  10,  20,  30,  40,  50')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('9',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('20,  50'),
                    ),
                    DataCell(Text('16',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text(
                        '00,  05,  10,  15,  25,  30,\n35,  40,  45,  50,  55')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('20 50'),
                    ),
                    DataCell(Text('17',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text(
                        '00,  10,  15,  20,  25,  30,\n35,  40,  45,  55')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  10,  20,  30,  40,  50')),
                    DataCell(Text('18',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  10,  20,  30,  40,  50')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('12',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  10,  20,  30,  40,  50')),
                    DataCell(Text('19',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  15,  30,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  15,  30,  45')),
                    DataCell(Text('20',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  15,  30,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('14',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  10,  20,  30,  40,  45,\n50,  55')),
                    DataCell(Text('21',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  15,  30,  45')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else if (schedule == 'B1') {
    return Container(
      color: const Color(0xFFF6D6D6).withOpacity(0.5),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('8',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('00,  10,  20,  35,  45'),
                    ),
                    DataCell(Text('15',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  35')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('9',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('00,  05,  25,  35,  50'),
                    ),
                    DataCell(Text('16',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('00,  10,  30,  55'),
                    ),
                    DataCell(Text('17',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('10,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  25,  50')),
                    DataCell(Text('18',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  35')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('12',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('25')),
                    DataCell(Text('19',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('35')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('35')),
                    DataCell(Text('20',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('25')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('14',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  35')),
                    DataCell(Text('21',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else if (schedule == 'B2') {
    return Container(
      color: const Color(0xFFF6D6D6).withOpacity(0.5),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('8',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('50'),
                    ),
                    DataCell(Text('15',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('9',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('40'),
                    ),
                    DataCell(Text('16',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('05,  50'),
                    ),
                    DataCell(Text('17',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  30,  55')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('15,  40')),
                    DataCell(Text('18',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('12',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('10')),
                    DataCell(Text('19',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                    DataCell(Text('20',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('40')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('14',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                    DataCell(Text('21',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('30')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else if (schedule == 'C1') {
    return Container(
      color: const Color(0xFFF6D6D6).withOpacity(0.5),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('8',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('10,  35'),
                    ),
                    DataCell(Text('15',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  35')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('9',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('00,  25,  50'),
                    ),
                    DataCell(Text('16',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('10,  55'),
                    ),
                    DataCell(Text('17',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('10,  45')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('25,  50')),
                    DataCell(Text('18',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('5,  35')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('12',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('25')),
                    DataCell(Text('19',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('35')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('35')),
                    DataCell(Text('20',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('25')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('14',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05,  35')),
                    DataCell(Text('21',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('05')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else if (schedule == 'C2') {
    return Container(
      color: const Color(0xFFF6D6D6).withOpacity(0.5),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('時', style: TextStyle(fontSize: 16))),
                DataColumn(label: Text('分', style: TextStyle(fontSize: 16))),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('8',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('50'),
                    ),
                    DataCell(Text('15',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('9',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('40'),
                    ),
                    DataCell(Text('16',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(
                      Text('05,  50'),
                    ),
                    DataCell(Text('17',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('00,  30,  55')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('11',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('15,  40')),
                    DataCell(Text('18',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('12',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('10')),
                    DataCell(Text('19',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('13',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                    DataCell(Text('20',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('40')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('14',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('20,  50')),
                    DataCell(Text('21',
                        style: TextStyle(fontWeight: FontWeight.bold))),
                    DataCell(Text('30')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else {
    return Container();
  }
}
