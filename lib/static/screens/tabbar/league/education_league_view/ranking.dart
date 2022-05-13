import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Ranking extends StatefulWidget {
  @override
  _RankingState createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
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
      Employee(1, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(2, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(3, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(4, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(5, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(6, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(7, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(8, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(9, 'Muhammad Hassan', "1,109,701", 413295, 109701),
      Employee(10, 'Muhammad Hassan', "1,109,701", 413295, 109701),
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
              padding:  EdgeInsets.only(left:width*0.03),
              child: Text(
                "Rankings",
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: height * 0.01),
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
                    GridNumericColumn(mappingName: 'Rank', headerText: 'Rank'),
                    GridTextColumn(mappingName: 'Player', headerText: 'Player'),
                    GridTextColumn(
                        mappingName: 'Net_Worth', headerText: 'Net Worth'),
                    GridNumericColumn(mappingName: 'Cash', headerText: 'Cash'),
                    GridNumericColumn(
                        mappingName: 'Total_Gain_or_Loss',
                        headerText: 'Total Gain or Loss'),
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
  Employee(this.Rank, this.Player, this.Net_Worth, this.Cash,
      this.Total_Gain_or_Loss);

  final int Rank;
  final String Player;
  final String Net_Worth;
  final double Cash;
  final double Total_Gain_or_Loss;
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
      case 'Rank':
        return employee.Rank;
        break;
      case 'Player':
        return employee.Player;
        break;
      case 'Net_Worth':
        return employee.Net_Worth;
        break;
      case 'Cash':
        return employee.Cash;
        break;
      case 'Total_Gain_or_Loss':
        return employee.Total_Gain_or_Loss;
        break;
      default:
        return ' ';
        break;
    }
  }
}
