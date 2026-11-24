import 'package:flutter_readium_platform_interface/flutter_readium_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Locations.physicalPage', () {
    test('reads the physicalPage location sent by the native readers', () {
      expect(const Locations(additionalProperties: {'physicalPage': 'iv'}).physicalPage, 'iv');
    });

    test('falls back to a physicalPage fragment', () {
      expect(const Locations().copyWithPhysicalPageNumber('42').physicalPage, '42');
    });

    test('prefers the physicalPage location over the fragment', () {
      const locations = Locations(fragments: ['physicalPage=1'], additionalProperties: {'physicalPage': '2'});
      expect(locations.physicalPage, '2');
    });

    test('is null without a page', () {
      expect(const Locations().physicalPage, isNull);
    });
  });
}
