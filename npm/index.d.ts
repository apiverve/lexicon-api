declare module '@apiverve/lexicon' {
  export interface lexiconOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface lexiconResponse {
    status: string;
    error: string | null;
    data: WordLexiconAnalyzerData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface WordLexiconAnalyzerData {
      word:                   null | string;
      isAlphagram:            boolean | null;
      sortedForm:             null | string;
      isPalindrome:           boolean | null;
      hasAnagram:             boolean | null;
      isIsogram:              boolean | null;
      isPangramCandidate:     boolean | null;
      isScrabbleValid:        boolean | null;
      canBePalindromeAnagram: boolean | null;
  }

  export default class lexiconWrapper {
    constructor(options: lexiconOptions);

    execute(callback: (error: any, data: lexiconResponse | null) => void): Promise<lexiconResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: lexiconResponse | null) => void): Promise<lexiconResponse>;
    execute(query?: Record<string, any>): Promise<lexiconResponse>;
  }
}
