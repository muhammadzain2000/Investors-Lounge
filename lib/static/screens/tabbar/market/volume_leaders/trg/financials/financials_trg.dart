import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FinancialsTrg extends StatefulWidget {
  @override
  _FinancialsTrgState createState() => _FinancialsTrgState();
}

class _FinancialsTrgState extends State<FinancialsTrg> {
  bool status = false;

  //for income statement
  List<IncomeStatement> income_statement = <IncomeStatement>[];
  IncomeStatementDataSource _income_statement_data;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
    income_statement = getIncomeStatementData();
    _income_statement_data =
        IncomeStatementDataSource.IncomeStatementDataSource(
            income_statement_data: income_statement);
  }

  List<IncomeStatement> getIncomeStatementData() {
    return [
      IncomeStatement(
          'Earning Per Share', 8.15, 17.60, 23.24, 26.22, 18.16, 11.11),
      IncomeStatement(
          'Divident Per Share', 12.15, 12.10, 12.18, 16.43, 28.12, 2.24),
      IncomeStatement(
          'Return on Equity', 34.52, 32.33, 40.48, 6.59, 15.21, 3.35),
      IncomeStatement(
          'Return on Investment', 8.15, 17.60, 23.24, 26.22, 18.16, 11.11),
      IncomeStatement(
          'Gross Profit Margin', 12.15, 12.10, 12.18, 16.43, 28.12, 2.24),
      IncomeStatement(
          'Net Profit Margin (%)', 34.52, 32.33, 40.48, 6.59, 15.21, 3.35),
      IncomeStatement(
          'Operating Profit Margin', 8.15, 17.60, 23.24, 26.22, 18.16, 11.11),
      IncomeStatement(
          'Retention Ratio (%)', 12.15, 12.10, 12.18, 16.43, 28.12, 2.24),
      IncomeStatement(
          'Payout Ratio (%)', 34.52, 32.33, 40.48, 6.59, 15.21, 3.35),
    ];
  }

  //for balance sheet
  List<Employee> employees = <Employee>[];

  EmployeeDataSource employeeDataSource;

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    "values in millions",
                    style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                  ),
                  Spacer(),
                  Text(
                    "Quarterly",
                    style: TextStyle(
                        color: primary,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Transform.scale(
                    scale: 3.5.sp,
                    child: Switch.adaptive(
                      thumbColor: MaterialStateProperty.all(primary),
                      trackColor: MaterialStateProperty.all(Colors.grey[200]),
                      // activeColor: Colors.blueAccent,
                      // activeTrackColor: Colors.blue.withOpacity(0.4),
                      // inactiveThumbColor: Colors.orange,
                      // inactiveTrackColor: Colors.black87,
                      splashRadius: 50,
                      value: status,
                      onChanged: (value) => setState(() => this.status = value),
                    ),
                  ),
                  Text(
                    "Anually",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.00,
            ),
            Container(
              height: height * 0.04,
              width: width * 1,
              color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.035),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Income Statement",
                      style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                    )),
              ),
            ),
            SfDataGridTheme(
              data: SfDataGridThemeData(
                  frozenPaneLineWidth: 0,
                  frozenPaneLineColor: Colors.transparent,
                  gridLineColor: Colors.grey[200]),

              //for income statement
              child: SfDataGrid(
                verticalScrollPhysics: ScrollPhysics(),
                frozenColumnsCount: 1,
                columnWidthMode: ColumnWidthMode.auto,
                //defaultColumnWidth: width*1,
                source: _income_statement_data,
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
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.04,
              width: width * 1,
              color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.035),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Balance Sheet",
                      style: TextStyle(fontSize: 17, color: Colors.grey[700]),
                    )),
              ),
            ),
            //SizedBox(height: height*0.02,),
            SfDataGridTheme(
              data: SfDataGridThemeData(
                  frozenPaneLineWidth: 0,
                  frozenPaneLineColor: Colors.transparent,
                  gridLineColor: Colors.grey[200]),
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
          ],
        ),
      ),
    );
  }
}

//for income statement
class IncomeStatement {
  IncomeStatement(this.heading, this._2021, this._2020, this._2019, this._2018,
      this._2017, this._2016);

  final String heading;
  final double _2021;
  final double _2020;
  final double _2019;
  final double _2018;
  final double _2017;
  final double _2016;
}

class IncomeStatementDataSource extends DataGridSource<IncomeStatement> {
  IncomeStatementDataSource.IncomeStatementDataSource(
      {List<IncomeStatement> income_statement_data}) {
    _income_statement_data = income_statement_data;
  }

  List<IncomeStatement> _income_statement_data;

  @override
  List<IncomeStatement> get dataSource => _income_statement_data;

  @override
  getValue(IncomeStatement income_statement, String columnName) {
    switch (columnName) {
      case 'heading':
        return income_statement.heading;
        break;
      case '_2021':
        return income_statement._2021;
        break;
      case '_2020':
        return income_statement._2020;
        break;
      case '_2019':
        return income_statement._2019;
        break;
      case '_2018':
        return income_statement._2018;
        break;
      case '_2017':
        return income_statement._2017;
        break;
      case '_2016':
        return income_statement._2016;
        break;
      default:
        return ' ';
        break;
    }
  }
}

//for balance sheet
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
