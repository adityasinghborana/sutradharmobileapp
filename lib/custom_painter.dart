//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final fillPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    Path path_0 = Path();
    path_0.moveTo(34.073, 39.25);
    path_0.cubicTo(34.073, 37.835, 33.823, 36.464, 33.323, 35.14);
    path_0.cubicTo(32.823, 33.82, 32.096000000000004, 32.64, 31.151, 31.609);
    path_0.cubicTo(30.201, 30.569000000000003, 29.045, 29.714000000000002,
        27.682, 29.046000000000003);
    path_0.cubicTo(26.314999999999998, 28.382, 24.779999999999998,
        27.976000000000003, 23.072, 27.828000000000003);
    path_0.arcToPoint(Offset(24.822, 29.093000000000004),
        radius: Radius.elliptical(6.94, 6.94),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(26.244999999999997, 30.874000000000002),
        radius: Radius.elliptical(9.076, 9.076),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(27.229, 32.968),
        radius: Radius.elliptical(9.92, 9.92),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(27.589, 35.108000000000004),
        radius: Radius.elliptical(6.78, 6.78),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(27.589, 36.19500000000001, 27.392999999999997, 37.148,
        27.009999999999998, 37.968);
    path_0.arcToPoint(Offset(25.479, 40.062000000000005),
        radius: Radius.elliptical(6.172, 6.172),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(23.291, 41.343),
        radius: Radius.elliptical(6.578, 6.578),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(20.729, 41.765),
        radius: Radius.elliptical(7.886, 7.886),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(19.737, 41.765, 18.659, 41.507, 17.494999999999997, 40.984);
    path_0.arcToPoint(Offset(14.244999999999997, 38.89),
        radius: Radius.elliptical(13.413, 13.413),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(11.759999999999998, 35.953),
        radius: Radius.elliptical(12.428, 12.428),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(11.091999999999999, 34.859, 10.759999999999998,
        33.757000000000005, 10.759999999999998, 32.64);
    path_0.cubicTo(10.759999999999998, 31.539, 10.978999999999997, 30.53,
        11.415999999999999, 29.624000000000002);
    path_0.arcToPoint(Offset(13.290999999999999, 27.296000000000003),
        radius: Radius.elliptical(6.648, 6.648),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(14.104, 26.664, 15.060999999999998, 26.167,
        16.165999999999997, 25.812000000000005);
    path_0.cubicTo(17.279999999999998, 25.449000000000005, 18.501999999999995,
        25.265000000000004, 19.837999999999997, 25.265000000000004);
    path_0.cubicTo(21.232999999999997, 25.265000000000004, 22.612,
        25.460000000000004, 23.977999999999998, 25.843000000000004);
    path_0.arcToPoint(Offset(27.854, 27.468000000000004),
        radius: Radius.elliptical(17.35, 17.35),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(29.073, 28.168000000000003, 30.205, 28.999000000000002,
        31.259999999999998, 29.968000000000004);
    path_0.cubicTo(32.309999999999995, 30.929000000000002, 33.248,
        31.976000000000003, 34.073, 33.108000000000004);
    path_0.lineTo(34.073, 19.344);
    path_0.lineTo(8.885, 19.344);
    path_0.arcToPoint(Offset(8.213, 19.094),
        radius: Radius.elliptical(1.01, 1.01),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(7.6979999999999995, 18.469),
        radius: Radius.elliptical(2.423, 2.423),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(7.385, 17.672),
        radius: Radius.elliptical(2.99, 2.99),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(7.3149999999999995, 17.402, 7.2749999999999995, 17.168,
        7.2749999999999995, 16.969);
    path_0.lineTo(41.916, 16.969);
    path_0.cubicTo(
        42.142999999999994, 16.969, 42.358, 17.055, 42.556999999999995, 17.219);
    path_0.cubicTo(42.751999999999995, 17.387, 42.931999999999995, 17.602,
        43.087999999999994, 17.859);
    path_0.cubicTo(43.24499999999999, 18.109, 43.361999999999995,
        18.372000000000003, 43.44799999999999, 18.641000000000002);
    path_0.cubicTo(43.529999999999994, 18.915000000000003, 43.57299999999999,
        19.149, 43.57299999999999, 19.344);
    path_0.lineTo(37.13499999999999, 19.344);
    path_0.lineTo(37.13499999999999, 47.172);
    path_0.arcToPoint(Offset(35.47899999999999, 46.875),
        radius: Radius.elliptical(4.842, 4.842),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(34.07299999999999, 45.86),
        radius: Radius.elliptical(3.212, 3.212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(24.651, 32.812);
    path_0.cubicTo(24.651, 32.385999999999996, 24.592, 31.932999999999996,
        24.479, 31.451999999999998);
    path_0.arcToPoint(Offset(23.948, 30.014999999999997),
        radius: Radius.elliptical(6.526, 6.526),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(23.057000000000002, 28.748999999999995),
        radius: Radius.elliptical(5.594, 5.594),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(21.76, 27.780999999999995),
        radius: Radius.elliptical(4.674, 4.674),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(20.643, 27.811999999999994, 19.612000000000002,
        27.995999999999995, 18.666, 28.327999999999996);
    path_0.cubicTo(17.717, 28.651999999999997, 16.877, 29.120999999999995,
        16.151, 29.733999999999995);
    path_0.arcToPoint(Offset(14.448, 31.920999999999996),
        radius: Radius.elliptical(6.616, 6.616),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(14.041, 32.776999999999994, 13.838000000000001, 33.73,
        13.838000000000001, 34.781);
    path_0.cubicTo(
        13.838000000000001, 36.23, 14.252, 37.351, 15.088000000000001, 38.141);
    path_0.cubicTo(15.920000000000002, 38.933, 16.995, 39.327999999999996,
        18.307000000000002, 39.327999999999996);
    path_0.cubicTo(19.245, 39.327999999999996, 20.092000000000002, 39.168,
        20.854000000000003, 38.842999999999996);
    path_0.arcToPoint(Offset(22.854000000000003, 37.483),
        radius: Radius.elliptical(5.863, 5.863),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(24.182000000000002, 35.421),
        radius: Radius.elliptical(6.122, 6.122),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(24.651000000000003, 32.812),
        radius: Radius.elliptical(7.12, 7.12),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(25.118, 5.968);
    path_0.cubicTo(
        23.785999999999998, 5.968, 22.645, 6.124, 21.695999999999998, 6.437);
    path_0.cubicTo(20.738999999999997, 6.7490000000000006, 19.788999999999998,
        7.1370000000000005, 18.851999999999997, 7.593);
    path_0.arcToPoint(Offset(17.726999999999997, 6.249),
        radius: Radius.elliptical(8.186, 8.186),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(17.374999999999996, 5.718999999999999, 17.141,
        5.2139999999999995, 17.023999999999997, 4.734);
    path_0.cubicTo(18.703999999999997, 3.746, 20.563, 3.2489999999999997,
        22.601999999999997, 3.2489999999999997);
    path_0.cubicTo(24.257999999999996, 3.2489999999999997, 25.811999999999998,
        3.5889999999999995, 27.257999999999996, 4.265);
    path_0.cubicTo(28.707999999999995, 4.944999999999999, 30.007999999999996,
        5.8549999999999995, 31.163999999999994, 6.999);
    path_0.arcToPoint(Offset(34.117999999999995, 10.873999999999999),
        radius: Radius.elliptical(17.743, 17.743),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(35.946, 15.343999999999998),
        radius: Radius.elliptical(18.2, 18.2),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(35.687999999999995, 15.510999999999997, 35.376,
        15.593999999999998, 35.007999999999996, 15.593999999999998);
    path_0.arcToPoint(Offset(33.477, 11.702999999999998),
        radius: Radius.elliptical(19.45, 19.45),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(32.852, 10.526999999999997, 32.125, 9.510999999999997,
        31.288999999999998, 8.655999999999997);
    path_0.arcToPoint(Offset(28.476999999999997, 6.670999999999997),
        radius: Radius.elliptical(9.46, 9.46),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(25.116999999999997, 5.967999999999996),
        radius: Radius.elliptical(8.078, 8.078),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(25.118, 5.968);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(47.414, 37.203);
    path_1.arcToPoint(Offset(45.321, 34.54600000000001),
        radius: Radius.elliptical(9.822, 9.822),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.cubicTo(44.778, 33.53900000000001, 44.507999999999996,
        32.492000000000004, 44.507999999999996, 31.406000000000006);
    path_1.cubicTo(44.507999999999996, 30.730000000000008, 44.632999999999996,
        30.039000000000005, 44.882999999999996, 29.328000000000007);
    path_1.arcToPoint(Offset(46.102, 27.358000000000008),
        radius: Radius.elliptical(5.674, 5.674),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.cubicTo(46.663999999999994, 26.765000000000008, 47.382999999999996,
        26.277000000000008, 48.257999999999996, 25.890000000000008);
    path_1.cubicTo(49.141, 25.50700000000001, 50.196, 25.31200000000001,
        51.413999999999994, 25.31200000000001);
    path_1.cubicTo(52.85999999999999, 25.31200000000001, 54.187999999999995,
        25.617000000000008, 55.398999999999994, 26.218000000000007);
    path_1.arcToPoint(Offset(58.523999999999994, 28.468000000000007),
        radius: Radius.elliptical(11.123, 11.123),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.lineTo(58.523999999999994, 19.343000000000007);
    path_1.lineTo(42.336, 19.343000000000007);
    path_1.cubicTo(42.077999999999996, 19.343000000000007, 41.848,
        19.261000000000006, 41.649, 19.093000000000007);
    path_1.arcToPoint(Offset(41.149, 18.468000000000007),
        radius: Radius.elliptical(2.164, 2.164),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.arcToPoint(Offset(40.805, 17.671000000000006),
        radius: Radius.elliptical(4.196, 4.196),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.arcToPoint(Offset(40.68, 16.968000000000007),
        radius: Radius.elliptical(2.477, 2.477),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.lineTo(65.258, 16.968000000000007);
    path_1.cubicTo(65.51599999999999, 16.968000000000007, 65.746,
        17.054000000000006, 65.946, 17.218000000000007);
    path_1.cubicTo(66.14099999999999, 17.386000000000006, 66.309,
        17.601000000000006, 66.446, 17.858000000000008);
    path_1.cubicTo(66.59, 18.108000000000008, 66.703, 18.37100000000001, 66.789,
        18.640000000000008);
    path_1.cubicTo(66.871, 18.91400000000001, 66.914, 19.148000000000007,
        66.914, 19.343000000000007);
    path_1.lineTo(61.602000000000004, 19.343000000000007);
    path_1.lineTo(61.602000000000004, 30.296000000000006);
    path_1.cubicTo(61.602000000000004, 31.664000000000005, 61.43000000000001,
        32.92900000000001, 61.086000000000006, 34.093);
    path_1.cubicTo(
        60.743, 35.261, 60.226000000000006, 36.265, 59.53900000000001, 37.109);
    path_1.arcToPoint(Offset(56.99300000000001, 39.078),
        radius: Radius.elliptical(7.11, 7.11),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.cubicTo(55.96900000000001, 39.558, 54.76300000000001,
        39.79600000000001, 53.36800000000001, 39.79600000000001);
    path_1.arcToPoint(Offset(51.66400000000001, 39.593),
        radius: Radius.elliptical(8.013, 8.013),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.lineTo(60.86800000000001, 47.983000000000004);
    path_1.cubicTo(60.81300000000001, 48.21, 60.71100000000001, 48.383,
        60.55500000000001, 48.499);
    path_1.cubicTo(60.39900000000001, 48.613, 60.24600000000001, 48.671,
        60.102000000000004, 48.671);
    path_1.close();
    path_1.moveTo(51.196, 37.374);
    path_1.cubicTo(52.446, 37.374, 53.524, 37.171, 54.43, 36.765);
    path_1.cubicTo(55.344, 36.351, 56.106, 35.792, 56.711, 35.093);
    path_1.arcToPoint(Offset(58.071, 32.67100000000001),
        radius: Radius.elliptical(6.694, 6.694),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.cubicTo(58.370999999999995, 31.746000000000006, 58.524,
        30.773000000000007, 58.524, 29.749000000000006);
    path_1.arcToPoint(Offset(56.227000000000004, 28.328000000000007),
        radius: Radius.elliptical(7.09, 7.09),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.arcToPoint(Offset(53.633, 27.828000000000007),
        radius: Radius.elliptical(7.115, 7.115),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.cubicTo(52.778000000000006, 27.828000000000007, 51.981,
        27.960000000000008, 51.243, 28.218000000000007);
    path_1.arcToPoint(Offset(49.273, 29.343000000000007),
        radius: Radius.elliptical(5.725, 5.725),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.arcToPoint(Offset(47.93000000000001, 31.140000000000008),
        radius: Radius.elliptical(5.622, 5.622),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.cubicTo(47.60600000000001, 31.828000000000007, 47.446000000000005,
        32.617000000000004, 47.446000000000005, 33.50000000000001);
    path_1.cubicTo(47.446000000000005, 34.574000000000005, 47.73500000000001,
        35.492000000000004, 48.321000000000005, 36.25000000000001);
    path_1.cubicTo(48.903000000000006, 37.00000000000001, 49.86000000000001,
        37.37400000000001, 51.196000000000005, 37.37400000000001);
    path_1.close();
    path_1.moveTo(51.196, 37.374);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(73.525, 19.343);
    path_2.lineTo(73.525, 47.171);
    path_2.arcToPoint(Offset(71.85300000000001, 46.874),
        radius: Radius.elliptical(4.88, 4.88),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.cubicTo(71.322, 46.679, 70.85700000000001, 46.339000000000006,
        70.46300000000001, 45.859);
    path_2.lineTo(70.46300000000001, 19.343);
    path_2.lineTo(65.25900000000001, 19.343);
    path_2.cubicTo(65.00100000000002, 19.343, 64.77100000000002, 19.261,
        64.57200000000002, 19.093);
    path_2.arcToPoint(Offset(64.07200000000002, 18.468),
        radius: Radius.elliptical(2.164, 2.164),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(63.728000000000016, 17.671),
        radius: Radius.elliptical(4.196, 4.196),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(63.603000000000016, 16.968),
        radius: Radius.elliptical(2.477, 2.477),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.lineTo(78.29, 16.968);
    path_2.cubicTo(
        78.548, 16.968, 78.77900000000001, 17.054, 78.97800000000001, 17.218);
    path_2.cubicTo(
        79.173, 17.386, 79.34100000000001, 17.601, 79.47800000000001, 17.858);
    path_2.cubicTo(
        79.62200000000001, 18.108, 79.736, 18.371000000000002, 79.822, 18.64);
    path_2.cubicTo(79.915, 18.914, 79.962, 19.148, 79.962, 19.343);
    path_2.close();
    path_2.moveTo(61.509, 5.968);
    path_2.cubicTo(60.177, 5.968, 59.036, 6.124, 58.087, 6.437);
    path_2.cubicTo(57.13, 6.7490000000000006, 56.181000000000004,
        7.1370000000000005, 55.243, 7.593);
    path_2.arcToPoint(Offset(54.118, 6.249),
        radius: Radius.elliptical(8.186, 8.186),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.cubicTo(
        53.767, 5.718999999999999, 53.533, 5.2139999999999995, 53.415, 4.734);
    path_2.cubicTo(
        55.095, 3.746, 56.955, 3.2489999999999997, 58.993, 3.2489999999999997);
    path_2.cubicTo(
        60.642, 3.2489999999999997, 62.189, 3.5889999999999995, 63.634, 4.265);
    path_2.cubicTo(
        65.084, 4.944999999999999, 66.376, 5.8549999999999995, 67.524, 6.999);
    path_2.arcToPoint(Offset(70.494, 10.873999999999999),
        radius: Radius.elliptical(17.686, 17.686),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.arcToPoint(Offset(72.337, 15.343999999999998),
        radius: Radius.elliptical(18.105, 18.105),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_2.cubicTo(72.07600000000001, 15.510999999999997, 71.763,
        15.593999999999998, 71.4, 15.593999999999998);
    path_2.arcToPoint(Offset(69.86800000000001, 11.702999999999998),
        radius: Radius.elliptical(19.687, 19.687),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.cubicTo(69.24300000000001, 10.526999999999997, 68.50900000000001,
        9.510999999999997, 67.665, 8.655999999999997);
    path_2.arcToPoint(Offset(64.86800000000001, 6.670999999999997),
        radius: Radius.elliptical(9.297, 9.297),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.arcToPoint(Offset(61.50900000000001, 5.967999999999996),
        radius: Radius.elliptical(8.078, 8.078),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_2.close();
    path_2.moveTo(61.509, 5.968);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(110.973, 19.343);
    path_3.lineTo(110.973, 47.171);
    path_3.arcToPoint(Offset(109.317, 46.874),
        radius: Radius.elliptical(4.842, 4.842),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.arcToPoint(Offset(107.91099999999999, 45.859),
        radius: Radius.elliptical(3.212, 3.212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.lineTo(107.91099999999999, 29.874);
    path_3.lineTo(95.94, 38.61);
    path_3.arcToPoint(Offset(94.456, 37.532),
        radius: Radius.elliptical(3.688, 3.688),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.cubicTo(94.05, 37.032, 93.773, 36.61, 93.628, 36.266);
    path_3.lineTo(99.425, 32.047);
    path_3.cubicTo(
        98.8, 30.570999999999998, 97.886, 29.433999999999997, 96.691, 28.641);
    path_3.cubicTo(95.503, 27.840999999999998, 94.167, 27.438, 92.691, 27.438);
    path_3.arcToPoint(Offset(89.613, 28.016),
        radius: Radius.elliptical(8.367, 8.367),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_3.cubicTo(88.633, 28.403, 87.773, 28.976999999999997, 87.035, 29.735);
    path_3.cubicTo(86.292, 30.485, 85.695, 31.422, 85.238, 32.547);
    path_3.cubicTo(84.788, 33.665, 84.566, 34.977, 84.566, 36.485);
    path_3.cubicTo(84.566, 37.758, 84.73, 38.907, 85.066, 39.938);
    path_3.arcToPoint(Offset(86.581, 42.798),
        radius: Radius.elliptical(9.974, 9.974),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_3.cubicTo(87.24600000000001, 43.672000000000004, 88.074, 44.5, 89.066,
        45.282000000000004);
    path_3.cubicTo(90.066, 46.063, 91.206, 46.836000000000006, 92.488, 47.594);
    path_3.arcToPoint(Offset(92.018, 48.329),
        radius: Radius.elliptical(1.145, 1.145),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.cubicTo(91.018, 47.817, 89.91, 47.145, 88.691, 46.313);
    path_3.arcToPoint(Offset(85.253, 43.297000000000004),
        radius: Radius.elliptical(20.462, 20.462),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.arcToPoint(Offset(82.55, 39.313),
        radius: Radius.elliptical(17.158, 17.158),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.cubicTo(81.82, 37.825, 81.456, 36.157000000000004, 81.456, 34.313);
    path_3.cubicTo(81.456, 32.773, 81.699, 31.407000000000004, 82.191, 30.219);
    path_3.cubicTo(82.691, 29.024, 83.367, 28.024, 84.22200000000001, 27.219);
    path_3.arcToPoint(Offset(87.144, 25.391000000000002),
        radius: Radius.elliptical(8.463, 8.463),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.arcToPoint(Offset(90.566, 24.766000000000002),
        radius: Radius.elliptical(9.588, 9.588),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.cubicTo(93.011, 24.766000000000002, 95.042, 25.391000000000002,
        96.66, 26.641000000000002);
    path_3.arcToPoint(Offset(100.363, 31.360000000000003),
        radius: Radius.elliptical(12.035, 12.035),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.lineTo(107.91, 25.829000000000004);
    path_3.lineTo(107.91, 19.344000000000005);
    path_3.lineTo(78.723, 19.344000000000005);
    path_3.cubicTo(78.465, 19.344000000000005, 78.235, 19.262000000000004,
        78.036, 19.094000000000005);
    path_3.arcToPoint(Offset(77.536, 18.469000000000005),
        radius: Radius.elliptical(2.164, 2.164),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.arcToPoint(Offset(77.19200000000001, 17.672000000000004),
        radius: Radius.elliptical(4.196, 4.196),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.arcToPoint(Offset(77.06700000000001, 16.969000000000005),
        radius: Radius.elliptical(2.477, 2.477),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_3.lineTo(115.754, 16.969000000000005);
    path_3.cubicTo(116.004, 16.969000000000005, 116.227, 17.055000000000003,
        116.426, 17.219000000000005);
    path_3.cubicTo(116.622, 17.387000000000004, 116.793, 17.602000000000004,
        116.94200000000001, 17.859000000000005);
    path_3.cubicTo(117.08600000000001, 18.109000000000005, 117.2,
        18.372000000000007, 117.286, 18.641000000000005);
    path_3.cubicTo(117.368, 18.915000000000006, 117.411, 19.149000000000004,
        117.411, 19.344000000000005);
    path_3.close();
    path_3.moveTo(110.973, 19.343);

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(124.44, 19.343);
    path_4.lineTo(124.44, 47.171);
    path_4.arcToPoint(Offset(122.76899999999999, 46.874),
        radius: Radius.elliptical(4.88, 4.88),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.cubicTo(122.23799999999999, 46.679, 121.773, 46.339000000000006,
        121.37899999999999, 45.859);
    path_4.lineTo(121.37899999999999, 19.343);
    path_4.lineTo(116.175, 19.343);
    path_4.cubicTo(115.917, 19.343, 115.687, 19.261, 115.488, 19.093);
    path_4.arcToPoint(Offset(114.988, 18.468),
        radius: Radius.elliptical(2.164, 2.164),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(114.644, 17.671),
        radius: Radius.elliptical(4.196, 4.196),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(114.519, 16.968),
        radius: Radius.elliptical(2.477, 2.477),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.lineTo(121.503, 16.968);
    path_4.cubicTo(
        121.441, 13.585, 120.835, 10.948, 119.691, 9.062000000000001);
    path_4.cubicTo(118.542, 7.167000000000002, 116.788, 6.218000000000002,
        114.425, 6.218000000000002);
    path_4.cubicTo(113.55, 6.218000000000002, 112.753, 6.355000000000002,
        112.035, 6.624000000000001);
    path_4.arcToPoint(Offset(110.175, 7.7650000000000015),
        radius: Radius.elliptical(5.42, 5.42),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_4.cubicTo(109.655, 8.245000000000001, 109.265, 8.808000000000002,
        109.003, 9.453000000000001);
    path_4.arcToPoint(Offset(108.597, 11.515),
        radius: Radius.elliptical(5.237, 5.237),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_4.cubicTo(108.597, 12.245000000000001, 108.72999999999999, 12.933,
        108.987, 13.578000000000001);
    path_4.cubicTo(
        109.237, 14.214, 109.53, 14.746, 109.863, 15.171000000000001);
    path_4.cubicTo(109.78, 15.401000000000002, 109.597, 15.542000000000002,
        109.316, 15.593000000000002);
    path_4.arcToPoint(Offset(106.784, 12.890000000000002),
        radius: Radius.elliptical(11.386, 11.386),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.cubicTo(106.058, 11.828000000000003, 105.691, 10.714000000000002,
        105.691, 9.546000000000003);
    path_4.cubicTo(105.691, 8.640000000000002, 105.87100000000001,
        7.828000000000003, 106.221, 7.1090000000000035);
    path_4.arcToPoint(Offset(107.659, 5.249000000000003),
        radius: Radius.elliptical(5.707, 5.707),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(109.753, 4.078000000000003),
        radius: Radius.elliptical(6.333, 6.333),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.arcToPoint(Offset(112.253, 3.671000000000003),
        radius: Radius.elliptical(7.71, 7.71),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_4.cubicTo(113.652, 3.671000000000003, 115.03, 4.058000000000003,
        116.393, 4.828000000000003);
    path_4.cubicTo(117.757, 5.589000000000003, 118.995, 6.589000000000003,
        120.113, 7.828000000000003);
    path_4.cubicTo(121.238, 9.058000000000003, 122.179, 10.476000000000003,
        122.941, 12.078000000000003);
    path_4.cubicTo(123.711, 13.683000000000003, 124.183, 15.312000000000003,
        124.363, 16.968000000000004);
    path_4.lineTo(129.206, 16.968000000000004);
    path_4.cubicTo(129.464, 16.968000000000004, 129.695, 17.054000000000002,
        129.89399999999998, 17.218000000000004);
    path_4.cubicTo(130.08899999999997, 17.386000000000003, 130.25699999999998,
        17.601000000000003, 130.39399999999998, 17.858000000000004);
    path_4.cubicTo(130.53799999999998, 18.108000000000004, 130.652,
        18.371000000000006, 130.73799999999997, 18.640000000000004);
    path_4.cubicTo(130.83099999999996, 18.914000000000005, 130.87799999999996,
        19.148000000000003, 130.87799999999996, 19.343000000000004);
    path_4.close();
    path_4.moveTo(124.44, 19.343);

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
