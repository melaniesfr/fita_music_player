import 'package:fita_music_player/pages/main_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing Music Player App', () {
    var mainPageStates = mainPageState;

    test('Search Music by Artist', () {
      var keywords = 'Ariana';
      mainPageStates.updateList(keywords);
      expect(mainPageStates.displayList, isList);
    });

    test('Search Music by Artist (No Results Found)', () {
      var keywords = 'Raisa';
      mainPageStates.updateList(keywords);
      expect(mainPageStates.displayList, equals([]));
    });
  });
}
