import 'package:hallo_world/src/utils.dart';

import 'dart:async';

class BlocProviders extends BaseBloc {
  final _controller = StreamController<double>();

  StreamSink<double> get sinkSlider => _controller.sink;

  Stream<double> get streamSlider => _controller.stream;

  @override
  void close() {
    // TODO: implement close
    _controller.close();
  }

}