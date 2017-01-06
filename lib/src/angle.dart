// Copyright (c) 2017, geometric authors.  Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:math';

/// A 0° angle.
const num angle0Degrees = 0;

/// A 0° angle in radians.
const num angle0Radians = angle0Degrees * (PI / 180);

/// A 45° angle.
const num angle45Degrees = 45;

/// A 45° angle in radians.
const num angle45Radians = angle45Degrees * (PI / 180);

/// A 90° angle.
const num angle90Degrees = 90;

/// A 90° angle in radians.
const num angle90Radians = angle90Degrees * (PI / 180);

/// A 135° angle.
const num angle135Degrees = 135;

/// A 135° angle in radians.
const num angle135Radians = angle135Degrees * (PI / 180);

/// A 180° angle.
const num angle180Degrees = 180;

/// A 180° angle in radians.
const num angle180Radians = angle180Degrees * (PI / 180);

/// A 225° angle.
const num angle225Degrees = 225;

/// A 225° angle in radians.
const num angle225Radians = angle180Degrees * (PI / 180);

/// A 270° angle.
const num angle270Degrees = 270;

/// A 270° angle in radians.
const num angle270Radians = angle270Degrees * (PI / 180);

/// A 315° angle.
const num angle315Degrees = 315;

/// A 315° angle in radians.
const num angle315Radians = angle315Degrees * (PI / 180);

/// A 360° angle.
const num angle360Degrees = 360;

/// A 360° angle in radians.
const num angle360Radians = angle360Degrees * (PI / 180);

/// Returns the absolute degrees in from [angle].
///
/// For example, `-45` becomes `315` and `720` becomes `360`.
num absDegrees(num angle) {
  while (angle < 0) {
    angle += angle360Degrees;
  }
  while (angle > 360) {
    angle -= angle360Degrees;
  }
  return angle;
}

/// Returns an angle between points [a] and [b] in radians.
num angle(Point a, Point b) => atan2(b.x - a.x, b.y - a.y);

/// Returns an [angle] converted from radians to degrees.
num degrees(num angle) => angle * (180 / PI);

/// Returns an [angle] converted from degrees to radians.
num radians(num angle) => angle * (PI / 180);
