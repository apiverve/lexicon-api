# Word Lexicon Analyzer API - PHP Package

Word Lexicon Analyzer inspects any single word to check linguistic properties including palindromes, isograms, and Scrabble validity. It identifies anagram potential, alphagram status, and sorted letter forms.

## Installation

Install via Composer:

```bash
composer require apiverve/lexicon
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Lexicon\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['word' => 'listen']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Lexicon\Client;
use APIVerve\Lexicon\Exceptions\APIException;
use APIVerve\Lexicon\Exceptions\ValidationException;

try {
    $response = $client->execute(['word' => 'listen']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lexicon?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/lexicon?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/lexicon?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
