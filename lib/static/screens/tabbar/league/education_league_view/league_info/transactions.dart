import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
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
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
      Employee("18 May 21","10","ENGRO",180.16,98400,0,0,0,0,"view"),
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
        //physics: NeverScrollableScrollPhysics(),
        child: ListView(
          shrinkWrap: true,
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
                    "Buy Transactions",
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
                    "Sell Transactions",
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
                  onCellTap: (v){
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Comments",
                                  style: TextStyle(
                                      color: primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp),
                                )),
                            content: Text(
                              "In publishing and graphic design, Lorem ipsum is a placeholder text commonly ised to demonstrate",
                              style: TextStyle(
                                  fontSize: 16.sp, height: 1.5),
                            ),
                            actions: <Widget>[
                              // usually buttons at the bottom of the dialog
                              Padding(
                                padding: EdgeInsets.only(
                                    right: width * 0.3),
                                child: FlatButton(
                                  child: Text(
                                    "Dismiss",
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 16.sp),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  verticalScrollPhysics: ScrollPhysics(),
                  //frozenColumnsCount: 1,
                  columnWidthMode: ColumnWidthMode.auto,
                  source: employeeDataSource,
                  columns: [
                    GridTextColumn(mappingName: 'date', headerText: 'Date'),
                    GridTextColumn(mappingName: 'qty', headerText: 'Qty'),
                    GridTextColumn(mappingName: 'securities', headerText: 'Securities'),
                    GridTextColumn(mappingName: 'buyPrice', headerText: 'Buy Price'),
                    GridTextColumn(mappingName: 'buyValue', headerText: 'Buy Value'),
                    GridTextColumn(mappingName: 'commision', headerText: 'Commision'),
                    GridTextColumn(mappingName: 'cdcFees', headerText: 'CDC Fees'),
                    GridTextColumn(mappingName: 'sst', headerText: 'SST'),
                    GridTextColumn(mappingName: 'totalFees', headerText: 'Total Fees'),
                    GridTextColumn(mappingName: 'comments', headerText: 'Comments'),

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
  Employee(this.date,this.qty,this.securities,this.buyPrice,this.buyValue,this.commision,this.cdcFees,this.sst,this.totalFees,this.comments);

  final String date;
  final String qty;
  final String securities;
  final double buyPrice;
  final double buyValue;
  final double commision;
  final double cdcFees;
  final double sst;
  final double totalFees;
  final String comments;


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
      case 'date':
        return employee.date;
        break;
      case 'qty':
        return employee.qty;
        break;
      case 'securities':
        return employee.securities;
        break;
      case 'buyPrice':
        return employee.buyPrice;
        break;
      case 'buyValue':
        return employee.buyValue;
        break;
      case 'commision':
        return employee.commision;
        break;
      case 'cdcFees':
        return employee.cdcFees;
        break;
      case 'sst':
        return employee.sst;
        break;
      case 'totalFees':
        return employee.totalFees;
        break;
      case 'comments':
        return employee.comments;
        break;
      default:
        return ' ';
        break;
    }
  }
}
