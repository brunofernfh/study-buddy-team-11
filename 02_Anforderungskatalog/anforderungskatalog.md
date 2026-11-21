# 02_Anforderungskatalog – Structured Requirements Catalogue (D4)

Art: Funktional · Qualität · Randbedingung. Ebene: Business · User · System. Status: Entwurf · Abgestimmt · Verworfen. Priorität folgt in Mission 06.

Jede User-Anforderung verweist auf eine Business-Anforderung, jede System-Anforderung auf eine User- oder Business-Anforderung.

- [x] Anforderungen gesamt: 41 / 25
- [x] Business: 7 / 5
- [x] User: 10 / 8
- [x] System: 24 / 12
- [x] Qualität mit Zahl: 7 / 5
- [x] Randbedingungen mit Quelle: 10 / 5
- [x] Systemzeilen mit gültigem Bezug: 24 / 24
- [x] Eindeutige IDs: ok
- [x] Ordner angelegt: 7 / 7

| ID | Titel | Text | Art | Ebene | Quelle | Bezug | Status |
|---|---|---|---|---|---|---|---|
| REQ-B01 | Selbstorganisiertes Lernen unterstützen | Die FernFH will Studierende besser dabei unterstützen, ihr Studium selbstorganisiert und kontinuierlich zu bearbeiten. | Funktional | Business | Hochschulleitung, Project Brief Abschnitt 1 und 3 |  | Entwurf |
| REQ-B02 | Unterstützungsbedarf früh erkennen | Die FernFH will möglichen Unterstützungsbedarf früher erkennen, damit Hilfe angeboten werden kann, bevor Fristen versäumt werden. | Funktional | Business | Hochschulleitung, Brief Abschnitt 3; Studiengangsleitungen (Stakeholder-Register D2) |  | Entwurf |
| REQ-B03 | Orientierung über den Studienfortschritt | Die FernFH will, dass Studierende jederzeit wissen, wo sie in ihren Lehrveranstaltungen stehen und welche Fristen anstehen. | Funktional | Business | Hochschulleitung, Brief Abschnitt 3 |  | Entwurf |
| REQ-B04 | Vorhandene Daten zweckgebunden nutzen | Die FernFH will die im Online Campus bereits vorhandenen Learning-Analytics-Daten nutzen, ausschließlich zur Unterstützung der Studierenden. | Funktional | Business | Hochschulleitung, Brief Abschnitt 3 und 6 |  | Entwurf |
| REQ-B05 | Unterstützung ohne Überwachung | In der Pilotphase bewerten mindestens 70 % der befragten Nutzer:innen den Study Buddy als hilfreich, und höchstens 10 % geben an, sich durch ihn kontrolliert zu fühlen. | Qualität | Business | Hochschulleitung, Brief Abschnitt 3 und 8; Studierendenvertretung. Zielwerte: Vorschlag RE-Team, abzustimmen |  | Entwurf |
| REQ-B06 | Begrenztes Budget | Für eine Umsetzung stehen nur begrenzte Ressourcen zur Verfügung. Funktionen werden priorisiert, eine erste Version enthält nur das Notwendige. | Randbedingung | Business | Hochschulleitung, Brief Abschnitt 11 |  | Entwurf |
| REQ-B07 | Einsatz von KI prüfen | Die FernFH will prüfen, ob und wofür KI im Study Buddy sinnvoll eingesetzt werden kann und welche Entscheidungen ausdrücklich nicht automatisiert werden dürfen. | Funktional | Business | Hochschulleitung, Brief Abschnitt 3 und 4 |  | Entwurf |
| REQ-U01 | Eigenen Fortschritt sehen | Als Studentin will ich sehen, welche Lernaktivitäten ich je Lehrveranstaltung schon bearbeitet habe und welche noch offen sind, damit ich weiß, wo ich stehe. | Funktional | User | Studierende, Brief Abschnitt 4 „Mein Lernfortschritt“; Interviewleitfaden D2 | REQ-B03 | Entwurf |
| REQ-U02 | Keine Frist verpassen | Als Student will ich rechtzeitig an Abgabefristen erinnert werden, damit ich keine Einsendeaufgabe versäume. | Funktional | User | Studierende, Brief Abschnitt 4 „Erinnerungen & Hinweise“ | REQ-B01 | Entwurf |
| REQ-U03 | Wissen, was als Nächstes kommt | Als Studentin will ich auf einen Blick sehen, was diese Woche ansteht, damit ich meine knappe Lernzeit neben dem Beruf planen kann. | Funktional | User | Studierende, Brief Abschnitt 4 „Was soll ich als Nächstes tun?“ | REQ-B01 | Entwurf |
| REQ-U04 | Hilfe finden, wenn es hakt | Als Student will ich bei Schwierigkeiten schnell passende Unterstützungsangebote oder eine Ansprechperson finden, ohne lange suchen zu müssen. | Funktional | User | Studierende, Brief Abschnitt 4 „Unterstützung bei Schwierigkeiten“ | REQ-B02 | Entwurf |
| REQ-U05 | Selbst bestimmen | Als Studentin will ich selbst entscheiden, welche Hinweise ich vom Study Buddy bekomme, damit er mich unterstützt und nicht bevormundet. | Funktional | User | Studierendenvertretung (Stakeholder-Register D2); Brief Abschnitt 8 | REQ-B05 | Entwurf |
| REQ-U06 | Nachvollziehen, was mit meinen Daten passiert | Als Student will ich nachvollziehen können, welche meiner Daten der Study Buddy verwendet, wozu und wer sie sehen kann. | Funktional | User | Studierende, Datenschutzbeauftragte; Brief Abschnitt 8 | REQ-B04 | Entwurf |
| REQ-U07 | Rückstände in Lehrveranstaltungen erkennen | Als Studiengangsleitung will ich erkennen, in welchen Lehrveranstaltungen viele Studierende mit Pflichtaktivitäten im Rückstand sind, damit ich Angebote anpassen kann, ohne einzelne Personen zu beobachten. | Funktional | User | Studiengangsleitungen (Stakeholder-Register D2); Ersatz für REQ-009 aus D3 | REQ-B02 | Entwurf |
| REQ-U08 | Ohne Einarbeitung nutzen | Als Studienanfängerin ohne technische Vorkenntnisse will ich den Study Buddy ohne Anleitung bedienen können. | Funktional | User | Studierende, Brief Abschnitt 5 | REQ-B03 | Entwurf |
| REQ-U09 | Barrierefrei nutzen | Als Student mit Sehbeeinträchtigung will ich den Study Buddy mit Screenreader und Tastatur vollständig nutzen können. | Funktional | User | Studierende mit Barrierefreiheitsbedarf, Brief Abschnitt 9 | REQ-B01 | Entwurf |
| REQ-U10 | Auf jedem Gerät nutzen | Als berufstätige Studentin will ich den Study Buddy am Laptop im Browser und unterwegs am Smartphone nutzen können. | Funktional | User | Studierende, Brief Abschnitt 9 (Nutzungssituationen); Plot Twist D4 | REQ-B03 | Entwurf |
| REQ-S01 | Übersicht der Lernaktivitäten | Der Study Buddy muss einer studierenden Person je belegter Lehrveranstaltung anzeigen, welche Lernaktivitäten bearbeitet und welche offen sind, so wie sie im Online Campus erfasst sind. | Funktional | System | Brief Abschnitt 4; D3 SB-FR-05 | REQ-U01 | Entwurf |
| REQ-S02 | Liste offener Abgaben | Der Study Buddy muss einer studierenden Person alle offenen Abgaben ihrer belegten Lehrveranstaltungen chronologisch nach Fälligkeit anzeigen, jeweils mit Lehrveranstaltung, Titel und Fälligkeitszeitpunkt. | Funktional | System | Brief Abschnitt 4; D3 SB-FR-02 | REQ-U02 | Entwurf |
| REQ-S03 | Erinnerung je Abgabe | Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, für einzelne Abgaben eine Erinnerung zu aktivieren und die Vorlaufzeit selbst festzulegen. | Funktional | System | Brief Abschnitt 4; D3 SB-FR-03 | REQ-U02 | Entwurf |
| REQ-S04 | Wochenübersicht | Der Study Buddy muss einer studierenden Person die Lernaktivitäten und Abgaben anzeigen, die in der laufenden Kalenderwoche fällig sind. | Funktional | System | Brief Abschnitt 4 (Beispiel „Diese Woche stehen noch zwei Lernaktivitäten aus“) | REQ-U03 | Entwurf |
| REQ-S05 | Hinweise einzeln steuern | Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, jede Art von Study-Buddy-Hinweis einzeln zu aktivieren und zu deaktivieren. Änderungen wirken ab dem nächsten Hinweis. | Funktional | System | Studierendenvertretung; D3 SB-FR-10 (Auflösung REQ-007/008) | REQ-U05 | Entwurf |
| REQ-S06 | Hinweis auf versäumte Pflichtaktivität | Wenn eine als verpflichtend gekennzeichnete Lernaktivität nach Fristablauf nicht bearbeitet ist, muss der Study Buddy nur der betroffenen Person einen Hinweis mit den passenden Unterstützungsangeboten anzeigen. Weitere Maßnahmen löst er nicht selbst aus. | Funktional | System | Brief Abschnitt 4; D3 SB-FR-08 | REQ-U04 | Entwurf |
| REQ-S07 | Unterstützung selbst anfordern | Der Study Buddy muss einer studierenden Person die Möglichkeit bieten, selbst Unterstützung anzufordern oder Kontakt zu einer zuständigen Ansprechperson aufzunehmen. | Funktional | System | Brief Abschnitt 4; D3 SB-FR-09 | REQ-U04 | Entwurf |
| REQ-S08 | Datenübersicht für Studierende | Der Study Buddy muss jeder studierenden Person anzeigen, welche ihrer Daten er verarbeitet, zu welchem Zweck und welche Rollen darauf Zugriff haben. | Funktional | System | Datenschutzbeauftragte; Brief Abschnitt 8; D3 SB-NFR-05 | REQ-U06 | Entwurf |
| REQ-S09 | Aggregierte Kennzahlen für die StgL | Der Study Buddy muss der Studiengangsleitung je Lehrveranstaltung den Anteil der Studierenden mit offenen Pflichtaktivitäten anzeigen, nur für Gruppen ab 10 Personen und ohne Rückschluss auf Einzelpersonen. | Funktional | System | Studiengangsleitungen; D3 SB-FR-11. Mindestgruppe: Vorschlag RE-Team, mit Datenschutz abzustimmen | REQ-U07 | Entwurf |
| REQ-S10 | Keine automatisierte Betreuungsentscheidung | Ob eine studierende Person zusätzliche Betreuung erhält, entscheidet eine zuständige Person. Der Study Buddy trifft diese Entscheidung nicht automatisiert, weder per KI noch per Regel. | Randbedingung | System | Art. 22 DSGVO; Datenschutzbeauftragte der FernFH; D3 SB-C-03 | REQ-U04 | Entwurf |
| REQ-S11 | Keine Prognose zum Studienerfolg | Der Study Buddy darf keine Prognose zum Studienerfolg einzelner Studierender berechnen oder anzeigen. | Randbedingung | System | Datenschutzbeauftragte der FernFH (Profiling, Art. 22 DSGVO); D3 REQ-004 verworfen | REQ-B05 | Entwurf |
| REQ-S12 | Anmeldung über den Online Campus | Studierende nutzen den Study Buddy mit ihrer bestehenden Online-Campus-Anmeldung. Ein eigenes Konto oder Passwort ist nicht vorgesehen. | Randbedingung | System | IT, Plot Twist Mission 02; D3 REQ-011-F | REQ-U08 | Entwurf |
| REQ-S13 | Integration in den Online Campus | Der Study Buddy wird in den bestehenden Online Campus integriert und nutzt dessen Daten und Schnittstellen. Eine eigenständige Anwendung ist zu vermeiden. | Randbedingung | System | IT, Brief Abschnitt 7 | REQ-B04 | Entwurf |
| REQ-S14 | Auch als Web-App | Die Campus-App muss auch als Web-App funktionieren. Alle Study-Buddy-Funktionen müssen dort verfügbar sein. Umfang und Plattformen sind noch offen (Rückfragen Plot Twist). | Randbedingung | System | IT, Plot Twist D4 | REQ-U10 | Entwurf |
| REQ-S15 | Zweckbindung und Datenminimierung | Der Study Buddy verarbeitet nur die Daten, die für die jeweilige Funktion nötig sind, und nur zur Unterstützung der Studierenden, nicht zur Leistungsbeurteilung. | Randbedingung | System | DSGVO Art. 5 Abs. 1 lit. b und c; Datenschutzbeauftragte der FernFH | REQ-U06 | Entwurf |
| REQ-S16 | Verbindliche Mitteilungen über offizielle Kanäle | Verbindliche Mitteilungen der Hochschule sind keine Study-Buddy-Hinweise. Sie laufen über die bestehenden Kanäle der Studienadministration und lassen sich nicht über REQ-S05 abschalten. | Randbedingung | System | Studienadministration; D3 SB-C-02 | REQ-U05 | Entwurf |
| REQ-S17 | KI-Funktionen nur nach Prüfung | KI-gestützte Funktionen dürfen erst eingesetzt werden, wenn Datenschutz und Recht sie nach EU AI Act und DSGVO geprüft und freigegeben haben. | Randbedingung | System | EU AI Act (Verordnung (EU) 2024/1689); Datenschutzbeauftragte der FernFH | REQ-B07 | Entwurf |
| REQ-S18 | Speicherdauer festlegen | Für jede vom Study Buddy gespeicherte Datenart ist eine Speicherdauer festgelegt. Danach werden die Daten gelöscht. | Randbedingung | System | DSGVO Art. 5 Abs. 1 lit. e (Speicherbegrenzung); Datenschutzbeauftragte der FernFH | REQ-U06 | Entwurf |
| REQ-S19 | Ladezeit der Übersicht | Die Übersicht (REQ-S01) wird in 95 % der Aufrufe innerhalb von 2 Sekunden vollständig angezeigt, bei bis zu 500 gleichzeitig angemeldeten Nutzer:innen, über WLAN und 4G. | Qualität | System | Product Owner (Teil C „schnell antworten“). Zielwerte: Vorschlag RE-Team, mit IT abzustimmen | REQ-U01 | Entwurf |
| REQ-S20 | Ohne Hilfe bedienbar | Mindestens 80 % der Testpersonen (mindestens 8 Studierende, davon 3 im ersten Semester) finden bei der ersten Nutzung die nächste Abgabefrist ohne Hilfe in höchstens 60 Sekunden. | Qualität | System | Product Owner (Teil C „benutzerfreundlich“); Brief Abschnitt 5. Zielwerte: Vorschlag RE-Team | REQ-U08 | Entwurf |
| REQ-S21 | Barrierefreiheit | Alle Oberflächen des Study Buddy erfüllen WCAG 2.1 Stufe AA. Ein Accessibility-Audit vor dem Pilotbetrieb ergibt 0 offene Befunde der Stufen A und AA. | Qualität | System | Brief Abschnitt 9; Maßstab WCAG 2.1 (W3C). Gesetzliche Pflicht mit Datenschutz/Recht zu klären | REQ-U09 | Entwurf |
| REQ-S22 | Darstellung auf kleinen Bildschirmen | Alle Funktionen sind ab einer Bildschirmbreite von 320 CSS-Pixeln ohne horizontales Scrollen nutzbar, in der Web-App und in der Campus-App. | Qualität | System | IT, Plot Twist D4; WCAG 2.1 Kriterium 1.4.10 | REQ-U10 | Entwurf |
| REQ-S23 | Aktualität der Fristen | Neue oder geänderte Abgabefristen werden spätestens 15 Minuten nach der Änderung im Online Campus im Study Buddy angezeigt, zusammen mit dem Zeitpunkt der letzten Aktualisierung. | Qualität | System | D3 SB-NFR-03 (REQ-013). Zielwert: Vorschlag RE-Team, mit IT abzustimmen | REQ-U02 | Entwurf |
| REQ-S24 | Zuverlässige Erinnerungen | Mindestens 99 % der aktivierten Erinnerungen werden höchstens 5 Minuten nach dem eingestellten Zeitpunkt angezeigt, gemessen über einen Monat im Pilotbetrieb. | Qualität | System | Studierende (REQ-U02). Zielwerte: Vorschlag RE-Team, mit IT abzustimmen | REQ-U02 | Entwurf |

## Rückverfolgbarkeit (Business → User → System)

- **REQ-B01** Selbstorganisiertes Lernen unterstützen
  - REQ-U02 Keine Frist verpassen → REQ-S02, REQ-S03, REQ-S23, REQ-S24
  - REQ-U03 Wissen, was als Nächstes kommt → REQ-S04
  - REQ-U09 Barrierefrei nutzen → REQ-S21
- **REQ-B02** Unterstützungsbedarf früh erkennen
  - REQ-U04 Hilfe finden, wenn es hakt → REQ-S06, REQ-S07, REQ-S10
  - REQ-U07 Rückstände in Lehrveranstaltungen erkennen → REQ-S09
- **REQ-B03** Orientierung über den Studienfortschritt
  - REQ-U01 Eigenen Fortschritt sehen → REQ-S01, REQ-S19
  - REQ-U08 Ohne Einarbeitung nutzen → REQ-S12, REQ-S20
  - REQ-U10 Auf jedem Gerät nutzen → REQ-S14, REQ-S22
- **REQ-B04** Vorhandene Daten zweckgebunden nutzen
  - REQ-U06 Nachvollziehen, was mit meinen Daten passiert → REQ-S08, REQ-S15, REQ-S18
  - REQ-S13 Integration in den Online Campus
- **REQ-B05** Unterstützung ohne Überwachung
  - REQ-U05 Selbst bestimmen → REQ-S05, REQ-S16
  - REQ-S11 Keine Prognose zum Studienerfolg
- **REQ-B06** Begrenztes Budget
- **REQ-B07** Einsatz von KI prüfen
  - REQ-S17 KI-Funktionen nur nach Prüfung
