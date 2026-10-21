# Word Lexicon Analyzer API - Ruby Gem

Word Lexicon Analyzer inspects any single word to check linguistic properties including palindromes, isograms, and Scrabble validity. It identifies anagram potential, alphagram status, and sorted letter forms.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_lexicon'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_lexicon
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_lexicon'

# Initialize the client
client = APIVerve::Lexicon::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ word: "listen" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ word: "listen" })
  puts response["data"]
rescue APIVerve::Lexicon::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Lexicon::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Lexicon::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/lexicon?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/lexicon?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/lexicon?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
