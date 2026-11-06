# Repaired Requirements – Überarbeitung (Teil 3: Repair the Requirement)

> Wir haben **sieben** der 15 Entwürfe bearbeitet. Ausgewählt haben wir sie so, dass alle drei Strategien und möglichst unterschiedliche Qualitätsprobleme vorkommen. Die Mängelanalyse dazu steht in [`quality-review.md`](quality-review.md).
>
> **Grundregel:** Wir erfinden keine Werte, Interviewergebnisse, technischen Möglichkeiten oder Stakeholder*innen-Entscheidungen. Wo etwas fehlt, steht `[OFFEN → QUESTION-xxx]`. Wo eine Neuformulierung ohne neue Annahmen nicht seriös möglich ist, sagen wir das ausdrücklich.

## Übersicht

| REQ | Hauptmangel | Strategie | Ergebnis |
|---|---|---|---|
| REQ-001 | Unbelegter Parameter, unbelegte Annahme | 🔎 INVESTIGATE | Noch keine endgültige Formulierung; Fragen an 4 Stakeholder*innengruppen |
| REQ-002 | Nicht eindeutig, nicht prüfbar, nicht atomar | ✏️ REWRITE + 🔎 INVESTIGATE | Struktur und Messverfahren festgelegt, Zielwerte offen |
| REQ-003 | Nicht atomar | ✏️ REWRITE (Teile 1–3) + ⚖️ RECONSIDER (Teil 4) | Aufgeteilt in 4 Anforderungen, eine davon nicht übernommen |
| REQ-007 | Widerspruch zu REQ-008 | 🔎 INVESTIGATE | Konflikt dokumentiert, Lösungsoption zur Entscheidung vorgelegt |
| REQ-009 | Nicht abgestimmt, Zweck fehlt, datenschutzrechtlich fraglich | ⚖️ RECONSIDER | Nicht übernommen; Bedürfnis dahinter wird geklärt |
| REQ-011 | Verstoß gegen bekannte Rahmenbedingung | ✏️ REWRITE | Neu formuliert auf Basis der IT-Vorgabe |
| REQ-015 | Automatisierte Entscheidung über Personen | ⚖️ RECONSIDER | Nicht übernommen; Gegenanforderung als Vorschlag |

---

## REQ-001 · The Seven-Day Rule

**Original:**
„Das System muss Studierende automatisch benachrichtigen, wenn sie sieben Tage lang nicht im Online Campus aktiv waren.“

**Qualitätsmangel:**
„Sieben Tage“ hat keine Quelle. „Aktiv“ ist nicht definiert. Die Annahme, dass fehlende Aktivität im Online Campus Unterstützungsbedarf bedeutet, ist nicht belegt (`ASSUMPTION-001`), und die Studierendenvertretung widerspricht ihr. „Automatisch“ lässt offen, ob Studierende zustimmen müssen.

**Strategie:** 🔎 INVESTIGATE

**Begründung:** Wir könnten den Satz sprachlich verbessern, aber jeder konkrete Wert (Zeitraum, Definition von Aktivität, Kanal, Opt-in oder Opt-out) wäre von uns erfunden. Schon die Grundannahme, dass Studierende einen solchen Hinweis wollen, ist ungeprüft.

**Offene Fragen:**

| Frage | Stakeholder*in |
|---|---|
| Was zählt als „Aktivität“: Login, Seitenaufruf, bearbeitete Lernaktivität, Download? (`QUESTION-001`) | Studierende, Lehrende, IT |
| Welche Aktivitätsereignisse protokolliert der Online Campus, und kann man „eingeloggt“ von „gelernt“ unterscheiden? (`QUESTION-002`) | IT / Online Campus |
| Gibt es in Lehrveranstaltungen Phasen, in denen planmäßig keine Aktivität erwartet wird? (`QUESTION-009`) | Lehrende, Studiengangsleitungen |
| Wünschen Studierende überhaupt einen Hinweis nach längerer Inaktivität? Wie würde er nach einer bewussten Pause wirken? (`ASSUMPTION-002`) | Studierende, Studierendenvertretung |
| Darf Aktivität für individuelle Hinweise ausgewertet werden? Muss die Funktion aktiv eingeschaltet werden (Opt-in)? (`QUESTION-004`, `QUESTION-005`) | Datenschutz |

**Ergebnis:**
Noch keine endgültige Neuformulierung möglich. Der Entwurf bleibt offen, bis die Fragen beantwortet sind. Als **Struktur** für die spätere Formulierung schlagen wir vor (ohne Werte):

> Wenn eine studierende Person `[Hinweisart aktiviert hat → QUESTION-005]` und in einer Lehrveranstaltung über `[Zeitraum → QUESTION-001, QUESTION-009]` keine `[Aktivität im Sinne von QUESTION-001]` ausgeführt hat, muss der Study Buddy ihr `[Art und Kanal des Hinweises → QUESTION-007]` anzeigen.

**Nicht validierte Annahmen:** `ASSUMPTION-001`, `ASSUMPTION-002`, `ASSUMPTION-003`

---

## REQ-002 · Fast and Friendly

**Original:**
„Der Study Buddy muss schnell, intuitiv und besonders benutzerfreundlich sein.“

**Qualitätsmangel:**
Subjektive Adjektive ohne Maßstab, deshalb nicht prüfbar. Der Satz enthält mindestens zwei verschiedene Qualitätsanforderungen.

**Strategie:** ✏️ REWRITE (Struktur, Messverfahren) + 🔎 INVESTIGATE (Zielwerte)

**Begründung:** Die Aufteilung und die Art der Messung sind fachliche RE-Arbeit, die wir ohne neue Annahmen leisten können. Die **Zielwerte** (Sekunden, Prozent, Punkte) haben wir nicht. Wenn wir sie einsetzen, machen wir denselben Fehler wie bei „sieben Tage“ in REQ-001.

**Neuformulierung (aufgeteilt):**

> **REQ-002a – Antwortzeit**
> Der Study Buddy muss die Ansicht `[zentrale Ansicht, z. B. Übersicht der anstehenden Aufgaben → Interviews Studierende]` in mindestens `[X → IT]` % der Aufrufe innerhalb von `[Y → IT]` Sekunden vollständig anzeigen, gemessen unter `[Lastannahme → IT]`.

> **REQ-002b – Gebrauchstauglichkeit**
> Testpersonen aus der Zielgruppe, darunter Studienanfänger*innen ohne Einschulung, müssen in einem moderierten Usability-Test die Aufgaben `[zentrale Aufgaben → Interviews Studierende]` ohne Hilfe lösen können. Abnahmekriterium: `[Anteil erfolgreicher Testpersonen, Zeitlimit und ggf. Fragebogenwert → Studierende, Projektleitung]`.

**Offene Fragen:**

| Frage | Stakeholder*in |
|---|---|
| Welche Aufgaben sind für Studierende im Alltag zentral? | Studierende |
| Welche Antwortzeiten sind im Online Campus heute üblich und technisch erreichbar? Welche Last ist realistisch? | IT / Online Campus |
| Welche Nutzer*innengruppen müssen im Usability-Test vertreten sein? | Studierende, Studierende mit Barrierefreiheitsbedarf, Studienadministration |

**Nicht validierte Annahmen:** Dass sich eine einzelne „zentrale Ansicht“ benennen lässt, ist noch nicht bestätigt.

---

## REQ-003 · The All-in-One Feature

**Original:**
„Das System muss bevorstehende Abgaben anzeigen, personalisierte Erinnerungen versenden, Lernfortschritte analysieren und Lehrende über Schwierigkeiten informieren.“

**Qualitätsmangel:**
Vier Anforderungen mit sehr unterschiedlichem Risiko in einem Satz. Teil 4 ist eine Weitergabe personenbezogener Einschätzungen an Dritte.

**Strategie:** ✏️ REWRITE (aufteilen) für Teile 1–3 · ⚖️ RECONSIDER für Teil 4

**Neuformulierung:**

> **REQ-003a – Anstehende Abgaben** (✏️ REWRITE)
> Der Study Buddy muss einer studierenden Person die Abgaben ihrer belegten Lehrveranstaltungen mit Lehrveranstaltung, Titel und Fälligkeitszeitpunkt chronologisch anzeigen.
> *Offen:* Zeitraum der Vorschau, führendes Quellsystem für Termine (`QUESTION-015`).

> **REQ-003b – Erinnerungen** (🔎 INVESTIGATE)
> Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, Erinnerungen an `[Abgaben / Aktivitäten → Studierende]` zu erhalten.
> *Offen:* Was „personalisiert“ bedeutet, ob Erinnerungen aktiv eingeschaltet werden müssen, über welchen Kanal (`QUESTION-005`, `QUESTION-007`, `ASSUMPTION-002`).

> **REQ-003c – Lernfortschritt** (🔎 INVESTIGATE)
> Noch keine Neuformulierung möglich. „Lernfortschritte analysieren“ setzt eine Definition von Lernfortschritt voraus, die es nicht gibt (`QUESTION-003`, `ASSUMPTION-004`). Zu klären mit Studierenden, Lehrenden und IT.

> **REQ-003d – Lehrende über Schwierigkeiten informieren** (⚖️ RECONSIDER)
> Wird nicht übernommen. Begründung: Wer „Schwierigkeiten“ feststellt, ist unklar. Eine Weitergabe ohne Zustimmung ist datenschutzrechtlich offen (`QUESTION-006`). Die Lehrendenvertretung hat selbst Bedenken gegen automatische Benachrichtigungen geäußert. Zu klären mit Lehrendenvertretung, Datenschutz und Studierendenvertretung, ob und in welcher Form Lehrende eingebunden werden sollen.

---

## REQ-007 · The Notification Paradox (mit REQ-008)

**Original:**
„Studierende müssen sämtliche Benachrichtigungen jederzeit deaktivieren können.“
*In Konflikt mit REQ-008:* „Das System muss alle Studierenden unabhängig von ihren Einstellungen über kritische Studienereignisse benachrichtigen.“

**Qualitätsmangel:**
REQ-007 und REQ-008 schließen sich logisch aus. „Benachrichtigung“ und „kritisches Studienereignis“ sind nicht definiert.

**Strategie:** 🔎 INVESTIGATE

**Begründung:** Den Konflikt aufzulösen ist eine **Stakeholder*innen-Entscheidung**, keine Formulierungsfrage. Ob es Mitteilungen gibt, die Studierende nicht abschalten dürfen, entscheiden Studienadministration, Studiengangsleitung und Datenschutz, nicht das RE-Team. Wir können eine Lösungsoption zur Entscheidung vorlegen, aber nicht festlegen.

**Offene Fragen:**

| Frage | Stakeholder*in |
|---|---|
| Welche Studienereignisse sind verbindlich mitteilungspflichtig, und über welchen Kanal werden sie heute kommuniziert? (`QUESTION-011`) | Studienadministration, Studiengangsleitungen |
| Sollen Studierende Hinweise gesammelt oder einzeln je Art deaktivieren können? (`QUESTION-005`) | Studierende, Studierendenvertretung |
| Ist der Study Buddy überhaupt der richtige Kanal für verbindliche Mitteilungen? | Studienadministration, Datenschutz |

**Lösungsoption zur Entscheidung (nicht beschlossen):**
Trennung in zwei Kategorien:
1. **Unterstützende Hinweise des Study Buddys:** von Studierenden je Art einzeln deaktivierbar.
2. **Verbindliche Mitteilungen der Hochschule:** keine Funktion des Study Buddys, sondern weiterhin über die bestehenden offiziellen Kanäle.

Unter dieser Option ließe sich REQ-007 so formulieren:
> Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, jede Art von Study-Buddy-Hinweis einzeln zu deaktivieren und wieder zu aktivieren.

**Ergebnis:** Konflikt dokumentiert. Die Formulierung oben gilt nur, wenn die Stakeholder*innen der Option zustimmen.

---

## REQ-009 · The Secret Dashboard

**Original:**
„Die Studiengangsleitung muss jederzeit auf sämtliche individuellen Lernaktivitäten aller Studierenden zugreifen können.“

**Qualitätsmangel:**
Uneingeschränkter Vollzugriff ohne genannten Zweck. Widerspricht dem Projektziel „keine Überwachung oder Kontrolle“, der Studierendenvertretung und den Grundsätzen der Datenminimierung und Zweckbindung.

**Strategie:** ⚖️ RECONSIDER

**Begründung:** Die Anforderung sollte nicht übernommen werden, weil
- kein Zweck angegeben ist; das bekannte Bedürfnis der Studiengangsleitung („früh erkennen, um Unterstützung anzubieten“) erfordert nicht zwingend Zugriff auf alle Einzeldaten,
- die Zulässigkeit offen ist (`QUESTION-004`, `QUESTION-006`),
- die Gefahr besteht, dass Studierende den Study Buddy als Kontrollinstrument wahrnehmen und ablehnen (`ASSUMPTION-006`),
- ein Rollenkonflikt zwischen Betreuung und Bewertung besteht (`ASSUMPTION-005`).

**Was stattdessen geklärt werden muss:**

| Frage | Stakeholder*in |
|---|---|
| Welche Information braucht die Studiengangsleitung, um Unterstützung anbieten zu können, und in welcher Situation? (`QUESTION-012`) | Studiengangsleitungen |
| Würden aggregierte Informationen ohne Personenbezug ausreichen? | Studiengangsleitungen, Datenschutz |
| Unter welchen Bedingungen wäre ein personenbezogener Zugriff zulässig (Zustimmung, Anlass, Protokollierung)? | Datenschutz, Studierendenvertretung |

**Ergebnis:** Vorerst nicht übernommen. Das Bedürfnis dahinter bleibt als offene Frage bestehen.

---

## REQ-011 · The New Login

**Original:**
„Studierende müssen für den Study Buddy ein separates Benutzerkonto mit eigenem Passwort erstellen.“

**Qualitätsmangel:**
Widerspricht dem Brief (Abschnitt 7: Integration in den Online Campus, keine zusätzliche eigenständige Anwendung) und der IT-Vorgabe aus dem Plot Twist (bestehende Anmeldung verwenden). Schreibt ohne Begründung eine technische Lösung vor.

**Strategie:** ✏️ REWRITE

**Begründung:** Hier liegt die notwendige Information vor: Die IT hat vorgegeben, dass die bestehende Anmeldung zu verwenden ist (siehe [Plot Twist](../stakeholders/D2%20-%20Stakeholder%20Map/04_plot-twist.md)). Wir können also neu formulieren, ohne etwas zu erfinden. Offen ist nur, welches System das konkret ist. Das ändert die Anforderung aber nicht.

**Neuformulierung (Rahmenbedingung):**
> Studierende müssen den Study Buddy mit ihrer bestehenden Anmeldung für den Online Campus nutzen können. Der Study Buddy darf kein zusätzliches Benutzerkonto und kein zusätzliches Passwort voraussetzen.

**Quelle:** IT-Vorgabe (Plot Twist), Project Brief Abschnitt 7
**Offen (ändert die Anforderung nicht):** Welches Anmeldesystem konkret genutzt wird; ob die Vorgabe auch für Lehrende und Administration gilt (Fragen aus dem Plot Twist, an die IT).

---

## REQ-015 · The AI Knows Best

**Original:**
„Ein KI-Modell muss anhand der Nutzungsdaten automatisch entscheiden, welche Studierenden zusätzliche Betreuung benötigen.“

**Qualitätsmangel:**
Automatisierte Entscheidung über Personen ohne menschliche Beteiligung. Technologie (KI-Modell) vorgegeben. „Nutzungsdaten“ und „zusätzliche Betreuung“ undefiniert.

**Strategie:** ⚖️ RECONSIDER

**Begründung:** Die Anforderung sollte nicht übernommen werden, weil
- der Brief genau diese Frage (welche Entscheidungen *nicht* automatisiert werden dürfen) ausdrücklich offenlässt und sie hier ohne Abstimmung beantwortet wird,
- der Datenschutz eine automatisierte Einstufung als besonders kritisch bezeichnet und den Einsatz von KI gesondert prüfen will,
- eine automatisierte Einzelentscheidung rechtlich problematisch sein kann (Art. 22 DSGVO; EU AI Act → `QUESTION-013`),
- die Annahme, dass Nutzungsdaten Betreuungsbedarf abbilden, nicht belegt ist (`ASSUMPTION-001`, `ASSUMPTION-004`),
- unklar ist, wer die „zusätzliche Betreuung“ überhaupt leisten würde (`QUESTION-008`).

**Vorschlag zur Abstimmung (nicht beschlossen):**
Das dahinterliegende Bedürfnis (Studierende sollen Unterstützung bekommen, wenn sie sie brauchen) lässt sich auch ohne automatisierte Einstufung adressieren, etwa indem Studierende selbst Unterstützung anfordern können. Ob das ausreicht, klären wir mit Studierenden, Studiengangsleitungen und Studierendenservices.

| Frage | Stakeholder*in |
|---|---|
| Welche Entscheidungen dürfen im Study Buddy überhaupt automatisiert getroffen werden? | Datenschutz, Hochschulleitung |
| Welche Unterstützungsangebote gibt es, und wer betreut sie? (`QUESTION-008`) | Studierendenservices, Studienadministration |
| Für welche Aufgaben wäre KI aus Sicht der Studierenden hilfreich, und für welche nicht? | Studierende, Studierendenvertretung |

**Ergebnis:** Vorerst nicht übernommen.
