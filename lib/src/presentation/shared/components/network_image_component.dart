import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

///
class NetworkImageComponent {
  ///
  factory NetworkImageComponent() =>
      _instance ??= NetworkImageComponent.instance();

  ///
  NetworkImageComponent.instance();

  static NetworkImageComponent? _instance;

  ///
  static final Dio _dio = Dio();
  static final _filesDb = <String, Uint8List>{};

  static Future<Image?> _downloadFileFromNetwork(String path) async {
    if (_filesDb.containsKey(path)) {
      final fileBinaries = _filesDb[path];
      return Image.memory(fileBinaries!);
    } else {
      final resultFileByte = await _dio.get<List<int>?>(
        path,
        options: Options(
          responseType: ResponseType.bytes,
        ),
      );
      if (resultFileByte.statusCode == 200 && resultFileByte.data != null) {
        final fileBinaries = Uint8List.fromList(resultFileByte.data!);
        _filesDb[path] = fileBinaries;
        return Image.memory(fileBinaries, fit: BoxFit.cover);
      }
    }
    return null;
  }

  ///
  Widget networkImage(
    String path, {
    double borderRadius = 8,
    BoxFit? fit,
    Color? color,
  }) {
    var imageLoaded = _filesDb.containsKey(path);
    return FittedBox(
      fit: fit ?? BoxFit.cover,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: imageLoaded
            ? Image.memory(
                _filesDb[path]!,
                fit: BoxFit.cover,
              )
            : FutureBuilder(
                future: _downloadFileFromNetwork(path),
                builder: (context, snapshot) {
                  return Stack(
                    children: [
                      if (snapshot.hasData && !snapshot.hasError)
                        Positioned.fill(
                          child: snapshot.data ?? const Placeholder(),
                        ),
                      if (snapshot.connectionState != ConnectionState.done)
                        _PlaceHolder(color ?? Colors.grey.shade200)
                      else
                        _PlaceHolder(color ?? Colors.grey.shade200).animate(
                          onComplete: (controller) {
                            imageLoaded = true;
                          },
                        ).fadeOut(),
                    ],
                  );
                },
              ),
      ),
    );
  }
}

///
class _PlaceHolder extends StatelessWidget {
  const _PlaceHolder(this.color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color,
      child: const SizedBox(width: 50, height: 50),
    );
  }
}
