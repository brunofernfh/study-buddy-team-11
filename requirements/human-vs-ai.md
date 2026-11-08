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

Die Human Version entspricht den Überarbeitungen aus [`repaired-requirements.md`](repaired-requirements.md). Kernaussagen in Kurzform:

| REQ | Strategie | Human Version (Kurzfassung) |
|---|---|---|
| REQ-001 | 🔎 INVESTIGATE | Keine endgültige Formulierung. Nur eine Struktur ohne Werte: *„Wenn eine studierende Person `[Hinweisart aktiviert hat]` und in einer Lehrveranstaltung über `[Zeitraum]` keine `[Aktivität]` ausgeführt hat, muss der Study Buddy ihr `[Hinweis]` anzeigen.“* Fünf Fragen an Studierende, Lehrende, IT und Datenschutz. |
| REQ-002 | ✏️ REWRITE + 🔎 INVESTIGATE | Aufgeteilt in REQ-002a (Antwortzeit) und REQ-002b (Gebrauchstauglichkeit, moderierter Usability-Test). Alle Zielwerte bleiben `[OFFEN]`. |
| REQ-007 | 🔎 INVESTIGATE | Widerspruch zu REQ-008 dokumentiert. Lösungsoption (unterstützende Hinweise einzeln deaktivierbar, verbindliche Mitteilungen über offizielle Kanäle) **zur Entscheidung** vorgelegt, nicht beschlossen. |
| REQ-011 | ✏️ REWRITE | *„Studierende müssen den Study Buddy mit ihrer bestehenden Anmeldung für den Online Campus nutzen können. Der Study Buddy darf kein zusätzliches Benutzerkonto und kein zusätzliches Passwort voraussetzen.“* Quelle: IT-Vorgabe (Plot Twist), Brief Abschnitt 7. |
| REQ-015 | ⚖️ RECONSIDER | Nicht übernommen. Begründung: Brief lässt offen, was nicht automatisiert werden darf; Datenschutz hält automatisierte Einstufung für besonders kritisch; Art. 22 DSGVO / AI Act; unbelegte Datenannahme. Gegenvorschlag „Studierende fordern selbst Unterstützung an“ nur zur Abstimmung. |

---

## Runde 2 – KI

| | |
|---|---|
| **KI-System / Modell** | Claude Opus 5.5 (Anthropic), Modell-ID `claude-opus-5-5` |
| **Datum** | 8. November 2026 |
| **Prompt** | Suggested AI Prompt aus Moodle, wörtlich übernommen, Platzhalter `[REQUIREMENTS EINFÜGEN]` durch die fünf Original-Requirements ersetzt |
| **Rahmenbedingungen** | Ein einziger Durchlauf für alle fünf Requirements in einer neuen Sitzung, ohne Nachfragen und ohne Nachbearbeitung. Die KI bekam **nicht** unsere Analyse, das Stakeholder-Register, den Plot Twist, die anderen zehn Requirements oder die Annahmen- und Fragenlisten. **Hinweis:** In der Arbeitsumgebung war der Project Brief als Projektbeschreibung hinterlegt. Die KI zitiert ihn mehrfach („laut Brief“), sie hatte also Zugriff darauf. |
| **Ergebnis** | Unverändert gespeichert in [`ai-version-raw.md`](ai-version-raw.md) |

**Verwendeter Prompt:**

```text
Du bist Requirements Engineer und überprüfst Anforderungsentwürfe für den Digital Study
Buddy, ein digitales Unterstützungssystem für Studierende einer Fernhochschule. Analysiere
jede Anforderung anhand der Qualitätsaspekte Inhalt, Dokumentation und Abgestimmtheit.
1. Identifiziere konkrete Qualitätsmängel und begründe sie. 2. Formuliere eine verbesserte
Anforderung, soweit die vorliegenden Informationen dies erlauben. 3. Erfinde keine
Stakeholderbedürfnisse, Interviewergebnisse, rechtlichen Freigaben oder technischen
Rahmenbedingungen. 4. Kennzeichne fehlende Informationen, unbegründete Annahmen und
notwendige Abstimmungen ausdrücklich. 5. Schlage geeignete Akzeptanzkriterien nur vor,
wenn diese fachlich begründbar sind. 6. Gib für jede Anforderung den Status REWRITE,
INVESTIGATE oder RECONSIDER an. Hier sind die Anforderungen:

REQ-001: Das System muss Studierende automatisch benachrichtigen, wenn sie sieben Tage
lang nicht im Online Campus aktiv waren.
REQ-002: Der Study Buddy muss schnell, intuitiv und besonders benutzerfreundlich sein.
REQ-007: Studierende müssen sämtliche Benachrichtigungen jederzeit deaktivieren können.
REQ-011: Studierende müssen für den Study Buddy ein separates Benutzerkonto mit eigenem
Passwort erstellen.
REQ-015: Ein KI-Modell muss anhand der Nutzungsdaten automatisch entscheiden, welche
Studierenden zusätzliche Betreuung benötigen.
```

---

## Runde 3 – The Quality Showdown

Skala 1 (sehr schwach) bis 5 (sehr gut). Alle Zitate der KI stammen aus [`ai-version-raw.md`](ai-version-raw.md). Die Human-Seite haben wir bewusst genauso streng bewertet wie die KI-Seite.

### REQ-001 · The Seven-Day Rule

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 4 | 5 |
| Eindeutigkeit und Verständlichkeit | 3 | 4 |
| Vollständigkeit und Überprüfbarkeit | 2 | 4 |
| Umgang mit Annahmen | 4 | 4 |
| Abstimmung und Konflikte | 4 | 4 |
| **Gesamt** | **17 / 25** | **21 / 25** |

**Begründung:**
- **KI fachlich stärker:** Sie fragt nach dem **Zweck** („Erinnerung, Hilfsangebot, Orientierung“), nach der **Zulässigkeit** der Datenverarbeitung und danach, ob Studierende den Hinweis als „hilfreich oder kontrollierend“ wahrnehmen. Den Zweck haben wir nicht ausdrücklich hinterfragt.
- **KI stärker bei Überprüfbarkeit:** Sie formuliert bedingte Akzeptanzkriterien („erst sinnvoll, wenn Zeitraum und Aktivitätsdefinition geklärt sind“) inklusive Ausnahmezeiträumen und deaktivierter Funktion. Unsere Version enthält nur eine Struktur ohne Testfall.
- **Annahmen auf beiden Seiten:**
  - Die KI formuliert „Studierenden, die Erinnerungen bei Inaktivität **nicht deaktiviert haben**“. Damit setzt sie stillschweigend Opt-out als Standard, obwohl sie Opt-in/Opt-out bei REQ-007 selbst als offen markiert. Die Beispiele „Beurlaubung“ und „lehrveranstaltungsfreie Zeit“ setzen voraus, dass das System diese Informationen hat. Sie stehen aber korrekt im TBD.
  - Unsere Struktur baut ungeprüft den **Bezug auf die Lehrveranstaltung** ein („in einer Lehrveranstaltung“). Das ist plausibel, aber ebenfalls eine Annahme (`ASSUMPTION-003`), die nicht im Platzhalter steht.
- **Gleichstand bei Abstimmung:** Beide nennen die richtigen Stakeholder*innen. Die KI erkennt zusätzlich den Zielkonflikt mit „nicht kontrolliert fühlen“ und die Abhängigkeit zu REQ-007.

### REQ-002 · Fast and Friendly

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 4 | 4 |
| Eindeutigkeit und Verständlichkeit | 4 | 4 |
| Vollständigkeit und Überprüfbarkeit | 3 | 3 |
| Umgang mit Annahmen | 5 | 5 |
| Abstimmung und Konflikte | 3 | 4 |
| **Gesamt** | **19 / 25** | **20 / 25** |

**Begründung:**
- **Fast identisches Ergebnis:** Beide teilen in Performance und Gebrauchstauglichkeit auf und lassen alle Zielwerte offen. Die KI setzt hier **keine** Zahlen ein („[TBD: Zeit]“, „[TBD: Erfolgsquote]“).
- **KI stärker bei Abstimmung:** Sie erkennt, dass Barrierefreiheit „als eigene Anforderung zu erfassen“ ist (REQ-002c), und nennt den Nutzungskontext (mobil, Desktop, assistive Technologien). Wir haben die Überschneidung mit REQ-014 nur in der Analyse erwähnt.
- **Schwäche der KI, Status:** Sie vergibt **REWRITE**, obwohl alle Zielwerte und Kernaufgaben fehlen. Laut Definition setzt REWRITE voraus, dass „die notwendigen Informationen vorliegen“. Unsere Kombination REWRITE (Struktur) + INVESTIGATE (Werte) passt genauer.
- **Kleiner Anker:** Das Beispiel „z. B. die Übersicht ‚Mein Lernfortschritt‘“ wählt ausgerechnet eine Funktion, deren Bedeutung noch völlig offen ist (`QUESTION-003`).

### REQ-007 · The Notification Paradox

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 4 | 5 |
| Eindeutigkeit und Verständlichkeit | 4 | 5 |
| Vollständigkeit und Überprüfbarkeit | 3 | 5 |
| Umgang mit Annahmen | 5 | 5 |
| Abstimmung und Konflikte | 5 | 4 |
| **Gesamt** | **21 / 25** | **24 / 25** |

**Begründung:**
- **KI fachlich klar stärker.** Sie findet drei Punkte, die wir übersehen haben:
  1. „Der Brief nennt ausdrücklich als offen, ‚ob bestimmte Funktionen deaktiviert werden können‘. Die Anforderung nimmt also eine Entscheidung vorweg.“ Auch REQ-007 selbst ist also nicht abgestimmt, nicht nur sein Gegenstück REQ-008.
  2. „Deaktivieren und Datenverarbeitung beenden sind zwei verschiedene Dinge.“
  3. Die Abgrenzung zu den **bestehenden Benachrichtigungen des Online Campus**.
- **KI stärker bei Überprüfbarkeit:** Vier begründbare Akzeptanzkriterien, darunter „Die Einstellung bleibt über Sitzungen hinweg erhalten“.
- **Human stärker bei Abstimmung:** Wir hatten alle 15 Entwürfe und haben den **direkten logischen Widerspruch zu REQ-008** erkannt. Die KI hatte REQ-008 nicht. Sie stellt aber genau die richtige Frage („Gibt es nicht deaktivierbare Benachrichtigungen?“) und **entscheidet sie nicht** selbst. Das ist ein deutlicher Unterschied zum Zusatzexperiment (siehe unten), in dem die KI dieselbe Frage eigenmächtig beantwortet hat.

### REQ-011 · The New Login

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 5 | 4 |
| Eindeutigkeit und Verständlichkeit | 5 | 5 |
| Vollständigkeit und Überprüfbarkeit | 3 | 3 |
| Umgang mit Annahmen | 5 | 5 |
| Abstimmung und Konflikte | 5 | 3 |
| **Gesamt** | **23 / 25** | **20 / 25** |

**Begründung:**
- **Hier entscheidet der Kontext.** Wir wissen aus dem Plot Twist, dass die IT bereits vorgegeben hat, die bestehende Anmeldung zu nutzen. Deshalb ist bei uns **REWRITE** möglich. Die KI kennt diese Vorgabe nicht und wählt **RECONSIDER**. Für ihren Wissensstand ist das korrekt, und sie bleibt sauber bei „[TBD: ob die bestehende Authentifizierung … genutzt werden kann]“.
- **Gute Idee der KI:** Die lösungsneutrale Ersatzanforderung „ausschließlich authentifizierte Studierende [erhalten] Zugriff auf ihre **eigenen** Study-Buddy-Informationen“ beschreibt den eigentlichen Bedarf (Zugriffsschutz). Der fehlt bei uns. Gute RE-Praxis ist auch die Frage, ob es einen undokumentierten Grund für ein separates Konto gibt („Klärung mit der Quelle der Anforderung“).
- **Beide ohne Akzeptanzkriterium.** Bei uns ist das ein Versäumnis, weil die Information vorliegt. Bei der KI ist es konsequent.

### REQ-015 · The AI Knows Best

| Kriterium | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 5 | 5 |
| Eindeutigkeit und Verständlichkeit | 4 | 4 |
| Vollständigkeit und Überprüfbarkeit | 3 | 4 |
| Umgang mit Annahmen | 5 | 4 |
| Abstimmung und Konflikte | 5 | 4 |
| **Gesamt** | **22 / 25** | **21 / 25** |

**Begründung:**
- **Gleiche Grundentscheidung:** Beide wählen **RECONSIDER** und begründen das mit der vorweggenommenen Technologie- und Grundsatzentscheidung, mit fehlender menschlicher Beteiligung und mit rechtlichen Risiken. Die KI formuliert die Rechtslage vorsichtiger („Ob und welche Vorgaben hier greifen, ist nicht geklärt … Eine Zulässigkeit darf nicht angenommen werden“). Das ist sauberer als eine konkrete Rechtsnorm ohne Prüfung.
- **KI stärker bei Überprüfbarkeit:** Sie begründet ausdrücklich, warum **keine** Akzeptanzkriterien möglich sind („Kriterien, Datenbasis und Entscheidungsbefugnis vollständig ungeklärt“). Sie zerlegt außerdem „benötigen“ als dritten undefinierten Begriff.
- **Schwächen der KI:**
  - Die „mögliche Richtung“ beginnt mit „Das System **soll** … Hinweise auf verfügbare Unterstützungsangebote anzeigen“. Das ist eine abgeschwächte Verbindlichkeit („soll“ statt „muss“) und führt einen Erkennungsmechanismus ein, den sie eigentlich verwerfen will. Durch die TBDs ist er immerhin entschärft.
  - „Rechtsabteilung“ wird als Stakeholder genannt, obwohl nicht bekannt ist, ob die FernFH eine hat (kleine erfundene Annahme).
- **Human stärker bei Abstimmung:** Wir verweisen auf konkrete Stakeholder-Aussagen (Datenschutz: „automatisierte Einstufung besonders kritisch“) und auf die Kette REQ-004 → REQ-006 → REQ-015, die die KI ohne die anderen Requirements nicht sehen konnte.

### Gesamtergebnis

| REQ | Human | AI |
|---|---|---|
| REQ-001 | 17 | 21 |
| REQ-002 | 19 | 20 |
| REQ-007 | 21 | 24 |
| REQ-011 | 23 | 20 |
| REQ-015 | 22 | 21 |
| **Summe** | **102 / 125** | **106 / 125** |

| Kriterium (Summe über 5 REQs) | Human | AI |
|---|---|---|
| Fachliche Angemessenheit | 22 | 23 |
| Eindeutigkeit und Verständlichkeit | 20 | 22 |
| Vollständigkeit und Überprüfbarkeit | 14 | 19 |
| Umgang mit Annahmen | 24 | 23 |
| Abstimmung und Konflikte | 22 | 19 |

Die KI liegt knapp vorne. Ihren Vorsprung holt sie bei **Vollständigkeit und Überprüfbarkeit**: Sie hat konsequent begründete Akzeptanzkriterien vorgeschlagen oder begründet weggelassen. Wir liegen vorne bei **Abstimmung und Konflikte**, und zwar immer dort, wo Wissen außerhalb der fünf Requirements nötig war (REQ-008, Plot Twist, Stakeholder-Aussagen). Beim **Umgang mit Annahmen** liegen beide fast gleich. Mit diesem Prompt hat die KI kaum Werte erfunden, aber einzelne versteckte Festlegungen gemacht (Opt-out bei REQ-001, „soll“-Mechanismus bei REQ-015).

---

## Zusatzexperiment: Einfluss des Prompts

Vor dem Lauf mit dem Moodle-Prompt hatten wir dieselben fünf Requirements mit einem **neutralen Prompt** an dasselbe Modell gegeben. Dieser Prompt enthielt keine Vorgaben zu Annahmen, Akzeptanzkriterien oder Status:

```text
Du bist erfahrene*r Requirements Engineer. Kontext: Für die Ferdinand Porsche FernFH
(eine Fernhochschule mit überwiegend online organisiertem Studium) soll ein „Study Buddy“
konzipiert werden, der Studierende beim selbstorganisierten Lernen im bestehenden
Online Campus unterstützt. Das Projekt befindet sich in einer frühen Discovery-Phase.

Analysiere die folgenden fünf Anforderungsentwürfe. Benenne für jede Anforderung die
Qualitätsmängel und formuliere eine verbesserte Version der Anforderung.

[dieselben fünf Requirements]
```

Die Antwort ist unverändert in [`ai-version-neutral-prompt.md`](ai-version-neutral-prompt.md) dokumentiert. Sie wird **nicht** bewertet, zeigt aber deutlich, was ohne Leitplanken passiert:

| Beobachtung | Neutraler Prompt | Moodle-Prompt |
|---|---|---|
| Erfundene Zahlen | 14 Tage, 100 Nutzer:innen, 95 %, 2 s, 90 %, 2 min, 10 Testpersonen, SUS 75, 5 Minuten (meist als „[Zahl, TBD]“) | keine |
| Festgelegte Standards | „WCAG 2.2 Stufe AA“ ohne TBD | „[TBD: anzuwendender Standard]“ |
| Offene Entscheidungen als Tatsache | „Verpflichtende Mitteilungen … gehören nicht zum Study Buddy“ | „Gibt es nicht deaktivierbare Benachrichtigungen? Klärung mit Studienadministration und Datenschutz“ |
| Umgang mit REQ-015 | 4 neue Anforderungen (REQ-015a–d) mit Einwilligungsmodell und Indikatoren | RECONSIDER, keine Akzeptanzkriterien „derzeit möglich“ |
| Verworfene oder zurückgestellte REQs | keine | REQ-011, REQ-015 |

**Erkenntnis:** Wie zuverlässig die KI Annahmen von Fakten trennt, hängt **stark vom Prompt ab**. Ohne ausdrückliche Anweisung repariert sie alles und füllt Lücken mit plausiblen Zahlen. Mit der Anweisung „Erfinde keine … Rahmenbedingungen“ und der Pflicht zum Status hält sie sich weitgehend daran. Den fehlenden Kontext (REQ-008, Plot Twist, Stakeholder-Register) kann aber auch der bessere Prompt nicht ersetzen.

---

## Teil 5 – Reflexion: Wer hat gewonnen?

**Bei welchen Qualitätskriterien war die KI besonders hilfreich? Wo war sie weniger zuverlässig?**
Besonders hilfreich war die KI bei **Vollständigkeit und Überprüfbarkeit**. Sie hat zu fast jeder Anforderung bedingte Akzeptanzkriterien vorgeschlagen oder ausdrücklich begründet, warum noch keine möglich sind. Fachlich hat sie mehrere Punkte gefunden, die wir übersehen hatten:
- dass schon die Deaktivierbarkeit (REQ-007) laut Brief offen ist,
- dass Deaktivieren nicht dasselbe ist wie das Beenden der Datenverarbeitung,
- dass der Zweck von REQ-001 fehlt,
- dass hinter REQ-011 ein lösungsneutraler Bedarf nach Zugriffsschutz steht.

Weniger zuverlässig war sie bei **Abstimmung und Konflikten**. Ohne die anderen Requirements und ohne Stakeholder-Informationen konnte sie den Widerspruch zu REQ-008 und die IT-Vorgabe zu REQ-011 nicht erkennen. Außerdem waren ihre Status-Angaben nicht immer konsistent (REWRITE bei REQ-002, obwohl alle Werte fehlen).

**Hat die KI Informationen ergänzt, die aus der Aufgabenstellung nicht hervorgingen?**
Mit dem Moodle-Prompt nur wenig, aber nicht gar nicht:
- **Implizit Opt-out als Standard** bei REQ-001 („nicht deaktiviert haben“), obwohl sie Opt-in/Opt-out an anderer Stelle selbst als offen markiert.
- Die **„Rechtsabteilung“** als Stakeholder.
- Einen **Hinweis-Mechanismus** in der Richtung zu REQ-015.
- **Beispiele in Platzhaltern** (Beurlaubung, „Mein Lernfortschritt“), die Vorwissen über das System voraussetzen.

Mit einem neutralen Prompt (Zusatzexperiment) hat dasselbe Modell dagegen zahlreiche Zahlen, einen konkreten Standard und organisatorische Entscheidungen erfunden. Gerade die Schreibweise „[Zahl, TBD]“ wirkt vorsichtig, setzt aber trotzdem einen Anker.

**Hat die KI Anforderungen nur sprachlich verbessert oder auch deren fachliche Notwendigkeit hinterfragt?**
Mit dem Moodle-Prompt hat sie die Notwendigkeit ernsthaft hinterfragt. REQ-011 und REQ-015 stuft sie als RECONSIDER ein, bei REQ-015 „sollte die Anforderung in dieser Form verworfen werden“. Bei REQ-015 bietet sie trotzdem eine „mögliche Richtung“ an, die einen Teil des Problems wieder hereinholt. Mit dem neutralen Prompt hat sie keine einzige Anforderung zurückgestellt. Ob die KI hinterfragt, hängt also stark davon ab, ob man es ihr ausdrücklich erlaubt.

**Gab es Fälle, in denen die Human Version überzeugender war? Warum?**
Ja, bei REQ-011 und, was die Konflikte betrifft, bei REQ-007:
- Bei REQ-011 konnten wir uns auf eine konkrete IT-Vorgabe stützen und deshalb sauber neu formulieren, statt die Frage offen zu lassen.
- Bei REQ-007 haben wir den echten logischen Widerspruch zu REQ-008 gesehen.
- Bei REQ-015 haben wir die Kette REQ-004 → REQ-006 → REQ-015 erkannt. Diese Requirements sind einzeln problematisch, zusammen ergeben sie ein automatisches Profiling.

Unser Vorteil war nicht bessere Formulierung, sondern **Kontext**: alle 15 Requirements, Stakeholder-Register, Plot Twist, Annahmen- und Fragenlisten. Umgekehrt war die KI überall dort besser, wo es um handwerkliche Vollständigkeit ging. Ehrlich gesagt: Bei Akzeptanzkriterien und bei der Zweckfrage hätten wir genauer arbeiten müssen.

**Welche Rolle sollte generative KI künftig bei der Qualitätssicherung von Requirements spielen?**
Als **zweite Prüferin, nicht als Autorin**. Unser Vergleich zeigt drei Bedingungen, unter denen sie nützlich ist:
1. **Der Prompt muss Leitplanken setzen:** keine Werte erfinden, Annahmen markieren, die Strategien REWRITE / INVESTIGATE / RECONSIDER erlauben. Ohne diese Vorgaben füllt die KI Lücken mit plausiblen, aber unbelegten Details.
2. **Die KI braucht den vollständigen Kontext:** alle Requirements, Stakeholder-Aussagen, Rahmenbedingungen. Sonst kann sie Konflikte nicht erkennen, und das ist genau der Qualitätsaspekt „Abgestimmtheit“.
3. **Jede Zahl, jedes Beispiel und jede implizite Festlegung aus der KI-Antwort** wird als `ASSUMPTION` erfasst, bis eine Quelle vorliegt. Das gilt auch für scheinbar harmlose Formulierungen wie „nicht deaktiviert haben“.

Die Verantwortung für die Abstimmung mit Stakeholder*innen und für die Entscheidung, eine Anforderung zurückzustellen, bleibt beim RE-Team.

**Wer hat gewonnen?** Nach Punkten knapp die KI (106 : 102), weil sie handwerklich gründlicher war. Bei der Abstimmung lag das Team vorne, weil es den Kontext kannte. Die finalen Fassungen in [`final-requirements.md`](final-requirements.md) übernehmen von beiden das Beste.
