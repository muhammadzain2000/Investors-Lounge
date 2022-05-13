import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Positions extends StatefulWidget {
  @override
  _PositionsState createState() => _PositionsState();
}

class _PositionsState extends State<Positions> {
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
      Employee('ENGRO',180.16,56.5,56.5,28965,28965,"48205.5",-10.88),
      Employee('ENGRO',180.16,56.5,56.5,28965,28965,"48205.5",-10.88),
      Employee('ENGRO',180.16,56.5,56.5,28965,28965,"48205.5",-10.88),
      Employee('ENGRO',180.16,56.5,56.5,28965,28965,"48205.5",-10.88),
      Employee('ENGRO',180.16,56.5,56.5,28965,28965,"48205.5",-10.88),
      Employee('ENGRO',180.16,56.5,56.5,28965,28965,"48205.5",-10.88),
      Employee('ENGRO',180.16,56.5,56.5,28965,28965,"48205.5",-10.88),
    ];
  }

  int _groupValue = 1;

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Radio(
                    activeColor: primary,
                    value: 1,
                    groupValue: _groupValue,
                    onChanged: (newValue) {
                      setState(() {
                        _groupValue = newValue;
                      });
                    }),
                InkWell(
                  onTap: (){
                    setState(() {
                      _groupValue = 1;
                    });
                  },
                  child: Text(
                    "Open Positions",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  width: width * 0.1,
                ),
                Radio(
                    activeColor: primary,
                    value: 2,
                    groupValue: _groupValue,
                    onChanged: (newValue) {
                      setState(() {
                        _groupValue = newValue;
                      });
                    }),
                InkWell(
                  onTap: (){
                    setState(() {
                      _groupValue = 2;
                    });
                  },
                  child: Text(
                    "Close Positions",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ],
            ),
            Container(
              height: height*1,
              child: SfDataGridTheme(
                data: SfDataGridThemeData(
                    headerStyle: DataGridHeaderCellStyle(
                        backgroundColor: Colors.grey[200]),
                    frozenPaneLineWidth: 0,
                    frozenPaneLineColor: Colors.transparent,
                    gridLineColor: Colors.grey[200]),
                child: SfDataGrid(
                  verticalScrollPhysics: ScrollPhysics(),
                  //frozenColumnsCount: 1,
                  columnWidthMode: ColumnWidthMode.auto,
                  source: employeeDataSource,
                  columns: [
                    GridTextColumn(mappingName: 'symbol', headerText: 'Symbol'),
                    GridNumericColumn(mappingName: 'shares', headerText: 'Shares'),
                    GridNumericColumn(mappingName: 'avgPrice', headerText: 'Avg Price'),
                    GridNumericColumn(mappingName: 'currPrice', headerText: 'Curr Price'),
                    GridNumericColumn(mappingName: 'cost', headerText: 'Cost'),
                    GridNumericColumn(mappingName: 'currentValue', headerText: 'Current Value'),
                    GridNumericColumn(mappingName: 'netProfit', headerText: 'Net Profit/Loss'),
                    GridNumericColumn(mappingName: 'dailyProfit', headerText: 'Daily Profit'),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Employee {
  Employee(this.symbol, this.shares,this.avgPrice,this.currPrice,this.cost,this.currentValue,this.netProfit,this.dailyProfit);

  final String symbol;
  final double shares;
  final double avgPrice;
  final double currPrice;
  final int cost;
  final int currentValue;
  final String netProfit;
  final double dailyProfit;
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
      case 'symbol':
        return employee.symbol;
        break;
      case 'shares':
        return employee.shares;
        break;
      case 'avgPrice':
        return employee.avgPrice;
        break;
      case 'currPrice':
        return employee.currPrice;
        break;
      case 'cost':
        return employee.cost;
        break;
      case 'currentValue':
        return employee.currentValue;
        break;
      case 'netProfit':
        return employee.netProfit;
        break;
      case 'dailyProfit':
        return employee.dailyProfit;
        break;
      default:
        return ' ';
        break;
    }
  }
}
