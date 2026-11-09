/// Response models for the Word Lexicon Analyzer API.

/// API Response wrapper.
class LexiconResponse {
  final String status;
  final dynamic error;
  final LexiconData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  LexiconResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory LexiconResponse.fromJson(Map<String, dynamic> json) => LexiconResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? LexiconData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Word Lexicon Analyzer API.

class LexiconData {
  String? word;
  bool? isAlphagram;
  String? sortedForm;
  bool? isPalindrome;
  bool? hasAnagram;
  bool? isIsogram;
  bool? isPangramCandidate;
  bool? isScrabbleValid;
  bool? canBePalindromeAnagram;

  LexiconData({
    this.word,
    this.isAlphagram,
    this.sortedForm,
    this.isPalindrome,
    this.hasAnagram,
    this.isIsogram,
    this.isPangramCandidate,
    this.isScrabbleValid,
    this.canBePalindromeAnagram,
  });

  factory LexiconData.fromJson(Map<String, dynamic> json) => LexiconData(
      word: json['word'],
      isAlphagram: json['isAlphagram'],
      sortedForm: json['sortedForm'],
      isPalindrome: json['isPalindrome'],
      hasAnagram: json['hasAnagram'],
      isIsogram: json['isIsogram'],
      isPangramCandidate: json['isPangramCandidate'],
      isScrabbleValid: json['isScrabbleValid'],
      canBePalindromeAnagram: json['canBePalindromeAnagram'],
    );
}

class LexiconRequest {
  String word;

  LexiconRequest({
    required this.word,
  });

  Map<String, dynamic> toJson() => {
      'word': word,
    };
}
