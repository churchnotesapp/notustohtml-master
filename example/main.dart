import 'package:notus/notus.dart';
import 'package:notustohtml/notustohtml.dart';
import 'package:quill_delta/quill_delta.dart';

void main() {
  final converter = NotusHtmlCodec();

  // Replace with the document you have take from the Zefyr editor
  final doc = "Test<ol><li>TTT</li><li>TSS</li></ol><ul><li>Fvjhggugigiy<strong>Test</strong></li></ul>TTT<strong>TEST</strong><br><br>";

  var html = converter.decode(doc);
  print(html); // The HTML representation of the Notus document

  print(NotusDocument.fromDelta(html));
}
