import 'package:app_acomo/presentation/component/bottomNavigator/bottom_navigator_component.dart';
import 'package:flutter/material.dart';

import 'package:app_acomo/presentation/component/appbar/info_appbar_component.dart';

import 'package:app_acomo/utils/theme_text/theme_text_utils.dart';

class DashboardPresentation extends StatelessWidget {
  const DashboardPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const InfoAppbarComponent(),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: datatable(width),
          ),
        ),
      ),  
      bottomNavigationBar: const BottomNavigatorComponent(),
    );
  }

  Widget datatable(double width) {
    return DataTable(
      columns: const [
        DataColumn(
          label: Expanded(
            child: Text(
              'Tipo1',
              style: textFSItalic,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Código',
              style: textFSItalic,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Ud. Transfiere',
              style: textFSItalic,
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Banco a transferir',
              style: textFSItalic,
            ),
          ),
        ),
      ],
      rows: datatableDataRow(),
    );
  }

  List<DataRow> datatableDataRow() {
    List<DataRow> dataRow = [];
    for (var i = 0; i < 30; i++) {
      dataRow.add(DataRow(cells: <DataCell>[
        DataCell(Text('Compra $i')),
        DataCell(Text('000$i')),
        DataCell(Text('$i 50.5')),
        DataCell(Text('BBVA $i')),
      ]));
    }
    return dataRow;
  }
}
