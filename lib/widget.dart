import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
var text, fontsize, fontweight,color;
CustomText(this.text,this.fontsize,this.fontweight,this.color);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontsize,fontWeight: fontweight,color: color),);
  }
}



class CustomIcon extends StatelessWidget {
var icon, size, color;
CustomIcon(this.icon, this.size, this.color);
  @override
  Widget build(BuildContext context) {
    return Icon(icon,size: size,color: color,);
  }
}



class CustomDataTable extends StatefulWidget {
  var  invoice,company,invoicedate,due_date,status,amount;
  CustomDataTable(this.invoice, this.company, this.invoicedate,this.due_date, this.status, this.amount);

  @override
  State<CustomDataTable> createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
   bool isChecked = false;
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
      rows: [
        DataRow(
          cells: [
             DataCell((Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                setState(() {
                isChecked = value!;
                  });
                }))),
            DataCell(
              Text(widget.invoice),
            ),
            DataCell(
              Text(widget.company),
            ),
            DataCell(
              Text(widget.invoicedate),
            ),
            DataCell(
              Text(widget.due_date),
            ),
            DataCell(
              Text(widget.status),
            ),
            DataCell(
              Text(widget.amount),
            ),
          ],
        ),
        
        
      ],
    );
  }
}