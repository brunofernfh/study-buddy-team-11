# Human vs. AI – Kann die KI bessere Requirements schreiben? (Teil 4 + Teil 5)

## Auswahl der fünf Requirements

Wir haben fünf Requirements aus [`repaired-requirements.md`](repaired-requirements.md) gewählt, die **jeweils ein anderes Hauptproblem** haben:

| REQ | Hauptproblem | Warum für den Vergleich interessant |
|---|---|---|
| REQ-001 | Präziser Parameter ohne Quelle, unbelegte Annahme | Erfindet die KI einen neuen Wert statt der 7 Tage? |
| REQ-002 | Vage, nicht prüfbar, nicht atomar | Setzt die KI Zielwerte ein, die niemand bestätigt hat? |
| REQ-007 | Widerspruch zu REQ-008 | Die KI bekommt REQ-008 **nicht**. Findet sie den Konflikt trotzdem oder löst sie ihn eigenmächtig? |
| REQ-011 | Verstoß gegen eine bekannte Rahmenbedingung | Kennt die KI die IT-Vorgabe aus dem Plot Twist? |
| REQ-015 | Rechtlich und ethisch fragwürdig | Repariert die KI nur sprachlich, oder hinterfragt sie die Notwendigkeit? |

---

## Runde 1 – Human

Die Human Version entspricht den Überarbeitungen aus [`repaired-requirements.md`](repaired-requirements.md). Hier die Kernaussagen in Kurzform:

| REQ | Strategie | Human Version (Kurzfassung) |
|---|---|---|
| REQ-001 | 🔎 INVESTIGATE | Keine endgültige Formulierung. Nur eine Struktur ohne Werte: *„Wenn eine studierende Person `[Hinweisart aktiviert hat]` und … über `[Zeitraum]` keine `[Aktivität]` ausgeführt hat, muss der Study Buddy ihr `[Hinweis]` anzeigen.“* Fünf Fragen an Studierende, Lehrende, IT und Datenschutz. |
| REQ-002 | ✏️ REWRITE + 🔎 INVESTIGATE | Aufgeteilt in REQ-002a (Antwortzeit) und REQ-002b (Gebrauchstauglichkeit, moderierter Usability-Test). Alle Zielwerte bleiben `[OFFEN]`. |
| REQ-007 | 🔎 INVESTIGATE | Widerspruch zu REQ-008 dokumentiert. Lösungsoption (unterstützende Hinweise einzeln deaktivierbar, verbindliche Mitteilungen über offizielle Kanäle) **zur Entscheidung** vorgelegt, nicht beschlossen. |
| REQ-011 | ✏️ REWRITE | *„Studierende müssen den Study Buddy mit ihrer bestehenden Anmeldung für den Online Campus nutzen können. Der Study Buddy darf kein zusätzliches Benutzerkonto und kein zusätzliches Passwort voraussetzen.“* Quelle: IT-Vorgabe (Plot Twist), Brief Abschnitt 7. |
| REQ-015 | ⚖️ RECONSIDER | Nicht übernommen. Begründung: Brief lässt offen, was nicht automatisiert werden darf; Datenschutz hält automatisierte Einstufung für besonders kritisch; Art. 22 DSGVO / AI Act; unbelegte Datenannahme. Gegenvorschlag „Studierende fordern selbst Unterstützung an“ nur zur Abstimmung. |

---

## Runde 2 – KI

| | |
|---|---|
| **KI-System / Modell** | Claude Opus 5.5 (Anthropic), Modell-ID `claude-opus-5-5` |
| **Datum** | 6. November 2026 |
| **Rahmenbedingungen** | Ein einziger Durchlauf für alle fünf Requirements in einer neuen Sitzung, ohne Nachfragen und ohne Nachbearbeitung. Die KI bekam **nicht** unsere Analyse, das Stakeholder-Register, den Plot Twist oder die Annahmen- und Fragenlisten. **Hinweis:** In der Arbeitsumgebung war der Project Brief als Projektbeschreibung hinterlegt. Die KI zitiert ihn mehrfach („laut Brief“), sie hatte also Zugriff darauf. |
| **Ergebnis** | Unverändert gespeichert in [`ai-version-raw.md`](ai-version-raw.md) |

**Verwendeter Prompt:**

```text
Du bist erfahrene*r Requirements Engineer. Kontext: Für die Ferdinand Porsche FernFH
(eine Fernhochschule mit überwiegend online organisiertem Studium) soll ein „Study Buddy“
konzipiert werden, der Studierende beim selbstorganisierten Lernen im bestehenden
Online Campus unterstützt. Das Projekt befindet sich in einer frühen Discovery-Phase.

Analysiere die folgenden fünf Anforderungsentwürfe. Benenne für jede Anforderung die
Qualitätsmängel und formuliere eine verbesserte Version der Anforderung.

REQ-001: Das System muss Studierende automatisch benachrichtigen, wenn sie sieben Tage
lang nicht im Online Campus aktiv waren.
REQ-002: Der Study Buddy muss schnell, intuitiv und besonders benutzerfreundlich sein.
REQ-007: Studierende müssen sämtliche Benachrichtigungen jederzeit deaktivieren können.
REQ-011: Studierende müssen für den Study Buddy ein separates Benutzerkonto mit eigenem
Passwort erstellen.
REQ-015: Ein KI-Modell muss anhand der Nutzungsdaten automatisch entscheiden, welche
Studierenden zusätzliche Betreuung benötigen.
```

> Wir haben einen eigenen Prompt verwendet. Der „Suggested AI Prompt“ aus Moodle lag uns beim Durchlauf nicht im Wortlaut vor. Der Prompt ist bewusst neutral gehalten: Er fordert die KI weder auf, keine Werte zu erfinden, noch Anforderungen zu verwerfen. So sehen wir ihr Standardverhalten.

---

## Runde 3 – The Quality Showdown

Skala 1 (sehr schwach) bis 5 (sehr gut). Alle Zitate der KI stammen aus [`ai-version-raw.md`](ai-version-raw.md).

### REQ-001 · The Seven-Day Rule

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 4 | 4 |
| Eindeutigkeit und Verständlichkeit | 3 | 4 |
| Vollständigkeit und Überprüfbarkeit | 2 | 5 |
| Umgang mit Annahmen | 5 | 2 |
| Abstimmung und Konflikte | 4 | 3 |
| **Gesamt** | **18 / 25** | **18 / 25** |

**Begründung:**
- **KI stärker bei Vollständigkeit:** Sie liefert eine vollständige Satzschablone **mit Abnahmekriterium** („Testperson A … sieht beim nächsten Aufruf genau einen Hinweis … Testperson B … erhält keinen“). Unsere Version ist nur eine Struktur ohne Testfall.
- **KI schwächer bei Annahmen:** Sie schreibt, ein Wert von 7 Tagen sei eine „nicht belegte Annahme“. Gleichzeitig führt sie selbst neue Festlegungen ein, die nirgends belegt sind:
  - „Abgabefristen der nächsten **[14, TBD]** Tage“: Die Zahl ist neu. Durch das „TBD“ sieht sie vorläufig aus, wirkt aber trotzdem als Anker.
  - „In vorlesungsfreien Zeiten **und bei gemeldeter Studienunterbrechung** werden keine Inaktivitätshinweise erzeugt“: Das setzt voraus, dass der Study Buddy Vorlesungszeiten und Unterbrechungsmeldungen kennt. Das ist eine **technische Möglichkeit, die niemand bestätigt hat** (`QUESTION-002`).
  - „Pro Lehrveranstaltung höchstens **ein** Hinweis“: eine Designentscheidung ohne Quelle.
- **Human stärker bei Abstimmung:** Wir nennen für jede offene Frage die zuständigen Stakeholder*innen (inkl. IT und Datenschutz). Die KI nennt nur pauschal „Studierende, Studiengangsleitungen, Datenschutz“.
- **Gute Idee der KI:** Der Hinweis soll „keine Aktivitätsdauer und keinen Vergleich mit anderen Studierenden“ nennen. Das greift die Sorge vor Kontrolle konkret auf, daran hatten wir nicht gedacht.

### REQ-002 · Fast and Friendly

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 4 | 4 |
| Eindeutigkeit und Verständlichkeit | 4 | 5 |
| Vollständigkeit und Überprüfbarkeit | 3 | 5 |
| Umgang mit Annahmen | 5 | 1 |
| Abstimmung und Konflikte | 3 | 3 |
| **Gesamt** | **19 / 25** | **18 / 25** |

**Begründung:**
- **KI stärker bei Überprüfbarkeit:** Sie teilt in fünf messbare Teilanforderungen auf (Performance, Erlernbarkeit, Zufriedenheit mit SUS, Barrierefreiheit, Konsistenz). Wir haben nur zwei.
- **KI schwach bei Annahmen, das deutlichste Beispiel im Vergleich:** Fast jede Zahl ist erfunden: „**[100, TBD]** gleichzeitige Nutzer:innen“, „**95 %** aller Ansichten“ (hier sogar ohne TBD), „**[2, TBD]** Sekunden“, „**[90 %, TBD]**“, „**[2, TBD]** Minuten“, „**[10, TBD]** Studierende“, „SUS **[75, TBD]**“. Die KI schreibt am Anfang selbst, scheinbare Präzision sei unehrlich. Sie hält sich aber nicht daran. Die Schreibweise „[Zahl, TBD]“ ist besonders tückisch: Beim Weiterverarbeiten bleibt erfahrungsgemäß die Zahl stehen und das TBD fällt weg.
- **Vorweggenommene Entscheidungen:** „**WCAG 2.2** Stufe AA“ steht ohne TBD da, obwohl der anzuwendende Standard offen ist (`QUESTION-010`). „Bedienkonzepte und **Gestaltungsrichtlinien** des bestehenden Online Campus“ setzt voraus, dass es solche Richtlinien gibt. Das wissen wir nicht.
- **Abstimmung:** Beide ordnen Barrierefreiheit nicht klar REQ-014 zu. Die KI vermischt sie mit REQ-002 (REQ-002d), wir verweisen nur auf die Überschneidung.

### REQ-007 · The Notification Paradox

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 4 | 5 |
| Eindeutigkeit und Verständlichkeit | 4 | 5 |
| Vollständigkeit und Überprüfbarkeit | 3 | 4 |
| Umgang mit Annahmen | 5 | 3 |
| Abstimmung und Konflikte | 5 | 3 |
| **Gesamt** | **21 / 25** | **20 / 25** |

**Begründung:**
- **KI fachlich stärker:** Sie findet zwei Mängel, die wir übersehen haben:
  1. „**Falsche Perspektive:** Die Pflicht liegt formal bei den Studierenden (‚müssen‘).“ Das ist ein klarer Dokumentationsmangel nach der Satzschablone.
  2. „Wer Benachrichtigungen abschaltet, hat damit nicht automatisch der **Datenverarbeitung** widersprochen.“ Das ist eine wichtige fachliche Unterscheidung.
  Außerdem ergänzt sie Reaktivierung und „alle mit einer Aktion deaktivieren“ (REQ-007b).
- **Human stärker bei Abstimmung:** Wir hatten alle 15 Entwürfe und haben den **direkten Widerspruch zu REQ-008** erkannt. Die KI hatte REQ-008 nicht. Sie ahnt den Konflikt („verpflichtende Mitteilungen … dürfen Studierende wahrscheinlich nicht abschalten“), **löst ihn dann aber eigenmächtig**: „Verpflichtende Mitteilungen der Studienadministration gehören nicht zum Study Buddy.“ Das ist als Tatsache formuliert, ist aber eine Entscheidung, die Studienadministration, Studiengangsleitung und Datenschutz treffen müssen. Wir haben dieselbe Idee nur als *Option zur Entscheidung* vorgelegt.
- **Annahmen:** „spätestens **[5 Minuten, TBD]**“ ist wieder eine erfundene Zahl. Positiv: Den Standardzustand lässt die KI ausdrücklich offen („mit Datenschutz abzustimmen“).

### REQ-011 · The New Login

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 5 | 5 |
| Eindeutigkeit und Verständlichkeit | 5 | 5 |
| Vollständigkeit und Überprüfbarkeit | 3 | 5 |
| Umgang mit Annahmen | 5 | 4 |
| Abstimmung und Konflikte | 5 | 4 |
| **Gesamt** | **23 / 25** | **23 / 25** |

**Begründung:**
- Beide kommen zum selben Ergebnis: bestehende Anmeldung, kein zusätzliches Konto.
- **KI stärker bei Vollständigkeit:** Sie ergänzt eine Randbedingung („darf keine eigenen Zugangsdaten … speichern oder verwalten“) und ein konkretes Abnahmekriterium. Beides fehlt bei uns.
- **Human stärker bei der Begründung:** Unsere Version stützt sich auf eine **konkrete Stakeholder*innen-Vorgabe** (IT, Plot Twist). Die KI leitet das Ergebnis nur aus dem Brief ab. Sie kennt die IT-Vorgabe nicht und betrachtet die Frage deshalb als offen („Zu klären mit: IT“).
- **Annahmen:** „z. B. SSO“ ist als Beispiel markiert und an die IT verwiesen. Das ist sauber gelöst.

### REQ-015 · The AI Knows Best

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 5 | 4 |
| Eindeutigkeit und Verständlichkeit | 4 | 4 |
| Vollständigkeit und Überprüfbarkeit | 3 | 4 |
| Umgang mit Annahmen | 5 | 2 |
| Abstimmung und Konflikte | 5 | 3 |
| **Gesamt** | **22 / 25** | **17 / 25** |

**Begründung:**
- **Analyse auf Augenhöhe:** Die KI erkennt Art. 22 DSGVO, den EU AI Act, Bias, fehlende menschliche Beteiligung und die vorweggenommene Technologieentscheidung. Zusätzlich nennt sie die voraussichtlich nötige **Datenschutz-Folgenabschätzung** und fehlende **Gütekriterien** (Fehlalarm-Raten). Beides fehlt bei uns.
- **Aber: Die KI repariert, statt zu hinterfragen.** Sie nennt REQ-015 selbst „den kritischsten der fünf Entwürfe“ und macht trotzdem **vier neue Anforderungen** daraus (REQ-015a–d). Damit legt sie Dinge fest, die niemand entschieden hat:
  - ein Einwilligungsmodell („die der Auswertung … **zugestimmt haben**“),
  - einen Erkennungsmechanismus („wenn **dokumentierte Indikatoren** erfüllt sind (z. B. **mehrere versäumte Abgabefristen**)“),
  - eine Weitergaberegel („nur … wenn die betroffene Person im Einzelfall ausdrücklich zugestimmt hat“).
  Fachlich sind das vernünftige Ideen. Als Anforderungen formuliert, wirken sie aber wie abgestimmte Entscheidungen, und ein automatisiertes Erkennen von Unterstützungsbedarf wird damit durch die Hintertür doch eingeführt.
- **Human stärker:** Unsere Strategie RECONSIDER hält ausdrücklich fest, dass die Anforderung vorerst nicht übernommen wird und welche Stakeholder*innen das klären müssen. Das entspricht dem Discovery-Status.

### Gesamtergebnis

| REQ | Human | AI |
|---|---|---|
| REQ-001 | 18 | 18 |
| REQ-002 | 19 | 18 |
| REQ-007 | 21 | 20 |
| REQ-011 | 23 | 23 |
| REQ-015 | 22 | 17 |
| **Summe** | **103 / 125** | **96 / 125** |

| Kriterium (Summe über 5 REQs) | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 22 | 22 |
| Eindeutigkeit und Verständlichkeit | 20 | 23 |
| Vollständigkeit und Überprüfbarkeit | 14 | 23 |
| Umgang mit Annahmen | 25 | 12 |
| Abstimmung und Konflikte | 22 | 16 |

Das Muster ist deutlicher als die Summe: Die KI gewinnt klar bei **Eindeutigkeit und Überprüfbarkeit**. Wir gewinnen klar beim **Umgang mit Annahmen** und bei der **Abstimmung**. Die Punkte allein sagen wenig. Eine sehr prüfbare Anforderung mit erfundenen Werten ist gefährlicher als eine offene Anforderung mit klaren Fragen.

---

## Teil 5 – Reflexion: Wer hat gewonnen?

**Bei welchen Qualitätskriterien war die KI besonders hilfreich? Wo war sie weniger zuverlässig?**
Besonders hilfreich war sie bei **Dokumentationsmängeln** und bei der **Prüfbarkeit**. Sie hat die falsche Perspektive „Studierende müssen …“ erkannt und Anforderungen sauber aufgeteilt. Zu jeder Fassung hat sie konkrete Abnahmekriterien formuliert. Außerdem brachte sie Aspekte ein, die wir übersehen hatten: die Trennung von Benachrichtigung und Widerspruch gegen die Datenverarbeitung, Datenschutz-Folgenabschätzung, Gütekriterien für Erkennung, nicht wertende Formulierung von Hinweisen. Weniger zuverlässig war sie beim **Umgang mit Annahmen** und bei der **Abstimmung**. Sie hat Werte und Mechanismen erfunden und offene Stakeholder*innen-Entscheidungen als Tatsachen formuliert.

**Hat die KI Informationen ergänzt, die aus der Aufgabenstellung nicht hervorgingen?**
Ja, an vielen Stellen:
- Zahlen: 14 Tage, 100 Nutzer:innen, 95 %, 2 Sekunden, 90 %, 2 Minuten, 10 Testpersonen, SUS 75, 5 Minuten.
- Standards: WCAG 2.2.
- Technische Möglichkeiten: Vorlesungszeiten und Studienunterbrechungen sind im System bekannt; es gibt Gestaltungsrichtlinien des Online Campus.
- Organisatorische Entscheidungen: Verpflichtende Mitteilungen gehören nicht zum Study Buddy; Einwilligungsmodell für REQ-015.

Problematisch ist, dass viele Zahlen als „[Zahl, TBD]“ markiert sind. Das wirkt vorsichtig, setzt aber trotzdem einen Anker. Die KI schreibt in ihrer Einleitung selbst, Präzision ohne Bestätigung sei unehrlich. Sie hält sich aber nicht daran.

**Hat die KI Anforderungen nur sprachlich verbessert oder auch deren fachliche Notwendigkeit hinterfragt?**
Teilweise. Bei REQ-001 und REQ-011 hat sie die Lösung hinter der Anforderung erkannt und nach dem eigentlichen Ziel gefragt. Bei REQ-015 hat sie die Probleme vollständig benannt. Verworfen oder zurückgestellt hat sie aber **keine einzige** Anforderung. Sie liefert immer eine „verbesserte Version“, auch dort, wo sie das Original selbst für den kritischsten Fall hält. Teilweise liegt das am Prompt („formuliere eine verbesserte Version“). Es zeigt aber, dass eine KI eher reparieren als widersprechen will.

**Gab es Fälle, in denen die Human Version überzeugender war? Warum?**
Ja, vor allem bei REQ-015 und REQ-007:
- Bei REQ-015 war die Entscheidung, nichts zu übernehmen, angemessener, als vier scheinbar fertige Anforderungen zu formulieren.
- Bei REQ-007 hatten wir den Kontext aller 15 Entwürfe und haben den echten Widerspruch zu REQ-008 gesehen.
- Bei REQ-011 konnten wir uns auf eine konkrete Stakeholder*innen-Vorgabe stützen, die die KI nicht kannte.

Unser Vorteil war also nicht bessere Sprache, sondern **Kontext**: Stakeholder-Register, Plot Twist, die anderen Requirements, Annahmen- und Fragenlisten. Und die Bereitschaft, eine Anforderung bewusst offen zu lassen.

**Welche Rolle sollte generative KI künftig bei der Qualitätssicherung von Requirements spielen?**
Als **zweite Prüferin, nicht als Autorin**. Sinnvoll ist sie für:
- Prüfung gegen Qualitätskriterien und Satzschablonen,
- Vorschläge für Aufteilung und Abnahmekriterien,
- eine Checkliste möglicher Mängel, die wir sonst übersehen.

Nicht übernehmen sollte sie Zahlen, technische Annahmen oder Entscheidungen zu Konflikten. Für die Praxis heißt das:
1. Jede Zahl und jeder Mechanismus aus einer KI-Antwort wird als `ASSUMPTION` erfasst, bis eine Quelle vorliegt.
2. Die KI braucht den vollständigen Kontext (alle Requirements, Stakeholder*innen, Rahmenbedingungen), sonst kann sie Konflikte nicht erkennen.
3. Der Prompt sollte die Strategien REWRITE, INVESTIGATE und RECONSIDER ausdrücklich zulassen, damit die KI nicht nur repariert.
4. Die Verantwortung für die Abstimmung mit Stakeholder*innen bleibt beim RE-Team.

Wer hat gewonnen? Bei der Formulierung die KI, bei der Urteilskraft das Team. Die finalen Fassungen in [`final-requirements.md`](final-requirements.md) nutzen beides.
