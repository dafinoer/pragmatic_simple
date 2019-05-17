import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;
import 'package:provider/provider.dart';
import 'package:hallo_world/src/providers.dart';

class CartPageNew extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    _CartPageState cartPageState = _CartPageState();
    return cartPageState;
  }
}

class _CartPageState extends State<CartPageNew> {
  List<chart.Series> seriesList;
  bool animated;
  var valueData = 0.0;

  @override
  Widget build(BuildContext context) {
    final prof = Provider.of<BlocProviders>(context);

    return StreamBuilder(
      initialData: 0.0,
      stream: prof.streamSlider,
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: 300.0,
            child: chart.PieChart(
              seriesData(snapshot.data),
              animate: false,
              defaultRenderer: chart.ArcRendererConfig(
                  arcWidth: 100,
                  arcRendererDecorators: [chart.ArcLabelDecorator()]),
            ),
          );
        }
      },
    );
  }

  List<chart.Series> seriesData(double value) {
    var dataStatus = [
      DeveloperStatus('Jomblo', value),
      DeveloperStatus('Pacar', 20.0),
      DeveloperStatus('nikah', 10.0),
      DeveloperStatus('moveon', 15.0),
    ];

    return [
      chart.Series<DeveloperStatus, String>(
        id: 'developer status',
        domainFn: (DeveloperStatus status, _) => status.days,
        measureFn: (DeveloperStatus status, _) => status.total,
        data: dataStatus,
        labelAccessorFn: (DeveloperStatus row, _) =>
            '${row.days} : ${row.total}',
      )
    ];
  }
}

class DeveloperStatus {
  final String days;
  final double total;

  DeveloperStatus(this.days, this.total);
}
