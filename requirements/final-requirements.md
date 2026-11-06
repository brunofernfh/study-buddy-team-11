# Final Requirements – Finale Fassungen (Teil 4, Runde 4)

> Finale Fassungen der fünf verglichenen Requirements. Sie verbinden unsere Analyse ([`repaired-requirements.md`](repaired-requirements.md)) mit den brauchbaren Erkenntnissen aus der KI-Version ([`human-vs-ai.md`](human-vs-ai.md)).
>
> **Regeln für die Übernahme aus der KI-Version:**
> - Strukturelle und sprachliche Verbesserungen (Perspektive, Aufteilung, Abnahmekriterien) übernehmen wir, wenn sie keine neue Annahme enthalten.
> - Von der KI erfundene **Zahlen, Standards, technische Möglichkeiten und Entscheidungen** übernehmen wir **nicht** als Anforderung. Wenn sie fachlich interessant sind, erfassen wir sie als offene Frage oder Annahme.
> - Herkunft jeder Änderung: 🧑 = aus unserer Analyse · 🤖 = Idee aus der KI-Version, von uns geprüft.

## Übersicht

| REQ | Finale Entscheidung | Status |
|---|---|---|
| REQ-001 | Struktur und Abnahmekriterium festgelegt, Werte offen | 🔎 offen – wartet auf Elicitation |
| REQ-002 | Aufgeteilt in 3 messbare Qualitätsanforderungen, Zielwerte offen | ✏️ Struktur final, Werte offen |
| REQ-007 | Formulierung final **unter Vorbehalt** der Stakeholder*innen-Entscheidung zu REQ-008 | 🔎 bedingt |
| REQ-011 | Final | ✅ übernommen |
| REQ-015 | Vorerst **nicht übernommen**; eine Rahmenbedingung zur Abstimmung | ⚖️ zurückgestellt |

---

## REQ-001 · Hinweis bei Inaktivität

**Finale Fassung (Entwurf, nicht validiert):**
> **REQ-001-F:** Wenn eine studierende Person Inaktivitätshinweise aktiviert hat und in einer Lehrveranstaltung über `[Zeitraum → QUESTION-001, QUESTION-009]` keine `[Aktivität im Sinne von QUESTION-001]` ausgeführt hat, muss der Study Buddy ihr im Online Campus einen Hinweis anzeigen, der die offenen Lernaktivitäten dieser Lehrveranstaltung nennt.

**Abnahmekriterium** (🤖 Struktur, ohne erfundene Werte):
- Testperson A hat Inaktivitätshinweise aktiviert und erfüllt die Inaktivitätsbedingung. Beim nächsten Aufruf des Online Campus sieht sie einen Hinweis mit ihren offenen Lernaktivitäten.
- Testperson B hat Inaktivitätshinweise nicht aktiviert und erhält in derselben Situation keinen Hinweis.

**Was wir geändert haben:**
- 🧑 „Automatisch“ ersetzt durch eine Aktivierung durch die Person selbst. Das bleibt aber eine Annahme, weil noch offen ist, ob Opt-in gewünscht oder rechtlich nötig ist.
- 🧑 „Sieben Tage“ entfernt, weil der Wert keine Quelle hat.
- 🧑 Bezug auf die Lehrveranstaltung, weil der Aktivitätsrhythmus je Lehrveranstaltung unterschiedlich sein kann (`ASSUMPTION-003`).
- 🤖 Abnahmekriterium ergänzt.

**Aus der KI-Version nicht übernommen, sondern als offene Punkte erfasst:**

| KI-Vorschlag | Warum nicht übernommen | Erfasst als |
|---|---|---|
| „Abgabefristen der nächsten [14, TBD] Tage“ | Zahl ohne Quelle | offen in REQ-003a (Vorschauzeitraum) |
| „In vorlesungsfreien Zeiten und bei gemeldeter Studienunterbrechung keine Hinweise“ | Setzt voraus, dass der Study Buddy diese Informationen hat | Neue Frage an IT: Sind Vorlesungszeiten und Studienunterbrechungen im Online Campus hinterlegt? (Ergänzung zu `QUESTION-002`) |
| „Hinweis nennt keine Aktivitätsdauer und keinen Vergleich mit anderen“ | Gute Idee, aber eine Gestaltungsentscheidung, die Studierende bestätigen sollten | Frage für die Interviews mit Studierenden: Wie muss ein Hinweis formuliert sein, damit er nicht als Kontrolle wirkt? |

**Offene Fragen:** `QUESTION-001`, `QUESTION-002`, `QUESTION-004`, `QUESTION-005`, `QUESTION-007`, `QUESTION-009`
**Nicht validierte Annahmen:** `ASSUMPTION-001`, `ASSUMPTION-002`, `ASSUMPTION-003`

---

## REQ-002 · Antwortzeit und Gebrauchstauglichkeit

**Finale Fassung (Zielwerte offen):**
> **REQ-002a – Antwortzeit:** Der Study Buddy muss `[zentrale Ansicht(en) → Interviews Studierende]` in mindestens `[Anteil → IT]` der Aufrufe innerhalb von `[Zeit → IT]` vollständig anzeigen, gemessen unter `[Lastannahme → IT]`.
>
> **REQ-002b – Erlernbarkeit:** Testpersonen aus der Zielgruppe, darunter Studienanfänger*innen ohne Einschulung, müssen in einem moderierten Usability-Test `[zentrale Aufgaben → Interviews Studierende]` ohne Hilfe lösen können. Abnahmekriterium: `[Anteil erfolgreicher Testpersonen, Zeitlimit → Studierende, Projektleitung]`.
>
> **REQ-002c – Zufriedenheit** (🤖): Die Zufriedenheit mit dem Study Buddy muss im Usability-Test mit einem standardisierten Fragebogen (z. B. System Usability Scale) gemessen werden und mindestens `[Zielwert → Projektleitung]` erreichen.

**Was wir geändert haben:**
- 🧑 Aufteilung in eigene, messbare Qualitätsanforderungen. Alle Zielwerte bleiben offen und sind den Stakeholder*innen zugeordnet, die sie liefern müssen.
- 🤖 Dritte Teilanforderung (Zufriedenheit mit standardisiertem Fragebogen) ergänzt. Die *Methode* ist übernommen, der *Wert* (SUS 75) nicht.

**Aus der KI-Version nicht übernommen:**

| KI-Vorschlag | Warum nicht übernommen | Erfasst als |
|---|---|---|
| 100 Nutzer:innen, 95 %, 2 s, 90 %, 2 min, 10 Testpersonen, SUS 75 | Alle Werte ohne Quelle | Platzhalter mit zuständigen Stakeholder*innen |
| „WCAG 2.2 Stufe AA“ (REQ-002d) | Anzuwendender Standard ist offen; Barrierefreiheit wird in REQ-014 behandelt, nicht hier | `QUESTION-010` |
| „Gestaltungsrichtlinien des bestehenden Online Campus verwenden“ (REQ-002e) | Unbekannt, ob es solche Richtlinien gibt | Neue Frage an IT: Gibt es verbindliche Gestaltungsrichtlinien für den Online Campus? |

**Offene Fragen:** zentrale Aufgaben der Studierenden (Interviews), Antwortzeiten und Last (IT), Zusammensetzung der Testgruppe (Studierende, Studierende mit Barrierefreiheitsbedarf), Gestaltungsrichtlinien (IT)
**Nicht validierte Annahmen:** Es lassen sich „zentrale“ Ansichten und Aufgaben benennen.

---

## REQ-007 · Study-Buddy-Hinweise deaktivieren

**Finale Fassung (gilt nur, wenn die Stakeholder*innen der Trennung unten zustimmen):**
> **REQ-007a:** Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, jede Art von Study-Buddy-Hinweis einzeln in ihren persönlichen Einstellungen zu deaktivieren und wieder zu aktivieren.
>
> **REQ-007b** (🤖): Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, alle Study-Buddy-Hinweise mit einer einzigen Aktion zu deaktivieren.
>
> **REQ-007c** (🤖): Eine geänderte Einstellung muss spätestens nach `[Zeit → IT]` wirksam sein.

**Voraussetzung (zur Entscheidung, nicht beschlossen):**
Verbindliche Mitteilungen der Hochschule sind keine Study-Buddy-Hinweise und laufen weiterhin über die bestehenden offiziellen Kanäle. Damit würde der Widerspruch zu REQ-008 aufgelöst. **Entscheiden müssen:** Studienadministration, Studiengangsleitungen, Datenschutz (`QUESTION-011`).

**Was wir geändert haben:**
- 🤖 Die Pflicht liegt jetzt beim System („muss … die Möglichkeit bieten“) statt bei den Studierenden („Studierende müssen …“).
- 🧑 „Sämtliche“ auf Study-Buddy-Hinweise eingegrenzt; der Widerspruch zu REQ-008 ist als offene Entscheidung dokumentiert.
- 🤖 „Alle auf einmal deaktivieren“ und Wiederaktivierung ergänzt.
- 🤖 Neue offene Frage aus der KI-Analyse: Das Abschalten von Hinweisen ist nicht dasselbe wie ein Widerspruch gegen die Datenverarbeitung.

**Aus der KI-Version nicht übernommen:**

| KI-Vorschlag | Warum nicht übernommen | Erfasst als |
|---|---|---|
| „Verpflichtende Mitteilungen … gehören nicht zum Study Buddy“ (als Tatsache formuliert) | Das ist eine Stakeholder*innen-Entscheidung, keine Tatsache | Voraussetzung zur Entscheidung (siehe oben) |
| „spätestens [5 Minuten, TBD]“ | Zahl ohne Quelle | Platzhalter, zuständig: IT |

**Offene Fragen:**
- `QUESTION-005`: Standardzustand je Hinweisart (aktiviert oder deaktiviert)?
- `QUESTION-011`: Katalog verbindlicher Mitteilungen
- Neu: Müssen Studierende der Verarbeitung ihrer Daten für den Study Buddy unabhängig von den Hinweis-Einstellungen widersprechen können? → Datenschutz

**Nicht validierte Annahmen:** Studierende wollen Hinweise einzeln steuern statt nur alles oder nichts (`ASSUMPTION-002` im weiteren Sinn).

---

## REQ-011 · Anmeldung über den Online Campus

**Finale Fassung:**
> **REQ-011-F (Rahmenbedingung):** Studierende müssen den Study Buddy mit ihrer bestehenden Anmeldung für den Online Campus nutzen können. Der Study Buddy darf kein zusätzliches Benutzerkonto und kein zusätzliches Passwort voraussetzen.
>
> **REQ-011a** (🤖): Der Study Buddy darf keine eigenen Zugangsdaten (Benutzernamen, Passwörter) speichern oder verwalten.

**Abnahmekriterium** (🤖): Eine im Online Campus angemeldete Testperson öffnet den Study Buddy und sieht ihre persönlichen Inhalte, ohne erneut Zugangsdaten einzugeben.

**Quelle:** IT-Vorgabe ([Plot Twist](../stakeholders/D2%20-%20Stakeholder%20Map/04_plot-twist.md): „Eigener Login und eigene Benutzerverwaltung entfallen“), Project Brief Abschnitt 7.

**Was wir geändert haben:**
- 🧑 Die Rahmenbedingung stützt sich auf eine konkrete Stakeholder*innen-Vorgabe.
- 🤖 REQ-011a und das Abnahmekriterium ergänzt. Beides lässt sich direkt aus der IT-Vorgabe ableiten, es ist also keine neue Annahme.

**Offen (ändert die Anforderung nicht):** Welches Anmeldesystem konkret genutzt wird; ob die Vorgabe für alle Nutzer*innengruppen gilt (Fragen aus dem Plot Twist an die IT).

---

## REQ-015 · Automatisierte Entscheidung über Betreuungsbedarf

**Finale Entscheidung:** ⚖️ **Vorerst nicht übernommen.**

**Begründung:**
- Der Brief lässt ausdrücklich offen, welche Entscheidungen *nicht* automatisiert werden dürfen und wann ein Mensch eingebunden werden muss. REQ-015 würde diese Frage ohne Abstimmung beantworten.
- Der Datenschutz hält eine automatisierte Einstufung für besonders kritisch und will den Einsatz von KI gesondert prüfen.
- Mögliche rechtliche Hürden: Art. 22 DSGVO, EU AI Act (`QUESTION-013`). 🤖 Eine Datenschutz-Folgenabschätzung ist voraussichtlich erforderlich.
- Die Grundannahme ist unbelegt: Nutzungsdaten bilden Betreuungsbedarf ab (`ASSUMPTION-001`, `ASSUMPTION-004`).
- Wer „zusätzliche Betreuung“ leisten würde, ist unklar (`QUESTION-008`).

**Vorschlag zur Abstimmung mit Datenschutz und Hochschulleitung (Rahmenbedingung, nicht beschlossen):**
> **REQ-015-C:** Entscheidungen darüber, ob eine studierende Person zusätzliche Betreuung erhält, dürfen nicht automatisiert getroffen werden. Sie werden von einer zuständigen Person `[Rolle → Studiengangsleitungen, Studierendenservices]` getroffen.

**Ideen aus der KI-Version, als offene Fragen erfasst (nicht als Anforderung):**

| KI-Vorschlag | Erfasst als Frage | Stakeholder*in |
|---|---|---|
| Hinweis auf Unterstützungsangebote bei „dokumentierten Indikatoren (z. B. mehrere versäumte Abgabefristen)“ | Soll der Study Buddy überhaupt Unterstützungsbedarf erkennen? Wenn ja, nach welchen transparenten Kriterien und nur gegenüber der betroffenen Person? | Studierende, Lehrende, Datenschutz |
| Anzeige, „welche Daten und Kriterien zu einem Hinweis geführt haben“ | Welche Transparenz brauchen Studierende bei datenbasierten Hinweisen? (ergänzt SB-NFR-05 / `QUESTION-004`) | Datenschutz, Studierende |
| Weitergabe an Betreuungsperson nur mit Zustimmung im Einzelfall | Unter welchen Bedingungen darf eine Information an Hochschulpersonal gehen? (`QUESTION-006`) | Datenschutz, Studierendenvertretung |
| Gütekriterien (Fehlalarme, übersehene Fälle) | Falls eine Erkennung eingeführt wird: welche Fehlerraten sind akzeptabel, und wer entscheidet das? | Studiengangsleitungen, Datenschutz |
| Regelbasiert statt KI | Ist für einzelne Funktionen eine transparente Regel ausreichend? | IT, Datenschutz |

**Was stattdessen geklärt wird:**
- Welche Entscheidungen dürfen automatisiert werden? → Datenschutz, Hochschulleitung
- Welche Unterstützungsangebote gibt es? → Studierendenservices, Studienadministration (`QUESTION-008`)
- Wofür wäre KI aus Sicht der Studierenden hilfreich? → Studierende, Studierendenvertretung

---

## Neue offene Punkte aus Runde 4

Diese Punkte sind durch den KI-Vergleich entstanden und werden in der nächsten Elicitation-Runde aufgenommen:

| Punkt | Zu klären mit | Bezug |
|---|---|---|
| Sind Vorlesungszeiten und Studienunterbrechungen im Online Campus hinterlegt und für den Study Buddy nutzbar? | IT | REQ-001, `QUESTION-002` |
| Gibt es verbindliche Gestaltungsrichtlinien für den Online Campus? | IT | REQ-002 |
| Wie muss ein Hinweis formuliert sein, damit er nicht als Kontrolle wirkt? | Studierende, Studierendenvertretung | REQ-001, REQ-015 |
| Muss der Widerspruch gegen die Datenverarbeitung getrennt von den Hinweis-Einstellungen möglich sein? | Datenschutz | REQ-007 |
| Welche Fehlerraten wären bei einer eventuellen Erkennung von Unterstützungsbedarf akzeptabel? | Studiengangsleitungen, Datenschutz | REQ-015 |
