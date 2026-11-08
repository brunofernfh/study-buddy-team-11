# Final Requirements – Finale Fassungen (Teil 4, Runde 4)

> Finale Fassungen der fünf verglichenen Requirements. Sie verbinden unsere Analyse ([`repaired-requirements.md`](repaired-requirements.md)) mit den brauchbaren Erkenntnissen aus dem KI-Vergleich ([`human-vs-ai.md`](human-vs-ai.md)).
>
> **Regeln für die Übernahme aus der KI-Version:**
> - Strukturelle und fachliche Verbesserungen (Perspektive, Aufteilung, Akzeptanzkriterien, zusätzliche offene Fragen) übernehmen wir, wenn sie keine neue Annahme enthalten.
> - Zahlen, Standards, technische Möglichkeiten und Entscheidungen ohne Grundlage übernehmen wir **nicht** als Anforderung. Wenn sie fachlich interessant sind, erfassen wir sie als offene Frage oder Annahme.
> - Herkunft jeder Änderung: 🧑 = aus unserer Analyse · 🤖 = aus der bewerteten KI Version (Moodle-Prompt) · 🧪 = aus dem Zusatzexperiment (neutraler Prompt), von uns geprüft.

## Übersicht

| REQ | Finale Entscheidung | Status |
|---|---|---|
| REQ-001 | Struktur und bedingte Akzeptanzkriterien festgelegt, Werte und Zweck offen | 🔎 offen – wartet auf Elicitation |
| REQ-002 | Aufgeteilt in messbare Qualitätsanforderungen, Zielwerte offen; Barrierefreiheit ausgelagert | ✏️ Struktur final, Werte offen |
| REQ-007 | Formulierung final **unter Vorbehalt** der Stakeholder*innen-Entscheidungen | 🔎 bedingt |
| REQ-011 | Final | ✅ übernommen |
| REQ-015 | Vorerst **nicht übernommen**; eine Rahmenbedingung zur Abstimmung | ⚖️ zurückgestellt |

---

## REQ-001 · Hinweis bei Inaktivität

**Finale Fassung (Entwurf, nicht validiert):**
> **REQ-001-F:** Wenn eine studierende Person Inaktivitätshinweise `[aktiviert bzw. nicht deaktiviert hat → QUESTION-005]` und über `[Zeitraum → QUESTION-001, QUESTION-009]` keine `[Aktivität im Sinne von QUESTION-001]` im Online Campus ausgeführt hat, muss der Study Buddy ihr über `[Kanal → QUESTION-007]` einen Hinweis geben, der ihre offenen Lernaktivitäten nennt. Ausgenommen sind `[Ausnahmezeiträume → Lehrende, Studiengangsleitungen; Verfügbarkeit der Daten → IT]`.

**Akzeptanzkriterien** (🤖, erst prüfbar, wenn die Platzhalter geklärt sind):
- Nach dem festgelegten Zeitraum ohne definierte Aktivität wird genau ein Hinweis ausgelöst.
- In Ausnahmezeiträumen wird kein Hinweis ausgelöst.
- Bei deaktivierter Funktion wird kein Hinweis ausgelöst.

**Was wir geändert haben:**
- 🧑 „Sieben Tage“ entfernt, weil der Wert keine Quelle hat. „Automatisch“ ersetzt durch eine Steuerung durch die Person selbst.
- 🧑 Opt-in oder Opt-out bleibt **offen**. Die KI-Version setzt hier stillschweigend Opt-out („nicht deaktiviert haben“), das übernehmen wir nicht als Festlegung.
- 🧑 Den Bezug „in einer Lehrveranstaltung“ aus unserer Human Version haben wir wieder entfernt, weil er selbst eine ungeprüfte Annahme war (`ASSUMPTION-003`). Er ist jetzt eine offene Frage.
- 🤖 Ausnahmezeiträume und bedingte Akzeptanzkriterien ergänzt.

**Offene Fragen:**
- 🤖 **Neu:** Welchen Zweck soll der Hinweis erfüllen (Erinnerung, Hilfsangebot, Orientierung)? → Studierende, Studiengangsleitungen
- 🤖 **Neu:** Wie nehmen Studierende einen solchen Hinweis wahr, eher hilfreich oder eher kontrollierend? Wie müssen Inhalt und Tonalität sein? → Interviews mit Studierenden
- 🧑 Soll Inaktivität je Lehrveranstaltung oder über den gesamten Online Campus betrachtet werden? → Lehrende, Studierende
- Weitere: `QUESTION-001`, `QUESTION-002`, `QUESTION-004`, `QUESTION-005`, `QUESTION-007`, `QUESTION-009`

**Nicht validierte Annahmen:** `ASSUMPTION-001`, `ASSUMPTION-002`, `ASSUMPTION-003`

---

## REQ-002 · Antwortzeit und Gebrauchstauglichkeit

**Finale Fassung (Zielwerte offen):**
> **REQ-002a – Antwortzeit:** Der Study Buddy muss `[Kernansicht(en) → Interviews Studierende]` in mindestens `[Anteil → IT]` der Aufrufe innerhalb von `[Zeit → IT]` vollständig anzeigen, gemessen unter `[Lastbedingungen und Umgebung → IT]`.
>
> **REQ-002b – Erlernbarkeit:** Studierende aus der Zielgruppe ohne vorherige Einschulung, darunter Studienanfänger*innen, müssen in einem moderierten Usability-Test `[Kernaufgaben → Interviews Studierende]` ohne Hilfe erfolgreich abschließen können. Abnahmekriterium: `[Erfolgsquote, Zeitlimit → Studierende, Projektleitung]`.
>
> **REQ-002c – Zufriedenheit** (🤖 🧪): Die Zufriedenheit wird im Usability-Test mit einem standardisierten Fragebogen (z. B. System Usability Scale) gemessen und muss mindestens `[Zielwert → Projektleitung]` erreichen.
>
> **Barrierefreiheit** (🤖): nicht Teil von REQ-002, sondern eigene Anforderung → siehe REQ-014 in [`quality-review.md`](quality-review.md) und `QUESTION-010`.

**Was wir geändert haben:**
- 🧑 Aufteilung in eigene, messbare Qualitätsanforderungen. Alle Zielwerte bleiben offen und sind den Stakeholder*innen zugeordnet, die sie liefern müssen.
- 🤖 Barrierefreiheit ausdrücklich ausgelagert. Nutzungskontext (mobil, Desktop, assistive Technologien) als offene Frage ergänzt.
- 🤖 🧪 Messmethode „standardisierter Fragebogen“ übernommen, den Zielwert nicht (das Zusatzexperiment hatte „SUS 75“ erfunden).
- 🧑 Status bleibt **REWRITE (Struktur) + INVESTIGATE (Werte)**. Ein reines REWRITE wie in der KI-Version passt nicht, weil die notwendigen Informationen fehlen.

**Offene Fragen:** Kernaufgaben der Studierenden (Interviews) · erreichbare Antwortzeiten und Last (IT) · 🤖 relevanter Nutzungskontext (Studierende, IT) · Zusammensetzung der Testgruppe (Studierende, Studierende mit Barrierefreiheitsbedarf)
**Nicht validierte Annahmen:** Es lassen sich „Kernansichten“ und „Kernaufgaben“ benennen.

---

## REQ-007 · Study-Buddy-Hinweise deaktivieren

**Finale Fassung (gilt nur, wenn die Stakeholder*innen den Voraussetzungen unten zustimmen):**
> **REQ-007a:** Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, jede Art von Study-Buddy-Hinweis `[Liste der Hinweisarten → wird mit den Funktionen festgelegt]` einzeln in ihren persönlichen Einstellungen zu deaktivieren und wieder zu aktivieren, ohne dafür Dritte kontaktieren zu müssen.
>
> **REQ-007b** (🧪): Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, alle Study-Buddy-Hinweise mit einer einzigen Aktion zu deaktivieren.

**Akzeptanzkriterien** (🤖):
- Nach dem Deaktivieren einer Hinweisart erhält die Person keinen Hinweis dieser Art mehr.
- Die Einstellung lässt sich ohne Unterstützung Dritter ändern.
- Die Einstellung bleibt über Sitzungen hinweg erhalten.
- Eine Wiederaktivierung ist jederzeit möglich.

**Voraussetzungen (zur Entscheidung, nicht beschlossen):**
1. 🤖 **Grundsatz:** Ob Funktionen überhaupt deaktivierbar sein sollen, ist laut Brief noch offen. → Studierende, Studiengangsleitungen, Datenschutz
2. 🧑 **Widerspruch zu REQ-008:** Verbindliche Mitteilungen der Hochschule sind keine Study-Buddy-Hinweise und laufen weiterhin über die bestehenden offiziellen Kanäle. → Studienadministration, Studiengangsleitungen, Datenschutz (`QUESTION-011`)

**Was wir geändert haben:**
- 🤖 🧪 Die Pflicht liegt beim System („muss … die Möglichkeit bieten“) statt bei den Studierenden. Granularität je Hinweisart, Wiederaktivierung und „ohne Dritte“ ergänzt.
- 🧑 „Sämtliche“ auf Study-Buddy-Hinweise eingegrenzt. Der Widerspruch zu REQ-008 bleibt als offene Entscheidung dokumentiert.
- 🤖 Akzeptanzkriterien übernommen.

**Offene Fragen:**
- `QUESTION-005`: Standard je Hinweisart, Opt-in oder Opt-out?
- `QUESTION-011`: Katalog verbindlicher Mitteilungen
- 🤖 **Neu:** Führt das Deaktivieren eines Hinweises auch dazu, dass die zugehörigen Daten nicht mehr verarbeitet werden? Falls ja, braucht es eine eigene Anforderung. → Datenschutz
- 🤖 **Neu:** Wie grenzen sich Study-Buddy-Hinweise von den bestehenden Benachrichtigungen des Online Campus ab? → IT (`QUESTION-007`)

**Nicht validierte Annahmen:** Studierende wollen Hinweise einzeln steuern statt nur alles oder nichts.

---

## REQ-011 · Anmeldung über den Online Campus

**Finale Fassung:**
> **REQ-011-F (Rahmenbedingung):** Studierende müssen den Study Buddy mit ihrer bestehenden Anmeldung für den Online Campus nutzen können. Der Study Buddy darf kein zusätzliches Benutzerkonto und kein zusätzliches Passwort voraussetzen.
>
> **REQ-011a** (🧪): Der Study Buddy darf keine eigenen Zugangsdaten (Benutzernamen, Passwörter) speichern oder verwalten.
>
> **REQ-011b** (🤖): Der Study Buddy muss sicherstellen, dass eine angemeldete studierende Person ausschließlich auf ihre eigenen Study-Buddy-Informationen zugreifen kann.

**Akzeptanzkriterien** (🧑, ableitbar aus der IT-Vorgabe):
- Eine im Online Campus angemeldete Testperson öffnet den Study Buddy und sieht ihre persönlichen Inhalte, ohne erneut Zugangsdaten einzugeben.
- Eine angemeldete Testperson kann die Study-Buddy-Informationen einer anderen Person nicht aufrufen.

**Quelle:** IT-Vorgabe ([Plot Twist](../stakeholders/D2%20-%20Stakeholder%20Map/04_plot-twist.md): „Eigener Login und eigene Benutzerverwaltung entfallen“), Project Brief Abschnitt 7.

**Was wir geändert haben:**
- 🧑 REWRITE statt RECONSIDER wie in der KI-Version, weil die IT-Vorgabe vorliegt. Die KI kannte sie nicht.
- 🤖 Lösungsneutrale Zugriffsschutz-Anforderung (REQ-011b) ergänzt. Sie beschreibt den eigentlichen Bedarf hinter dem ursprünglichen Entwurf.
- 🧪 REQ-011a ergänzt. Sie folgt direkt aus der IT-Vorgabe und ist damit keine neue Annahme.
- 🧑 Akzeptanzkriterien ergänzt. Das hatten wir in der Human Version versäumt, obwohl die Information vorlag.

**Offen (ändert die Anforderung nicht):**
- Welches Anmeldesystem konkret genutzt wird; ob die Vorgabe für alle Nutzer*innengruppen gilt (Fragen aus dem Plot Twist an die IT).
- 🤖 Welche weiteren Sicherheitsanforderungen gelten? → Informationssicherheit

---

## REQ-015 · Automatisierte Entscheidung über Betreuungsbedarf

**Finale Entscheidung:** ⚖️ **Vorerst nicht übernommen.** Mensch und KI sind hier zum selben Ergebnis gekommen.

**Begründung:**
- Der Brief lässt ausdrücklich offen, ob KI sinnvoll ist, welche Entscheidungen *nicht* automatisiert werden dürfen und wann ein Mensch eingebunden werden muss. REQ-015 beantwortet alle drei Fragen ohne Abstimmung.
- Der Datenschutz hält eine automatisierte Einstufung für besonders kritisch und will den Einsatz von KI gesondert prüfen.
- 🤖 Die Zulässigkeit darf nicht angenommen werden. Ob DSGVO-Regeln zu automatisierten Einzelentscheidungen oder KI-Regulierung greifen, muss der Datenschutz bewerten (`QUESTION-013`).
- 🤖 Weder „Nutzungsdaten“ noch „zusätzliche Betreuung“ noch „benötigen“ ist definiert. Akzeptanzkriterien sind derzeit nicht möglich.
- 🧑 Die Grundannahme ist unbelegt: Nutzungsdaten bilden Betreuungsbedarf ab (`ASSUMPTION-001`, `ASSUMPTION-004`).
- 🧑 REQ-015 bildet mit REQ-004 und REQ-006 eine Kette vom Erkennen zum Handeln ohne menschliche Beteiligung (siehe [`quality-review.md`](quality-review.md), K7).

**Vorschlag zur Abstimmung mit Datenschutz und Hochschulleitung (Rahmenbedingung, nicht beschlossen):**
> **REQ-015-C:** Entscheidungen darüber, ob eine studierende Person zusätzliche Betreuung erhält, dürfen nicht automatisiert getroffen werden. Sie werden von einer zuständigen Person `[Rolle → Studiengangsleitungen, Studierendenservices]` getroffen.

**Nicht übernommen aus der KI-Version:** Die „mögliche Richtung“ („Das System soll … Hinweise auf verfügbare Unterstützungsangebote anzeigen“) führt einen Erkennungsmechanismus wieder ein, bevor überhaupt geklärt ist, ob er gewünscht und zulässig ist. Wir erfassen sie deshalb nur als Frage.

**Offene Fragen:**

| Frage | Stakeholder*in | Herkunft |
|---|---|---|
| Was bedeutet „Unterstützungsbedarf“ fachlich? | Studierende, Lehrende, Studiengangsleitungen | 🤖 |
| Soll der Study Buddy überhaupt Unterstützungsbedarf erkennen? Wenn ja: nach welchen transparenten Kriterien und nur gegenüber der betroffenen Person? | Studierende, Lehrende, Datenschutz | 🤖 🧪 |
| Welche Daten dürfen zu diesem Zweck verarbeitet werden? | Datenschutz | 🤖 (`QUESTION-004`) |
| Welche Entscheidungen dürfen automatisiert werden, wann muss ein Mensch eingebunden werden? | Datenschutz, Hochschulleitung | 🧑 🤖 |
| Wer erhält Einsicht in welche Informationen? Unter welchen Bedingungen darf eine Ansprechperson informiert werden? | Datenschutz, Studierendenvertretung | 🤖 (`QUESTION-006`) |
| Wissen Studierende von der Verarbeitung, können sie widersprechen und die Grundlage eines Hinweises nachvollziehen? | Datenschutz, Studierende | 🤖 |
| Welche Unterstützungsangebote gibt es, und wer betreut sie? | Studierendenservices, Studienadministration | 🧑 (`QUESTION-008`) |
| Ist KI überhaupt erforderlich, oder reichen transparente Regeln? (Frage für die Lösungsphase) | IT, Datenschutz | 🤖 🧪 |

---

## Neue offene Punkte aus Runde 4

Diese Punkte sind durch den KI-Vergleich entstanden und werden in der nächsten Elicitation-Runde aufgenommen:

| Punkt | Zu klären mit | Bezug |
|---|---|---|
| Welchen Zweck soll ein Hinweis bei Inaktivität erfüllen, und wie wird er wahrgenommen? | Studierende, Studiengangsleitungen | REQ-001 |
| Sind Ausnahmezeiträume (z. B. lehrveranstaltungsfreie Zeit) im Online Campus hinterlegt und nutzbar? | IT | REQ-001, `QUESTION-002` |
| In welchem Nutzungskontext (mobil, Desktop, assistive Technologien) wird der Study Buddy verwendet? | Studierende, IT | REQ-002, `QUESTION-014` |
| Ist die Deaktivierbarkeit von Funktionen grundsätzlich gewünscht? | Studierende, Studiengangsleitungen, Datenschutz | REQ-007 |
| Bedeutet das Deaktivieren eines Hinweises auch das Ende der zugehörigen Datenverarbeitung? | Datenschutz | REQ-007 |
| Wie grenzen sich Study-Buddy-Hinweise von bestehenden Online-Campus-Benachrichtigungen ab? | IT | REQ-007, `QUESTION-007` |
| Welche Sicherheitsanforderungen gelten für den Zugriff auf persönliche Study-Buddy-Daten? | Informationssicherheit | REQ-011 |
