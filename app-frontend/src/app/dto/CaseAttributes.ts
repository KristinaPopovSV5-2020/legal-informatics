export interface CaseAttributes {
  id: {
    timestamp: number;
    date: number;
  };
  caseId: string;
  caseNumber: string;
  judge: string;
  defendant: string;
  criminalOffense: string;
  court: string;
  date: string;
  previouslyConvicted: string | null;
  forSameOffense: string;
  illegallyPossessesWeapon: string | null;
  location: string;
  weapon: string;
  ammunitionCount: string;
  financialStatus: string;
  admittedGuilt: string | null;
  remorseful: string | null;
  weaponType: string;
  injuryCausedByWeapon: string;
  fineAmount: string;
  securityMeasure: string;
  violatedArticles: string;
  sentence: string;
  similarity: number | null;
}
