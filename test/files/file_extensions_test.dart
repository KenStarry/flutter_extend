import 'dart:io';

import 'package:flutter_extend/flutter_extend.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("FILE TYPE EXTENSIONS", () {
    /// Image Tests
    group("IMAGE FILE TYPE", () {
      test("Checks whether a file is an image", () {
        final file = File("somePath/subFolder/myFile.jpeg");

        final isImage = file.isImage;

        expect(isImage, true);
      });
    });

    /// AUDIO TESTS
    group("AUDIO TYPE", () {
      test("Checks whether a file is an audio", () {
        final file = File("somePath/subFolder/myFile.mp3");

        final isAudio = file.isAudio;

        expect(isAudio, true);
      });
    });

    /// VIDEO TESTS
    group("VIDEO TYPE", () {
      test("Checks whether a file is an video", () {
        final file = File("somePath/subFolder/myFile.mp4");

        final isVideo = file.isVideo;
        final isImage = file.isImage;

        expect(isVideo, true);
        expect(isImage, false);
      });
    });

    /// DOCUMENT TESTS
    group("DOCUMENT TYPE", () {
      test("Checks whether a file is a document", () {
        final file = File("somePath/subFolder/myFile.csv");

        final isDocument = file.isDocument;

        expect(isDocument, true);
      });
    });
  });
}
