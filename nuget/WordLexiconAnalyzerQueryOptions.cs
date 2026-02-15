using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.WordLexiconAnalyzer
{
    /// <summary>
    /// Query options for the Word Lexicon Analyzer API
    /// </summary>
    public class WordLexiconAnalyzerQueryOptions
    {
        /// <summary>
        /// The word to analyze
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }
    }
}
