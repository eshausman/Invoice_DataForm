import 'package:flutter/material.dart';
//CustOm text claSs
class CustomText extends StatelessWidget {
var text, fontsize, fontweight,color;
CustomText(this.text,this.fontsize,this.fontweight,this.color);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontsize,fontWeight: fontweight,color: color),);
  }
}


//CustOm icOn ClaSs
class CustomIcon extends StatelessWidget {
var icon, size, color;
CustomIcon(this.icon, this.size, this.color);
  @override
  Widget build(BuildContext context) {
    return Icon(icon,size: size,color: color,);
  }
}


//CustOm DataTable claSs
class CustomDataTable extends StatefulWidget {
  // var  invoice,company,invoicedate,due_date,status,amount;
  // CustomDataTable(this.invoice, this.company, this.invoicedate,this.due_date, this.status, this.amount);

  @override
  State<CustomDataTable> createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
    List<int> selectedRowIndices = [];
   List<Map<String, dynamic>> rowDataList = [
    {'invoice': 'INV-1001','company': 'Openlane','invoicedate': '05/01/2023','due_date': '05/02/2023','status': 'Unpaid','amount': '\$2,350.00'},
    {'invoice': 'INV-1002','company': 'GogoZoom','invoicedate': '05/01/2023','due_date': '05/01/2023','status': 'Paid','amount': '\$750.83'},
    {'invoice': 'INV-1003','company': 'Nam-Zim','invoicedate': '05/01/2023','due_date': '05/01/2023','status': 'Pending','amount': '\$1,200.00'},
    {'invoice': 'INV-1004','company': 'Sunnamplex','invoicedate': '05/01/2023','due_date': '05/01/2023','status': 'Paid','amount': '\$2,500.00'},
    {'invoice': 'INV-1005','company': 'CodeHow','invoicedate': '05/02/2023','due_date': '05/02/2023','status': 'Unpaid','amount': '\$3,200.00'},
    {'invoice': 'INV-1006','company': 'Konex','invoicedate': '05/02/2023','due_date': '05/02/2023','status': 'Pending','amount': '\$850.00'},
    {'invoice': 'INV-1007','company': 'Inity','invoicedate': '05/03/2023','due_date': '05/03/2023','status': 'Paid','amount': '\$500.00'},
    {'invoice': 'INV-1008','company': 'DoomZoom','invoicedate': '05/03/2023','due_date': '05/03/2023','status': 'Pending','amount': '\$1,500.00'},
    {'invoice': 'INV-1009','company': 'BetaSoloin','invoicedate': '05/03/2023','due_date': '05/03/2023','status': 'Paid','amount': '\$2,400.00'},
    {'invoice': 'INV-1010','company': 'KinamPlus','invoicedate': '05/03/2023','due_date': '05/03/2023','status': 'Paid','amount': '\$400.00',}
   ];
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
          label: Text('INVOICE'),
        ),
        DataColumn(
          label: Text('COMPANY'),
        ),
        DataColumn(
          label: Text('INVOICE DATE'),
        ),
        DataColumn(
          label: Text('DUE DATE'),
        ),
        DataColumn(
          label: Text('STATUS'),
        ),
        DataColumn(
          label: Text('AMOUNT'),
        ),
      ],
      rows: rowDataList.asMap().entries.map((entry) {
        final int index = entry.key;
        final Map<String, dynamic> rowData = entry.value;

        return DataRow(
          selected: selectedRowIndices.contains(index),
          onSelectChanged: (bool? selected) {
            setState(() {
              if (selected!) {
                selectedRowIndices.add(index);
              } else {
                selectedRowIndices.remove(index);
              }
            });
          },
          cells: [
            
            DataCell(
              Text(rowData['invoice'].toString(), style: TextStyle(color: Colors.blue),),
            ),
            DataCell(
              Text(rowData['company'].toString()),
            ),
            DataCell(
              Text(rowData['invoicedate'].toString()),
            ),
            DataCell(
              Text(rowData['due_date'].toString()),
            ),
            DataCell(
              Text(rowData['status'].toString()),
            ),
            DataCell(
              Text(rowData['amount'].toString()),
            ),
          ],
        );
      }).toList(),

    ); 
    
  }
}