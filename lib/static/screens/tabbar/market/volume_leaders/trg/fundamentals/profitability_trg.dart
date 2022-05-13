import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ProfitabilityTrg extends StatefulWidget {
  @override
  _ProfitabilityTrgState createState() => _ProfitabilityTrgState();
}

class _ProfitabilityTrgState extends State<ProfitabilityTrg> {
  List<Employee> employees = <Employee>[];

  EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  List<Employee> getEmployeeData() {
    return [
      Employee('Earning Per Share', 8.15, 17.60, 23.24, 26.22, 18.16, 11.11),
      Employee('Divident Per Share', 12.15, 12.10, 12.18, 16.43, 28.12, 2.24),
      Employee('Return on Equity', 34.52, 32.33, 40.48, 6.59, 15.21, 3.35),
      Employee('Return on Investment', 8.15, 17.60, 23.24, 26.22, 18.16, 11.11),
      Employee('Gross Profit Margin', 12.15, 12.10, 12.18, 16.43, 28.12, 2.24),
      Employee('Net Profit Margin (%)', 34.52, 32.33, 40.48, 6.59, 15.21, 3.35),
      Employee(
          'Operating Profit Margin', 8.15, 17.60, 23.24, 26.22, 18.16, 11.11),
      Employee('Retention Ratio (%)', 12.15, 12.10, 12.18, 16.43, 28.12, 2.24),
      Employee('Payout Ratio (%)', 34.52, 32.33, 40.48, 6.59, 15.21, 3.35),

    ];
  }

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top:height*0.03),
        child: SfDataGridTheme(
          data: SfDataGridThemeData(
            frozenPaneLineWidth: 0,
              frozenPaneLineColor: Colors.transparent,
              gridLineColor:  Colors.grey[200]
              
    ),
          child: SfDataGrid(
            verticalScrollPhysics: ScrollPhysics(),
            frozenColumnsCount: 1,
            columnWidthMode: ColumnWidthMode.auto,
            //defaultColumnWidth: width*1,
            source: employeeDataSource,
            columns: [
              GridTextColumn(mappingName: 'heading', headerText: 'Heading'),
              GridNumericColumn(mappingName: '_2021', headerText: '_2021'),
              GridNumericColumn(mappingName: '_2020', headerText: '_2020'),
              GridNumericColumn(mappingName: '_2019', headerText: '_2019'),
              GridNumericColumn(mappingName: '_2018', headerText: '_2018'),
              GridNumericColumn(mappingName: '_2017', headerText: '_2017'),
              GridNumericColumn(mappingName: '_2016', headerText: '_2016'),
            ],
          ),
        ),
      ),
    );
  }
}

class Employee {
  Employee(this.heading, this._2021, this._2020, this._2019, this._2018,
      this._2017, this._2016);

  final String heading;
  final double _2021;
  final double _2020;
  final double _2019;
  final double _2018;
  final double _2017;
  final double _2016;
}

class EmployeeDataSource extends DataGridSource<Employee> {
  EmployeeDataSource({List<Employee> employeeData}) {
    _employeeData = employeeData;
  }

  List<Employee> _employeeData;

  @override
  List<Employee> get dataSource => _employeeData;

  @override
  getValue(Employee employee, String columnName) {
    switch (columnName) {
      case 'heading':
        return employee.heading;
        break;
      case '_2021':
        return employee._2021;
        break;
      case '_2020':
        return employee._2020;
        break;
      case '_2019':
        return employee._2019;
        break;
      case '_2018':
        return employee._2018;
        break;
      case '_2017':
        return employee._2017;
        break;
      case '_2016':
        return employee._2016;
        break;
      default:
        return ' ';
        break;
    }
  }
}
