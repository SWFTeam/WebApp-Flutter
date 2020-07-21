import 'package:flutter/material.dart';
import '../../widgets/custom_scaffold.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      pageTitle: "Code Stats",
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "SWF Game",
                style: Theme.of(context).textTheme.headline2,),
              SWFGameStats(),

              SizedBox(height: 100),

              Text("SWF API",
                style: Theme.of(context).textTheme.headline2,),
              SWFApiStats(),

              SizedBox(height: 100),


              Text("SWF BO",
                style: Theme.of(context).textTheme.headline2,),
              SWFBOStats(),

              SizedBox(height: 100),


              Text("SWF Web BO",
                style: Theme.of(context).textTheme.headline2,),
              SWFWebBO(),

              SizedBox(height: 100),

              Text("SWF Desktop",
                style: Theme.of(context).textTheme.headline2,),
              SWFDesktopStats(),
            ],
          ),
        ),
      ),
    );
  }
}





class SWFGameStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
            label: Text("Langages",
                style: TextStyle(color:Colors.red))
        ),
        DataColumn(
            label: Text("Fichiers",
                style: TextStyle(color:Colors.green))
        ),
        DataColumn(
            label: Text("Lignes Vides",
                style: TextStyle(color:Colors.blue))
        ),
        DataColumn(
            label: Text("Commentaires",
                style: TextStyle(color:Colors.orange))
        ),
        DataColumn(
            label: Text("Codes",
                style: TextStyle(color:Colors.deepPurple))
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("Kotlin",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("24",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("378",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("17",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1870",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("XML",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("41",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("192",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1784",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Shell",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("21",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("22",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("129",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Gradle",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("11",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("4",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("67",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("DOS Batch",
              style: TextStyle(color:Colors.red)),),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("23",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("59",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Against Shell",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("5",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Pro Guard",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("18",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("72",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("628",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("66",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("3914",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
      ],
    );
  }
}






class SWFApiStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
            label: Text("Langages",
            style: TextStyle(color:Colors.red))
        ),
        DataColumn(
            label: Text("Fichiers",
                style: TextStyle(color:Colors.green))
        ),
        DataColumn(
            label: Text("Lignes Vides",
                style: TextStyle(color:Colors.blue))
        ),
        DataColumn(
            label: Text("Commentaires",
                style: TextStyle(color:Colors.orange))
        ),
        DataColumn(
            label: Text("Codes",
                style: TextStyle(color:Colors.deepPurple))
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("JSON",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1918",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("JavaScript",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("12",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("92",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("78",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1391",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("SQL",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("84",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("96",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("468",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Docker File",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("15",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Shell",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("8",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("MarkDown",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("4",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("21",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("181",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("175",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("3804",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
      ],
    );
  }
}






class SWFBOStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
            label: Text("Langages",
                style: TextStyle(color:Colors.red))
        ),
        DataColumn(
            label: Text("Fichiers",
                style: TextStyle(color:Colors.green))
        ),
        DataColumn(
            label: Text("Lignes Vides",
                style: TextStyle(color:Colors.blue))
        ),
        DataColumn(
            label: Text("Commentaires",
                style: TextStyle(color:Colors.orange))
        ),
        DataColumn(
            label: Text("Codes",
                style: TextStyle(color:Colors.deepPurple))
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("Swift",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("182",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("4862",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("4497",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("19662",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("XML",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("64",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("33",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("8882",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Objective C",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("5",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("337",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("81",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1708",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("C/C++ Header",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("8",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("127",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("229",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1044",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Markdown",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("160",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("429",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("JSON",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("9",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("297",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Shell",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("32",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("26",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("169",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Python",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("28",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("10",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("139",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Javascript",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("11",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("27",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("make",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("6",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("16",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("YAML",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("4",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("12",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("D",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("10",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("C",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("8",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("SVG",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("283",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("5602",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("4848",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("32404",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
      ],
    );
  }
}








class SWFWebBO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
            label: Text(
                "Langages",
                style: TextStyle(color:Colors.red)
            )
        ),
        DataColumn(
            label: Text("Fichiers")
        ),
        DataColumn(
            label: Text("Lignes Vides",
                style: TextStyle(color:Colors.blue))
        ),
        DataColumn(
            label: Text("Commentaires",
                style: TextStyle(color:Colors.orange))
        ),
        DataColumn(
            label: Text("Codes",
                style: TextStyle(color:Colors.deepPurple))
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("JavaScript",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("11",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("650",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("143488",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Dart",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("28",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("133",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("34",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("2406",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("JSON",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("10",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1159",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("XML",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("23",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("36",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("953",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Again Shell",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("19",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("20",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("121",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Gradle",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("19",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("6",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("84",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("DOS Batch",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("24",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("64",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("HTML",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("5",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("25",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("YAML",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("14",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("46",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("24",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Shell",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("13",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Markdown",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("8",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("13",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Swift",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("12",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("C/C++ Header",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("5",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("10",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Java",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("5",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("9",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("D",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("5",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("5")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Objective C",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("4",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("5",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Kotlin",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("4",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("SVG",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("86",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("248",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("811",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("149396",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
      ],
    );
  }
}

class SWFDesktopStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        DataColumn(
            label: Text("Langages",
                style: TextStyle(color:Colors.red))
        ),
        DataColumn(
            label: Text("Fichiers",
                style: TextStyle(color:Colors.green))
        ),
        DataColumn(
            label: Text("Lignes Vides",
                style: TextStyle(color:Colors.blue))
        ),
        DataColumn(
            label: Text("Commentaires",
                style: TextStyle(color:Colors.orange))
        ),
        DataColumn(
            label: Text("Codes",
                style: TextStyle(color:Colors.deepPurple))
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("Java",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("3",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("18",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("4",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("76",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("FXML",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("21",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("XML",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("12",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Markdown",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("1",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("0",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("2",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total",
              style: TextStyle(color:Colors.red))),
          DataCell(Text("6",
              style: TextStyle(color:Colors.green))),
          DataCell(Text("20",
              style: TextStyle(color:Colors.blue))),
          DataCell(Text("4",
              style: TextStyle(color:Colors.orange))),
          DataCell(Text("111",
              style: TextStyle(color:Colors.deepPurple))),
        ],
        ),
      ],
    );
  }
}