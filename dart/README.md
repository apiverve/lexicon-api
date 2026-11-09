# Word Lexicon Analyzer API - Dart/Flutter Client

Word Lexicon Analyzer inspects any single word to check linguistic properties including palindromes, isograms, and Scrabble validity. It identifies anagram potential, alphagram status, and sorted letter forms.

[![pub package](https://img.shields.io/pub/v/apiverve_lexicon.svg)](https://pub.dev/packages/apiverve_lexicon)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Word Lexicon Analyzer API](https://apiverve.com/marketplace/lexicon?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_lexicon: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_lexicon/apiverve_lexicon.dart';

void main() async {
  final client = LexiconClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'word': 'listen'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "word": "listen",
    "isAlphagram": false,
    "sortedForm": "eilnst",
    "isPalindrome": false,
    "hasAnagram": false,
    "isIsogram": true,
    "isPangramCandidate": false,
    "isScrabbleValid": true,
    "canBePalindromeAnagram": false
  }
}
```

## API Reference

- **API Home:** [Word Lexicon Analyzer API](https://apiverve.com/marketplace/lexicon?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/lexicon](https://docs.apiverve.com/ref/lexicon?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
