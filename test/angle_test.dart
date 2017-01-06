// Copyright (c) 2017, geometric authors.  Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math';
import 'package:geometric/geometric.dart';
import 'package:test/test.dart';

void main() {
  group('absDegrees', () {
    test('should do nothing on valid degrees', () {
      const [
        angle0Degrees,
        angle45Degrees,
        angle90Degrees,
        angle135Degrees,
        angle180Degrees,
        angle225Degrees,
        angle270Degrees,
        angle315Degrees,
        angle360Degrees,
      ].forEach((angle) {
        expect(angle, angle);
      });
    });

    test('should make negative numbers into positive ones', () {
      expect(absDegrees(-720), angle0Degrees);
      expect(absDegrees(-90), angle270Degrees);
    });

    test('should make large positive numbers into smaller ones', () {
      expect(absDegrees(720), angle360Degrees);
      expect(absDegrees(540), angle180Degrees);
    });
  });

  test('angle should determine an angle, in radians, between points', () {
    // |         a             b
    // |
    // |
    // |
    // |
    // - - - - - - - - - - - - -
    expect(angle(const Point(5, 5), const Point(10, 5)), angle90Radians);
  });

  test('degrees should convert from radians', () {
    const {
      angle0Degrees: angle0Radians,
      angle90Degrees: angle90Radians,
      angle180Degrees: angle180Radians,
    }.forEach((d, r) {
      expect(d, degrees(r));
    });
  });

  test('radians should convert from degrees', () {
    const {
      angle0Degrees: angle0Radians,
      angle90Degrees: angle90Radians,
      angle180Degrees: angle180Radians,
    }.forEach((d, r) {
      expect(r, radians(d));
    });
  });
}
