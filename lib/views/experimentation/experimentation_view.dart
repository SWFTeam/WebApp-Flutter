import 'package:Web_backoffice/app/constants.dart';
import 'package:Web_backoffice/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

class ExperimentationView extends StatefulWidget {
  @override
  _ExperimentationViewState createState() => _ExperimentationViewState();
}

class _ExperimentationViewState extends State<ExperimentationView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      pageTitle: "Code Stats",
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text("SWF Game"),
                    SWFGameStats(),
                  ],
                ),

            SizedBox(width: 100),
                Column(
                  children: [
                    Text("SWF API"),
                    SWFApiStats(),
                  ],
                ),

          ],
            ),
            Divider(),
            Row(
              children: [
                Column(
                  children: [
                    Text("SWF BO"),
                    SWFBOStats(),
                  ],
                ),
                SizedBox(width: 100),
                Column(
                  children: [
                    Text("SWF Web BO"),
                    SWFWebBO(),
                  ],
                ),



              ],
            ),

          ],
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
            label: Text("Langages")
        ),
        DataColumn(
            label: Text("Fichiers")
        ),
        DataColumn(
            label: Text("Lignes Vides")
        ),
        DataColumn(
            label: Text("Commentaires")
        ),
        DataColumn(
            label: Text("Codes")
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("Kotlin")),
          DataCell(Text("24")),
          DataCell(Text("378")),
          DataCell(Text("17")),
          DataCell(Text("1870")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("XML")),
          DataCell(Text("41")),
          DataCell(Text("192")),
          DataCell(Text("3")),
          DataCell(Text("1784")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Shell")),
          DataCell(Text("1")),
          DataCell(Text("21")),
          DataCell(Text("22")),
          DataCell(Text("129")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Gradle")),
          DataCell(Text("3")),
          DataCell(Text("11")),
          DataCell(Text("4")),
          DataCell(Text("67")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("DOS Batch")),
          DataCell(Text("1")),
          DataCell(Text("23")),
          DataCell(Text("2")),
          DataCell(Text("59")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Against Shell")),
          DataCell(Text("1")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("5")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Pro Guard")),
          DataCell(Text("1")),
          DataCell(Text("3")),
          DataCell(Text("18")),
          DataCell(Text("0")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total")),
          DataCell(Text("72")),
          DataCell(Text("628")),
          DataCell(Text("66")),
          DataCell(Text("3914")),
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
            label: Text("Langages")
        ),
        DataColumn(
            label: Text("Fichiers")
        ),
        DataColumn(
            label: Text("Lignes Vides")
        ),
        DataColumn(
            label: Text("Commentaires")
        ),
        DataColumn(
            label: Text("Codes")
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("JSON")),
          DataCell(Text("3")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("1918")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("JavaScript")),
          DataCell(Text("12")),
          DataCell(Text("92")),
          DataCell(Text("78")),
          DataCell(Text("1391")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("SQL")),
          DataCell(Text("3")),
          DataCell(Text("84")),
          DataCell(Text("96")),
          DataCell(Text("468")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Docker File")),
          DataCell(Text("1")),
          DataCell(Text("3")),
          DataCell(Text("0")),
          DataCell(Text("15")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Shell")),
          DataCell(Text("1")),
          DataCell(Text("2")),
          DataCell(Text("1")),
          DataCell(Text("8")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("MarkDown")),
          DataCell(Text("1")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("4")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total")),
          DataCell(Text("21")),
          DataCell(Text("181")),
          DataCell(Text("175")),
          DataCell(Text("3804")),
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
            label: Text("Langages")
        ),
        DataColumn(
            label: Text("Fichiers")
        ),
        DataColumn(
            label: Text("Lignes Vides")
        ),
        DataColumn(
            label: Text("Commentaires")
        ),
        DataColumn(
            label: Text("Codes")
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("Swift")),
          DataCell(Text("182")),
          DataCell(Text("4862")),
          DataCell(Text("4497")),
          DataCell(Text("19662")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("XML")),
          DataCell(Text("64")),
          DataCell(Text("33")),
          DataCell(Text("1")),
          DataCell(Text("8882")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Objective C")),
          DataCell(Text("5")),
          DataCell(Text("337")),
          DataCell(Text("81")),
          DataCell(Text("1708")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("C/C++ Header")),
          DataCell(Text("8")),
          DataCell(Text("127")),
          DataCell(Text("229")),
          DataCell(Text("1044")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Markdown")),
          DataCell(Text("3")),
          DataCell(Text("160")),
          DataCell(Text("0")),
          DataCell(Text("429")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("JSON")),
          DataCell(Text("9")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("297")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Shell")),
          DataCell(Text("3")),
          DataCell(Text("32")),
          DataCell(Text("26")),
          DataCell(Text("169")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Python")),
          DataCell(Text("1")),
          DataCell(Text("28")),
          DataCell(Text("10")),
          DataCell(Text("139")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Javascript")),
          DataCell(Text("1")),
          DataCell(Text("11")),
          DataCell(Text("0")),
          DataCell(Text("27")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("make")),
          DataCell(Text("1")),
          DataCell(Text("6")),
          DataCell(Text("0")),
          DataCell(Text("16")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("YAML")),
          DataCell(Text("2")),
          DataCell(Text("3")),
          DataCell(Text("4")),
          DataCell(Text("12")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("D")),
          DataCell(Text("2")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("10")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("C")),
          DataCell(Text("1")),
          DataCell(Text("1")),
          DataCell(Text("0")),
          DataCell(Text("8")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("SVG")),
          DataCell(Text("1")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("1")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total")),
          DataCell(Text("283")),
          DataCell(Text("5602")),
          DataCell(Text("4848")),
          DataCell(Text("32404")),
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
            label: Text("Langages")
        ),
        DataColumn(
            label: Text("Fichiers")
        ),
        DataColumn(
            label: Text("Lignes Vides")
        ),
        DataColumn(
            label: Text("Commentaires")
        ),
        DataColumn(
            label: Text("Codes")
        ),
      ],

      rows: [
        DataRow(cells: <DataCell>[
          DataCell(Text("JavaScript")),
          DataCell(Text("3")),
          DataCell(Text("11")),
          DataCell(Text("650")),
          DataCell(Text("143488")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Dart")),
          DataCell(Text("28")),
          DataCell(Text("133")),
          DataCell(Text("34")),
          DataCell(Text("2406")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("JSON")),
          DataCell(Text("10")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("1159")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("XML")),
          DataCell(Text("23")),
          DataCell(Text("2")),
          DataCell(Text("36")),
          DataCell(Text("953")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Again Shell")),
          DataCell(Text("1")),
          DataCell(Text("19")),
          DataCell(Text("20")),
          DataCell(Text("121")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Gradle")),
          DataCell(Text("3")),
          DataCell(Text("19")),
          DataCell(Text("6")),
          DataCell(Text("84")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("DOS Batch")),
          DataCell(Text("1")),
          DataCell(Text("24")),
          DataCell(Text("2")),
          DataCell(Text("64")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("HTML")),
          DataCell(Text("1")),
          DataCell(Text("3")),
          DataCell(Text("5")),
          DataCell(Text("25")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("YAML")),
          DataCell(Text("1")),
          DataCell(Text("14")),
          DataCell(Text("46")),
          DataCell(Text("24")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Bourne Shell")),
          DataCell(Text("1")),
          DataCell(Text("0")),
          DataCell(Text("1")),
          DataCell(Text("13")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Markdown")),
          DataCell(Text("2")),
          DataCell(Text("8")),
          DataCell(Text("0")),
          DataCell(Text("13")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Swift")),
          DataCell(Text("1")),
          DataCell(Text("1")),
          DataCell(Text("0")),
          DataCell(Text("12")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("C/C++ Header")),
          DataCell(Text("2")),
          DataCell(Text("5")),
          DataCell(Text("3")),
          DataCell(Text("10")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Java")),
          DataCell(Text("1")),
          DataCell(Text("3")),
          DataCell(Text("5")),
          DataCell(Text("9")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("D")),
          DataCell(Text("5")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("5")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Objective C")),
          DataCell(Text("1")),
          DataCell(Text("4")),
          DataCell(Text("3")),
          DataCell(Text("5")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Kotlin")),
          DataCell(Text("1")),
          DataCell(Text("2")),
          DataCell(Text("0")),
          DataCell(Text("4")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("SVG")),
          DataCell(Text("1")),
          DataCell(Text("0")),
          DataCell(Text("0")),
          DataCell(Text("1")),
        ],
        ),
        DataRow(cells: <DataCell>[
          DataCell(Text("Total")),
          DataCell(Text("86")),
          DataCell(Text("248")),
          DataCell(Text("811")),
          DataCell(Text("149396")),
        ],
        ),
      ],
    );
  }
}