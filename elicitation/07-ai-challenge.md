# 07 – AI Challenge: The Overconfident Intern

Unser KI-Praktikant hat folgende „Requirements“ vorgelegt:

> **REQ-001:** Das System soll Studierende nach sieben Tagen Inaktivität automatisch erinnern.
> **REQ-002:** Studierende sollen jeden Montag eine personalisierte Übersicht ihres Lernfortschritts erhalten.
> **REQ-003:** Erkennt das System einen kritischen Lernrückstand, soll automatisch die Studiengangsleitung informiert werden.

**Gesamturteil:** Alle drei sind keine Requirements, sondern **vorweggenommene Lösungen** mit konkreten Parametern (7 Tage, Montag, Studiengangsleitung), für die es keine Quelle gibt. Sie klingen präzise, beruhen aber auf ungeprüften Annahmen. Wir untersuchen alle drei; REQ-003 ist die kritischste.

---

## REQ-001 – Erinnerung nach sieben Tagen Inaktivität

### Getroffene Annahmen
- Inaktivität im Online Campus bedeutet, dass nicht gelernt wird (→ `ASSUMPTION-001`).
- Fehlende Aktivität deutet auf Unterstützungsbedarf hin (→ `ASSUMPTION-001`).
- Studierende wünschen proaktive Erinnerungen (→ `ASSUMPTION-002`).
- Eine Erinnerung ist eine wirksame Reaktion (statt z. B. Hilfeangebot oder gar nichts).
- Sieben Tage sind für alle Studierenden, Studiengänge und Semesterphasen ein sinnvoller Schwellenwert (→ `ASSUMPTION-003`).
- Inaktivität ist technisch eindeutig messbar.

### Fehlende Informationen
- Was zählt als „Aktivität“? Login, Seitenaufruf, Bearbeitung einer Lernaktivität, Download? (→ `QUESTION-001`)
- Welche Aktivitätsdaten erfasst der Online Campus überhaupt? (→ `QUESTION-002`)
- Wie sieht ein normaler Aktivitätsrhythmus aus (vorlesungsfreie Zeit, Prüfungsphasen, Urlaub, Krankheit)?
- Über welchen Kanal, mit welchem Inhalt, wie oft wiederholt?
- Darf Inaktivität überhaupt für diesen Zweck ausgewertet werden? (→ `QUESTION-004`)
- Können Studierende das abschalten? (→ `QUESTION-005`)

### Woher müssten die Informationen kommen?
| Information | Stakeholder*in |
|---|---|
| Bedeutung von Inaktivität, Wunsch nach Erinnerungen, Kanal | Studierende |
| Verfügbare Aktivitätsdaten, Messbarkeit | IT / Online Campus |
| Erwarteter Aktivitätsrhythmus je LV/Studiengang | Lehrende, Studiengangsleitungen |
| Zulässigkeit der Auswertung, Opt-out | Datenschutz |

### Fragen zur Überprüfung
- An Studierende: *„Erzählen Sie von einer Phase, in der Sie länger nicht im Online Campus waren. Was war da los, und haben Sie in dieser Zeit trotzdem gelernt?“*
- An Studierende: *„Wie würde es Ihnen gehen, wenn Sie nach einer bewussten Pause eine Nachricht der Hochschule bekommen?“*
- An IT: *„Welche Ereignisse werden im Online Campus protokolliert, und was davon unterscheidet ‚eingeloggt‘ von ‚gelernt‘?“*
- An Lehrende: *„Gibt es in Ihren Lehrveranstaltungen Zeiträume, in denen Studierende planmäßig nicht im Online Campus aktiv sind?“*
- An Datenschutz: *„Ist die Auswertung von Login-Zeiten zum Zweck individueller Benachrichtigungen von der bestehenden Rechtsgrundlage gedeckt?“*

---

## REQ-002 – Wöchentliche personalisierte Fortschrittsübersicht am Montag

### Getroffene Annahmen
- Lernfortschritt ist definiert und aus Systemdaten messbar (→ `ASSUMPTION-004`).
- Studierende wollen eine solche Übersicht – und zwar zugestellt (Push) statt bei Bedarf abrufbar.
- Ein wöchentlicher Rhythmus passt zum Studium; Montag passt für alle (auch für Berufstätige, die am Wochenende lernen).
- „Personalisiert“ ist klar – tatsächlich ist offen, was personalisiert wird (Inhalt, Empfehlungen, Vergleich mit anderen?).
- Eine Übersicht wirkt motivierend und nicht entmutigend, wenn man im Rückstand ist.

### Fehlende Informationen
- Definition von „Lernfortschritt“ (→ `QUESTION-003`).
- Welcher Rhythmus und Zeitpunkt passt zu welchen Studierenden? Selbst einstellbar?
- Push oder Pull? Kanal (E-Mail, Online Campus, App)?
- Wird verglichen (mit Plan, mit Kohorte)? Wenn ja – fühlt sich das unterstützend oder unter Druck setzend an?
- Wer sieht diese Übersicht außer den Studierenden selbst?
- Barrierefreiheit der Darstellung.

### Woher müssten die Informationen kommen?
| Information | Stakeholder*in |
|---|---|
| Eigenes Verständnis von Fortschritt, Rhythmus, Kanal, Wirkung | Studierende |
| Didaktischer „erwarteter Verlauf“ | Lehrende, Studiengangsleitungen |
| Messbare Fortschrittsdaten | IT / Online Campus |
| Zugriff, Zweckbindung | Datenschutz |

### Fragen zur Überprüfung
- An Studierende: *„Woran merken Sie für sich selbst, ob Sie im Studium gut unterwegs sind?“*
- An Studierende: *„Wann in der Woche planen Sie Ihr Lernen – und womit?“*
- An Lehrende: *„Gibt es für Ihre LV einen vorgesehenen Bearbeitungsverlauf, und wie verbindlich ist er?“*
- An IT: *„Welche Daten bilden den Bearbeitungsstand einer Lernaktivität ab – auch teilweise Bearbeitung?“*

---

## REQ-003 – Automatische Information der Studiengangsleitung bei kritischem Lernrückstand

**Am problematischsten**, weil es personenbezogene Daten ohne Mitwirkung der Studierenden an Dritte weitergibt – genau das, was der Brief als „Kontrolle oder Überwachung“ vermeiden will.

### Getroffene Annahmen
- „Kritischer Lernrückstand“ ist definierbar und zuverlässig automatisch erkennbar (→ `ASSUMPTION-004`).
- Die Studiengangsleitung ist die richtige Ansprechperson – nicht Lehrende, Beratung, Studienadministration oder zuerst die Studierenden selbst (→ `ASSUMPTION-005`).
- Die Studiengangsleitung will diese Informationen, hat Kapazität und einen Prozess, darauf zu reagieren.
- Eine automatische Weitergabe ohne Wissen/Zustimmung der Studierenden ist rechtlich zulässig (→ `QUESTION-006`).
- Die Weitergabe hilft – und schadet nicht (Stigmatisierung, Einfluss auf Bewertung, Vertrauensverlust).
- Fehlalarme sind unproblematisch.

### Fehlende Informationen
- Definition „kritischer Lernrückstand“ und Erkennungsgenauigkeit (Falsch-Positive/-Negative).
- Wer soll informiert werden, mit welchem Ziel und mit welcher erwarteten Reaktion?
- Werden Studierende vorher informiert / um Zustimmung gebeten? Können sie widersprechen?
- Rechtliche Bewertung (Profiling, automatisierte Entscheidungen, Zweckbindung, Art. 22 DSGVO).
- Rollenkonflikt: Studiengangsleitung ist teils auch an Bewertung/Prüfungsentscheidungen beteiligt.
- Welche Unterstützungsangebote existieren, an die überhaupt vermittelt werden kann? (→ `QUESTION-008`)

### Woher müssten die Informationen kommen?
| Information | Stakeholder*in |
|---|---|
| Akzeptanz, gewünschte Ansprechperson, Kontrolle | Studierende, Studierendenvertretung |
| Bereitschaft, Kapazität, Prozess, Rollenkonflikt | Studiengangsleitungen |
| Zulässigkeit, Einwilligung, Art. 22 DSGVO | Datenschutz |
| Verfügbare Unterstützungsangebote | Studierendenservices / Beratung |
| Strategische Haltung zu Eingriffen | Hochschulleitung |

### Fragen zur Überprüfung
- An Studiengangsleitungen: *„Erzählen Sie von einem Fall, in dem Sie gemerkt haben, dass jemand Unterstützung braucht. Woran, und was haben Sie dann getan?“*
- An Studiengangsleitungen: *„Welche Informationen über Studierende möchten Sie bewusst nicht haben – etwa weil Sie auch bewerten?“*
- An Studierende: *„Wenn es bei Ihnen nicht gut läuft – wer sollte das erfahren dürfen, und wer entscheidet darüber?“*
- An Datenschutz: *„Unter welchen Bedingungen darf eine automatisch erzeugte Einschätzung an Hochschulpersonal weitergegeben werden? Ist eine Einwilligung erforderlich?“*

---

## Lessons Learned

1. **Präzision ist kein Beweis.** Konkrete Zahlen („sieben Tage“, „Montag“) wirken wie Ergebnisse einer Analyse, sind aber erfunden. Jede Zahl braucht eine Quelle.
2. **Das Wort „automatisch“ ist ein Warnsignal.** Es verdeckt die Frage, ob hier überhaupt automatisiert entschieden werden darf.
3. **Problem vor Lösung.** Hinter allen drei Aussagen steht ein mögliches Bedürfnis („Studierende sollen nicht unbemerkt den Anschluss verlieren“). Das Bedürfnis ist unser Elicitation-Gegenstand – nicht die Lösung.
4. **Mögliche lösungsneutrale Neuformulierung (Hypothese, noch nicht validiert):**
   *„Studierende sollen die Möglichkeit haben, frühzeitig zu erkennen, wenn sie im Studium den Anschluss zu verlieren drohen, und selbst entscheiden können, ob und welche Unterstützung sie in Anspruch nehmen.“*
   → bleibt im Status **Hypothese**, bis die Interviews es bestätigen oder widerlegen.
