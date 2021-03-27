import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class GivenListOfMovies
    extends Given1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String movieCard) async {
    final card = find.byValueKey(movieCard);
    await FlutterDriverUtils.isPresent(world.driver, card);
  }
  @override
  RegExp get pattern => RegExp(r"I have all the {string} on the screen");

}

class ClickMovieCard extends WhenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final moviecardfinder = find.byValueKey("movieListed");
    await FlutterDriverUtils.tap(world.driver, moviecardfinder);

  }
  @override
  RegExp get pattern => RegExp(r"I tap on one movie image");
}



class DetailPageInView extends Then1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String movieCards) async {
    final detailPageFiner = find.byValueKey("movieDetail");
    await FlutterDriverUtils.isPresent(world.driver, detailPageFiner);

  }
  @override
  RegExp get pattern => RegExp(r"I expect the {string} to be displayed");
}



