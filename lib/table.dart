import 'package:flutter/material.dart';

class Table extends StatefulWidget {
  const Table({Key? key}) : super(key: key);

  @override
  State<Table> createState() => _TableState();
}

class _TableState extends State<Table> {
  List<Map> _books = [
    {
      'id' :100,
      'title':'vacanny',
      'name':'amal'
    },
    {
      'id' :200,
    'title':'vacanny',
      'name':'amal'
    },
    {
      'id' :300,
      'title':'vacanny',
      'name':'amal'
    }
  ];
  int _currentSortColumn = 0;
  bool _isSortAsc = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Datatable Demo'),
        ),
        body: ListView(
          children: [
            _createDataTable()
          ],
        ),
      ),
    );
  }
  DataTable _createDataTable() {
    return DataTable(
      columns: _createeColumns(),
      rows: _createRows(),
      sortColumnIndex: _currentSortColumn,
      sortAscending: _isSortAsc,
    );
  }
  List<DataColumn> _createeColumns() {
    return [
      DataColumn(
        label: Text('id'),
        onSort: (columnIndex, _) {
          setState(() {
            _currentSortColumn = columnIndex;
            if (_isSortAsc) {
              _books.sort((a, b) => b['id'].compareTo(a['id']));
            } else {
              _books.sort((a, b) => a['id'].compareTo(b['id']));
            }
            _isSortAsc = !_isSortAsc;
          });
        },
      ),
      DataColumn(label: Text('Book')),
      DataColumn(label: Text('Author'))
    ];
  }

  List<DataRow> _createRows() {
    return _books
        .map((book) => DataRow(cells: [
      DataCell(Text('#' + book['id'].toString())),
      DataCell(Text(book['title'])),
      DataCell(Text(book['author']))
    ]))
        .toList();
  }
}
