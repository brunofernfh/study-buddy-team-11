# Quality Review – Qualitätsanalyse der 15 Anforderungsentwürfe (Teil 2: Find the Defect)

> Die IDs REQ-001 bis REQ-015 beziehen sich auf die Entwürfe aus **Aufgabe 03 (D3)**. Sie sind **nicht** identisch mit REQ-001 bis REQ-003 aus der AI Challenge in [`/elicitation/07-ai-challenge.md`](../elicitation/07-ai-challenge.md).

## Prüfschema

Wir prüfen jede Anforderung entlang der drei Qualitätsaspekte (Prüfaspekte nach IREB / Pohl & Rupp) und der zugehörigen Kriterien:

| Qualitätsaspekt | Qualitätskriterien |
|---|---|
| **Inhalt** | Vollständigkeit · Korrektheit / Adäquatheit (beschreibt sie das tatsächliche Bedürfnis?) · Konsistenz · Notwendigkeit · Machbarkeit · Verfolgbarkeit (Quelle, Begründung) · keine vorzeitigen Entwurfsentscheidungen · Überprüfbarkeit |
| **Dokumentation** | Eindeutigkeit · Verständlichkeit · Atomarität (eine Anforderung pro Satz) · Konformität zu Dokumentationsregeln (z. B. Satzschablone, Akteur, Bedingung, Rechtsverbindlichkeit) |
| **Abgestimmtheit** | Abgestimmt mit allen relevanten Stakeholder*innen · Konflikte erkannt und aufgelöst · Vereinbarkeit mit Rahmenbedingungen (Brief, Plot Twist, Recht) |

Für jede Anforderung kennzeichnen wir den **vorrangigen** Qualitätsaspekt und dokumentieren weitere relevante Mängel darunter. Konflikte zwischen den Anforderungen stehen zusätzlich gesammelt am Ende.

Verwendete Quellen: Project Brief, [Stakeholder-Register](../stakeholders/D2%20-%20Stakeholder%20Map/01-stakeholder-register.md), [Plot Twist](../stakeholders/D2%20-%20Stakeholder%20Map/04_plot-twist.md), [Annahmen](../elicitation/05-annahmen.md), [offene Fragen](../elicitation/06-offene-fragen.md).

## Übersicht

| REQ | Titel | Vorrangiger Aspekt | Hauptkriterium | Schwere |
|---|---|---|---|---|
| REQ-001 | The Seven-Day Rule | Inhalt | Korrektheit (unbelegter Parameter, unbelegte Annahme) | 🟠 hoch |
| REQ-002 | Fast and Friendly | Dokumentation | Eindeutigkeit → Überprüfbarkeit | 🟡 mittel |
| REQ-003 | The All-in-One Feature | Dokumentation | Atomarität | 🟠 hoch |
| REQ-004 | The Perfect Prediction | Inhalt | Machbarkeit, Notwendigkeit | 🔴 kritisch |
| REQ-005 | Monday Morning | Inhalt | Vorzeitige Entwurfsentscheidung | 🟡 mittel |
| REQ-006 | The Missing Definition | Dokumentation | Eindeutigkeit (3 undefinierte Begriffe) | 🟠 hoch |
| REQ-007 | The Notification Paradox | Abgestimmtheit | Konflikt mit REQ-008 | 🟠 hoch |
| REQ-008 | No Exceptions | Abgestimmtheit | Konflikt mit REQ-007 | 🟠 hoch |
| REQ-009 | The Secret Dashboard | Abgestimmtheit | Konflikt mit Datenschutz, Studierenden, Brief | 🔴 kritisch |
| REQ-010 | The Invisible Source | Inhalt | Vollständigkeit | 🟡 mittel |
| REQ-011 | The New Login | Abgestimmtheit | Verstoß gegen Rahmenbedingung | 🟠 hoch |
| REQ-012 | The Universal Recommendation | Inhalt | Machbarkeit, Überprüfbarkeit | 🟠 hoch |
| REQ-013 | The Silent Change | Dokumentation | Eindeutigkeit (Akteur, Objekt fehlt) | 🟠 hoch |
| REQ-014 | The Accessibility Shortcut | Inhalt | Überprüfbarkeit, Machbarkeit | 🟡 mittel |
| REQ-015 | The AI Knows Best | Abgestimmtheit | Rechtliche Zulässigkeit, Konflikt mit Datenschutz | 🔴 kritisch |

---

## REQ-001 · The Seven-Day Rule

> *Das System muss Studierende automatisch benachrichtigen, wenn sie sieben Tage lang nicht im Online Campus aktiv waren.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Inhalt |
| **Qualitätskriterium** | Korrektheit / Adäquatheit · Verfolgbarkeit · keine vorzeitige Entwurfsentscheidung |
| **Fehlerbeschreibung** | „Sieben Tage“ wirkt präzise, hat aber keine Quelle. Kein*e Stakeholder*in hat diesen Wert genannt. Die Anforderung setzt außerdem stillschweigend voraus, dass fehlende Aktivität im Online Campus bedeutet, dass nicht gelernt wird und Unterstützung nötig ist (`ASSUMPTION-001`). Die Studierendenvertretung sagt das Gegenteil: Viele lernen offline oder am Wochenende. „Benachrichtigen“ ist bereits eine Lösung. Das eigentliche Bedürfnis (Orientierung, Wiedereinstieg?) wird nicht genannt. |
| **Mögliche Konsequenz** | Fehlalarme bei Studierenden, die bewusst pausieren, offline lernen, krank oder im Urlaub sind. Die Nachricht wird als Kontrolle empfunden, die Akzeptanz des Study Buddys sinkt, Hinweise werden ignoriert. Ein einheitlicher Wert passt nicht zu Prüfungsphasen, vorlesungsfreier Zeit und unterschiedlichen Lehrveranstaltungen (`ASSUMPTION-003`). |
| **Fehlende Informationen** | Was zählt als „aktiv“ (Login, Seitenaufruf, bearbeitete Lernaktivität)? (`QUESTION-001`) · Welche Aktivitätsdaten erfasst der Online Campus? (`QUESTION-002`) · Gibt es einen erwarteten Aktivitätsrhythmus je Lehrveranstaltung? (`QUESTION-009`) · Wollen Studierende solche Hinweise überhaupt? (`ASSUMPTION-002`) · Darf Inaktivität dafür ausgewertet werden? (`QUESTION-004`) |
| **Weitere Mängel** | *Dokumentation – Eindeutigkeit:* „aktiv“ und „benachrichtigen“ (Kanal, Inhalt, Wiederholung) undefiniert. *Abgestimmtheit:* „automatisch“ heißt ohne Zustimmung; Konflikt mit REQ-007 (Deaktivierbarkeit) und mit der Forderung der Studierendenvertretung nach Selbstbestimmung. |

---

## REQ-002 · Fast and Friendly

> *Der Study Buddy muss schnell, intuitiv und besonders benutzerfreundlich sein.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Dokumentation |
| **Qualitätskriterium** | Eindeutigkeit · Atomarität |
| **Fehlerbeschreibung** | „Schnell“, „intuitiv“ und „besonders benutzerfreundlich“ sind subjektive Adjektive ohne Bezugsgröße. Jede*r versteht darunter etwas anderes. Der Satz bündelt mindestens zwei verschiedene Qualitätsanforderungen (Performanz und Gebrauchstauglichkeit). Es fehlt, für welche Nutzer*innen, bei welchen Aufgaben und unter welchen Bedingungen das gilt. |
| **Mögliche Konsequenz** | Die Anforderung ist nicht abnehmbar. Entwicklung und Auftraggeber*in streiten am Ende darüber, ob „schnell genug“ erreicht ist. Sie gibt keine Richtung für Design- und Architekturentscheidungen. Weil alle zustimmen können, wird sie als „erledigt“ betrachtet, obwohl nichts festgelegt ist. |
| **Fehlende Informationen** | Welche Aufgaben sind für Studierende zentral? · Welche Antwortzeiten sind akzeptabel, und was ist technisch im Online Campus erreichbar? (IT) · Welche Nutzer*innengruppen müssen berücksichtigt werden (Studienanfänger*innen, wenig technikaffine Personen, Personen mit Barrierefreiheitsbedarf)? · Mit welcher Methode wird Benutzerfreundlichkeit gemessen? |
| **Weitere Mängel** | *Inhalt – Überprüfbarkeit:* kein Test kann „erfüllt / nicht erfüllt“ feststellen. *Inhalt – Vollständigkeit:* Lastannahmen fehlen. Überschneidung mit REQ-014 (Barrierefreiheit). |

---

## REQ-003 · The All-in-One Feature

> *Das System muss bevorstehende Abgaben anzeigen, personalisierte Erinnerungen versenden, Lernfortschritte analysieren und Lehrende über Schwierigkeiten informieren.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Dokumentation |
| **Qualitätskriterium** | Atomarität |
| **Fehlerbeschreibung** | Ein Satz enthält vier eigenständige Funktionen mit völlig unterschiedlichem Risiko: (1) Abgaben anzeigen ist unkritisch, (2) Erinnerungen versenden betrifft Opt-in und Kanäle, (3) Lernfortschritt analysieren setzt eine Definition voraus, die es nicht gibt, (4) Lehrende über Schwierigkeiten informieren ist eine Weitergabe personenbezogener Einschätzungen an Dritte. |
| **Mögliche Konsequenz** | Die Anforderung kann nur als Ganzes angenommen oder abgelehnt werden. Wird sie wegen der unkritischen Teile freigegeben, rutscht die heikle Datenweitergabe an Lehrende unbemerkt mit durch. Teile können nicht einzeln priorisiert, getestet oder nachverfolgt werden. |
| **Fehlende Informationen** | Was bedeutet „personalisiert“? · Was bedeutet „Lernfortschritt“ und „Schwierigkeiten“? (`QUESTION-003`, `ASSUMPTION-004`) · Dürfen Einschätzungen ohne Zustimmung an Lehrende gehen? (`QUESTION-006`) · Wollen Lehrende diese Information überhaupt, und was sollen sie damit tun? |
| **Weitere Mängel** | *Dokumentation – Eindeutigkeit:* „personalisiert“, „analysieren“, „Schwierigkeiten“. *Abgestimmtheit:* Die Lehrendenvertretung will ausdrücklich klären, ob sie „automatisch benachrichtigt werden, wenn Studierende angeblich Schwierigkeiten haben“, ist also nicht einverstanden. Konflikt mit Datenschutz und Studierendenvertretung. Teil (4) überschneidet sich mit REQ-009 und REQ-015. |

---

## REQ-004 · The Perfect Prediction

> *Das System muss zuverlässig erkennen, welche Studierenden ihr Studium nicht erfolgreich abschließen werden.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Inhalt |
| **Qualitätskriterium** | Machbarkeit · Notwendigkeit · Überprüfbarkeit |
| **Fehlerbeschreibung** | Eine **zuverlässige** Vorhersage des Studienerfolgs ist nicht möglich. Ob jemand abschließt, hängt stark von Faktoren außerhalb des Online Campus ab (Beruf, Familie, Gesundheit, Finanzen). Überprüfen ließe sich die Anforderung erst nach Jahren. Es bleibt völlig offen, **wozu** die Vorhersage dient und was danach passieren soll. Das ist keine Anforderung, sondern ein Wunsch nach einer Fähigkeit. |
| **Mögliche Konsequenz** | Fehlprognosen stigmatisieren Studierende und können zur sich selbst erfüllenden Prophezeiung werden. Profiling personenbezogener Daten (Art. 4 Nr. 4 DSGVO) ohne klaren Zweck verstößt gegen die Zweckbindung. Ein solches System kann im Bildungsbereich unter die strengeren Regeln des EU AI Act fallen (`QUESTION-013`). Hoher Entwicklungsaufwand für eine Funktion ohne nachgewiesenen Nutzen, bei begrenztem Budget (Brief Abschnitt 11). Massiver Vertrauensverlust bei Studierenden. |
| **Fehlende Informationen** | Welches Problem soll damit gelöst werden? (Laut Stakeholder-Register: Die Studiengangsleitung erfährt zu spät von Schwierigkeiten.) · Was bedeutet „nicht erfolgreich abschließen“ (Abbruch, Wechsel, Unterbrechung, Verlängerung)? · Welche Maßnahme soll auf eine Prognose folgen, und wer führt sie aus? · Ist das rechtlich zulässig? (`QUESTION-004`, `QUESTION-013`) |
| **Weitere Mängel** | *Dokumentation – Eindeutigkeit:* „zuverlässig“ ohne Maß. *Abgestimmtheit:* Konflikt mit Datenschutz („automatisierte Einstufung als gefährdet besonders kritisch“) und Studierendenvertretung. Bildet mit REQ-006 und REQ-015 eine Kette vom Erkennen zum Handeln, ohne dass ein Mensch beteiligt ist (siehe K7). |

---

## REQ-005 · Monday Morning

> *Alle Studierenden müssen jeden Montag um 08:00 Uhr eine personalisierte Fortschrittsübersicht per E-Mail erhalten.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Inhalt |
| **Qualitätskriterium** | Keine vorzeitige Entwurfsentscheidung · Verfolgbarkeit |
| **Fehlerbeschreibung** | Kanal (E-Mail), Rhythmus (wöchentlich) und Uhrzeit (Montag 08:00) sind Lösungsdetails, für die keine Begründung oder Quelle vorliegt. Es wird angenommen, dass alle Studierenden eine solche Übersicht wollen, und zwar zugestellt statt abrufbar (`ASSUMPTION-002`). „Fortschrittsübersicht“ setzt voraus, dass Lernfortschritt definiert und messbar ist (`ASSUMPTION-004`). |
| **Mögliche Konsequenz** | Eine Pflicht-E-Mail an alle wird schnell als Spam wahrgenommen und ignoriert. Montag früh passt nicht zu Berufstätigen, die am Wochenende lernen. Lerndaten verlassen per E-Mail den geschützten Online Campus (Weiterleitung, private Postfächer). Ein paralleler Kanal neben dem Online Campus widerspricht der Integrationsvorgabe des Briefs (Abschnitt 7). |
| **Fehlende Informationen** | Wollen Studierende eine Übersicht, und wenn ja, in welchem Rhythmus und über welchen Kanal? · Was ist „Lernfortschritt“? (`QUESTION-003`) · Welche Benachrichtigungswege bietet der Online Campus? (`QUESTION-007`) · Ist der Versand von Lerndaten per E-Mail zulässig? (Datenschutz) |
| **Weitere Mängel** | *Dokumentation – Eindeutigkeit:* „personalisiert“ undefiniert; Zeitzone offen. *Abgestimmtheit:* „Alle … müssen“ widerspricht REQ-007 (alles deaktivierbar). |

---

## REQ-006 · The Missing Definition

> *Wenn ein kritischer Lernrückstand vorliegt, muss das System geeignete Maßnahmen einleiten.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Dokumentation |
| **Qualitätskriterium** | Eindeutigkeit |
| **Fehlerbeschreibung** | Der Satz besteht im Kern aus drei undefinierten Begriffen: „kritisch“, „Lernrückstand“ und „geeignete Maßnahmen“. Ein Rückstand setzt einen erwarteten Verlauf voraus, den es bisher nicht gibt (`QUESTION-009`). Es fehlt, wer den Rückstand feststellt, wer über Maßnahmen entscheidet, wer sie ausführt und ob die betroffene Person davon erfährt. |
| **Mögliche Konsequenz** | Jede Umsetzung ist gleichermaßen „richtig“. Die Entwicklung muss die fehlenden Definitionen selbst erfinden, und damit trifft sie fachliche und rechtliche Entscheidungen, die ihr nicht zustehen. Wenn „Maßnahmen“ automatisch ausgelöst werden (z. B. Meldung an die Studiengangsleitung), kann das eine automatisierte Entscheidung mit Wirkung auf die Person sein (Art. 22 DSGVO). |
| **Fehlende Informationen** | Welche Aktivitäten sind verpflichtend, welche optional? (Lehrende) · Ab wann gilt ein Rückstand als „kritisch“, und wer legt das fest? · Welche Unterstützungsangebote gibt es überhaupt? (`QUESTION-008`) · Wann muss ein Mensch eingebunden werden? (`QUESTION-006`) |
| **Weitere Mängel** | *Inhalt – Überprüfbarkeit:* weder Auslöser noch Ergebnis testbar. *Inhalt – Vollständigkeit:* Akteur und Empfänger*in fehlen. *Abgestimmtheit:* Die Lehrendenvertretung betont, dass nicht jede fehlende Bearbeitung ein Rückstand ist. |

---

## REQ-007 · The Notification Paradox

> *Studierende müssen sämtliche Benachrichtigungen jederzeit deaktivieren können.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Abgestimmtheit |
| **Qualitätskriterium** | Konfliktfreiheit (mit REQ-008) |
| **Fehlerbeschreibung** | REQ-007 und REQ-008 schließen sich logisch aus: Wenn *sämtliche* Benachrichtigungen deaktivierbar sind, kann das System nicht *unabhängig von Einstellungen* benachrichtigen. Beide können nicht gleichzeitig erfüllt werden. Für sich genommen ist das Anliegen (Selbstbestimmung) gut begründet: Es entspricht der Forderung der Studierendenvertretung und dem Brief (Abschnitt 8: „ob bestimmte Funktionen deaktiviert werden können“). |
| **Mögliche Konsequenz** | Die Entwicklung muss den Konflikt selbst auflösen, nach eigenem Ermessen. Wird REQ-007 umgesetzt, verpassen Studierende womöglich verbindliche Informationen (z. B. Friständerungen). Wird REQ-008 umgesetzt, fühlen sie sich übergangen. In beiden Fällen ist eine Abnahme gegen beide Anforderungen unmöglich. |
| **Fehlende Informationen** | Was ist eine „Benachrichtigung“ (Hinweis im Online Campus, E-Mail, Push)? · Gehören hochschulrechtlich verpflichtende Mitteilungen dazu, oder laufen diese ohnehin über andere Kanäle? (`QUESTION-011`) · Soll alles auf einmal oder jede Hinweisart einzeln deaktivierbar sein? (`QUESTION-005`) |
| **Weitere Mängel** | *Dokumentation – Eindeutigkeit:* „sämtliche“ und „jederzeit“ sind absolute Begriffe. *Abgestimmtheit:* hebelt auch REQ-001 („automatisch“) und REQ-005 („alle müssen“) aus. |

---

## REQ-008 · No Exceptions

> *Das System muss alle Studierenden unabhängig von ihren Einstellungen über kritische Studienereignisse benachrichtigen.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Abgestimmtheit |
| **Qualitätskriterium** | Konfliktfreiheit (mit REQ-007) |
| **Fehlerbeschreibung** | Direkter Widerspruch zu REQ-007 (siehe dort). Zusätzlich: „Kritisches Studienereignis“ ist nirgends definiert. „Alle Studierenden“ meint vermutlich nur die jeweils betroffenen. Unklar ist auch, ob der Study Buddy überhaupt der richtige Ort für verbindliche Mitteilungen ist oder ob die Studienadministration dafür bereits offizielle Kanäle hat. |
| **Mögliche Konsequenz** | Ohne Definition wird „kritisch“ mit der Zeit immer weiter ausgelegt. So entsteht eine Hintertür, über die jede Deaktivierung durch Studierende umgangen werden kann. Doppelte oder widersprüchliche Mitteilungen über Study Buddy und offizielle Kanäle führen zu Rechtsunsicherheit: Welche Mitteilung gilt? |
| **Fehlende Informationen** | Welche Ereignisse sind „kritisch“ bzw. mitteilungspflichtig? (`QUESTION-011`) · Wer entscheidet das? (Studienadministration, Studiengangsleitung, Datenschutz) · Über welchen Kanal werden solche Ereignisse heute kommuniziert? |
| **Weitere Mängel** | *Dokumentation – Eindeutigkeit:* „kritisch“, „alle“. *Inhalt – Vollständigkeit:* Kanal und Zuständigkeit fehlen. Spannung mit REQ-013 (ist eine Friständerung kritisch?). |

---

## REQ-009 · The Secret Dashboard

> *Die Studiengangsleitung muss jederzeit auf sämtliche individuellen Lernaktivitäten aller Studierenden zugreifen können.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Abgestimmtheit |
| **Qualitätskriterium** | Abstimmung mit Stakeholder*innen · Vereinbarkeit mit Rahmenbedingungen |
| **Fehlerbeschreibung** | „Jederzeit“, „sämtliche“, „individuell“ und „alle“ bedeuten einen uneingeschränkten Vollzugriff, genau die Form von Überwachung, die der Brief ausdrücklich vermeiden will (Abschnitt 3 und 8). Es wird kein Zweck genannt. Das Bedürfnis der Studiengangsleitung laut Register ist, Probleme früh zu erkennen, um **Unterstützung anzubieten**. Dafür braucht es nicht sämtliche Rohdaten aller Studierenden. Studierende erfahren nicht, wer was sieht („Secret“). |
| **Mögliche Konsequenz** | Verstoß gegen Zweckbindung und Datenminimierung (Art. 5 Abs. 1 lit. b, c DSGVO). Rollenkonflikt: Wer betreut, bewertet auch (`ASSUMPTION-005`). Studierende verändern ihr Verhalten, weil sie sich beobachtet fühlen, oder lehnen den Study Buddy ganz ab (`ASSUMPTION-006`). Das gefährdet das ganze Projekt. |
| **Fehlende Informationen** | Welche Informationen braucht die Studiengangsleitung konkret, und wofür? (`QUESTION-012`) · Reichen aggregierte Daten? · Auf welcher Rechtsgrundlage dürfte ein Zugriff erfolgen? (`QUESTION-004`) · Werden Studierende informiert, oder müssen sie zustimmen? (`QUESTION-006`) |
| **Weitere Mängel** | *Inhalt – Notwendigkeit:* Kein Zweck, keine Begründung. *Dokumentation – Eindeutigkeit:* „Lernaktivitäten“ unklar. Konflikte mit Studierendenvertretung, Datenschutz und REQ-007. Überschneidung mit REQ-003 (Teil 4). |

---

## REQ-010 · The Invisible Source

> *Der Study Buddy muss alle relevanten Informationen zu Lehrveranstaltungen automatisch aus den bestehenden Systemen übernehmen.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Inhalt |
| **Qualitätskriterium** | Vollständigkeit · Verfolgbarkeit |
| **Fehlerbeschreibung** | Weder „alle relevanten Informationen“ noch „die bestehenden Systeme“ werden benannt. Es fehlen Aktualität (Echtzeit? täglich?), Verhalten bei Ausfall oder widersprüchlichen Daten und die Frage, welches System führend ist. Die Anforderung nimmt an, dass Daten vollständig und einheitlich vorliegen. Die IT sagt ausdrücklich das Gegenteil (Stakeholder-Register). |
| **Mögliche Konsequenz** | Die IT kann den Aufwand nicht schätzen. Was „relevant“ ist, wird bei der Umsetzung entschieden statt im Requirements Engineering. Studierende sehen veraltete oder falsche Daten (z. B. Abgabetermine), ohne zu wissen, woher sie stammen, und versäumen im schlimmsten Fall eine Frist. |
| **Fehlende Informationen** | Welche Datenobjekte werden benötigt (Termine, Aktivitäten, Materialien …)? · Welche Systeme und Schnittstellen gibt es? (`QUESTION-002`, `QUESTION-007`) · Wie aktuell müssen die Daten sein? · Welches System ist für Termine führend? (`QUESTION-015`) |
| **Weitere Mängel** | *Inhalt – Überprüfbarkeit:* „alle“ ist ohne Liste nicht abnehmbar. *Dokumentation – Eindeutigkeit:* „relevant“. Abhängigkeit von REQ-013. |

---

## REQ-011 · The New Login

> *Studierende müssen für den Study Buddy ein separates Benutzerkonto mit eigenem Passwort erstellen.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Abgestimmtheit |
| **Qualitätskriterium** | Vereinbarkeit mit Rahmenbedingungen |
| **Fehlerbeschreibung** | Die Anforderung widerspricht dem Brief (Abschnitt 7: Integration in den Online Campus, keine zusätzliche eigenständige Anwendung) und der IT-Vorgabe aus dem Plot Twist (bestehende Anmeldung verwenden, eigene Benutzerverwaltung entfällt). Sie schreibt außerdem eine technische Lösung vor (eigene Benutzerverwaltung), ohne dass ein Bedürfnis dahinter erkennbar ist. |
| **Mögliche Konsequenz** | Eine zusätzliche Hürde senkt die Nutzung, gerade bei wenig technikaffinen Studierenden und Studienanfänger*innen. Mehr Passwörter bedeuten mehr Passwort-Resets, mehr Supportaufwand und eine zusätzliche Angriffsfläche für die Informationssicherheit. Die Vorgabe der IT wird verletzt, das Konzept wäre so nicht umsetzbar. |
| **Fehlende Informationen** | Welches Anmeldesystem nutzen Studierende heute? · Muss der Study Buddy Teil des Online Campus sein oder darf er ein eigener Dienst mit derselben Anmeldung sein? · Gilt die Vorgabe für alle Nutzer*innengruppen? (alles offene Fragen aus dem Plot Twist) |
| **Weitere Mängel** | *Inhalt – Notwendigkeit:* kein Nutzen für Studierende. *Inhalt – vorzeitige Entwurfsentscheidung.* Barrierefreiheit wird erschwert (REQ-014). |

---

## REQ-012 · The Universal Recommendation

> *Das System muss jeder studierenden Person jederzeit die optimale individuelle Lernstrategie empfehlen.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Inhalt |
| **Qualitätskriterium** | Machbarkeit · Überprüfbarkeit |
| **Fehlerbeschreibung** | Eine „optimale“ Lernstrategie ist keine messbare Größe. Es gibt keinen Maßstab, an dem sich prüfen ließe, ob eine Empfehlung optimal war. Es wird angenommen, dass sich aus Online-Campus-Daten ablesen lässt, wie jemand am besten lernt, obwohl Offline-Lernen, Vorwissen und Lebenssituation darin nicht enthalten sind. „Jeder … jederzeit“ unterstellt, dass alle Empfehlungen wollen. Der Brief lässt den Personalisierungsgrad ausdrücklich offen. |
| **Mögliche Konsequenz** | Falsche oder generische Empfehlungen untergraben das Vertrauen. Didaktische Empfehlungen ohne Abstimmung mit Lehrenden widersprechen womöglich deren Kurskonzept. Für individuelle Empfehlungen braucht es ein detailliertes Profil, also wieder Profiling und eine Datenschutzfrage. Die Anforderung lädt dazu ein, eine KI einzusetzen, ohne die KI-Frage (Brief Abschnitt 4) geklärt zu haben. |
| **Fehlende Informationen** | Was verstehen Studierende unter „Lernstrategie“ (Zeitplanung, Lernmethode, Reihenfolge)? · Wie viel Personalisierung ist erwünscht? (Interviews Studierende) · Wer verantwortet didaktische Inhalte? (Lehrende) · Welche Daten wären nötig, und dürfen sie dafür verwendet werden? (`QUESTION-004`) |
| **Weitere Mängel** | *Dokumentation – Eindeutigkeit:* „optimal“, „Lernstrategie“, „individuell“. *Abgestimmtheit:* Überschneidung mit REQ-015 und REQ-004 (gleiche Datenannahme, `ASSUMPTION-004`). |

---

## REQ-013 · The Silent Change

> *Änderungen an Abgabeterminen müssen automatisch übernommen werden, ohne dass eine erneute Bestätigung erforderlich ist.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Dokumentation |
| **Qualitätskriterium** | Eindeutigkeit · Konformität zu Dokumentationsregeln (Passiv ohne Akteur) |
| **Fehlerbeschreibung** | Der Passivsatz verschweigt alle Beteiligten: Wer ändert die Termine (Lehrende, Administration)? Wohin werden sie übernommen? Wessen Bestätigung entfällt (die der Lehrenden oder der Studierenden)? Ungeklärt bleibt, ob Studierende von der Änderung erfahren. Eine *stille* Änderung, insbesondere eine Vorverlegung, kann Studierende direkt benachteiligen. |
| **Mögliche Konsequenz** | Studierende verlassen sich auf einen alten Termin und versäumen die Abgabe. Weichen Study Buddy und führendes System voneinander ab, ist unklar, welche Frist gilt. Das führt zu Beschwerden und rechtlichen Auseinandersetzungen. Ohne Protokoll ist nicht nachvollziehbar, wer was wann geändert hat. |
| **Fehlende Informationen** | Welches System ist für Abgabetermine führend, wer darf sie ändern? (`QUESTION-015`) · Wie werden Studierende heute über Änderungen informiert? · Gilt eine Friständerung als „kritisches Studienereignis“ im Sinne von REQ-008? (`QUESTION-011`) |
| **Weitere Mängel** | *Inhalt – Vollständigkeit:* Benachrichtigung und Nachvollziehbarkeit fehlen. *Abgestimmtheit:* Spannung mit REQ-007/008 und dem Transparenzziel des Briefs. Abhängig von REQ-010. |

---

## REQ-014 · The Accessibility Shortcut

> *Der Study Buddy muss auf allen Geräten vollständig barrierefrei funktionieren.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Inhalt |
| **Qualitätskriterium** | Überprüfbarkeit · Machbarkeit · Vollständigkeit |
| **Fehlerbeschreibung** | „Vollständig barrierefrei“ ist ohne Bezug auf einen Standard (z. B. WCAG) nicht prüfbar. „Alle Geräte“ ist eine unbegrenzte Menge und damit nicht erfüllbar. Der Satz ist ein „Shortcut“: Er ersetzt die Erhebung der tatsächlichen Bedürfnisse betroffener Studierender durch eine pauschale Formel. Diese Stakeholder*innen sind noch gar nicht einbezogen (Stakeholder-Register: fehlende Stakeholder*innen). |
| **Mögliche Konsequenz** | Barrierefreiheit wird am Ende „abgehakt“, ohne dass Betroffene je getestet haben. Konkrete Bedürfnisse (Screenreader, Tastaturbedienung, einfache Sprache, kognitive Entlastung) bleiben unerkannt. Es besteht ein Risiko, gesetzliche Vorgaben zu verfehlen, und Studierende werden ausgeschlossen. |
| **Fehlende Informationen** | Welche Standards bzw. gesetzlichen Vorgaben gelten für die FernFH? (`QUESTION-010`) · Welche Bedürfnisse haben betroffene Studierende? · Welche Geräte und Browser nutzen Studierende tatsächlich? (`QUESTION-014`) |
| **Weitere Mängel** | *Dokumentation – Eindeutigkeit:* welche Arten von Einschränkungen gemeint sind. *Abgestimmtheit:* Stakeholder*innen fehlen. Überschneidung mit REQ-002. |

---

## REQ-015 · The AI Knows Best

> *Ein KI-Modell muss anhand der Nutzungsdaten automatisch entscheiden, welche Studierenden zusätzliche Betreuung benötigen.*

| Analysefeld | Befund |
|---|---|
| **Vorrangiger Qualitätsaspekt** | Abgestimmtheit |
| **Qualitätskriterium** | Vereinbarkeit mit rechtlichen Rahmenbedingungen · Abstimmung mit Datenschutz und Studierenden |
| **Fehlerbeschreibung** | Ein KI-Modell soll ohne menschliche Beteiligung über Personen entscheiden. Der Brief stellt aber ausdrücklich offen, „welche Entscheidungen ausdrücklich nicht automatisiert erfolgen dürfen“ und „wann eine menschliche Person eingebunden werden muss“. Diese Anforderung beantwortet die Frage eigenmächtig in die riskanteste Richtung. Der Datenschutz hält eine automatisierte Einstufung für besonders kritisch, der Einsatz generativer KI muss laut Register gesondert geprüft werden. |
| **Mögliche Konsequenz** | Möglicher Verstoß gegen Art. 22 DSGVO (automatisierte Einzelentscheidung). Je nach Ausgestaltung strengere Pflichten nach EU AI Act (`QUESTION-013`). Verzerrungen (Bias) treffen z. B. Berufstätige oder Offline-Lernende systematisch. Entscheidungen sind nicht erklärbar, Betroffene können sie nicht anfechten. Vertrauensverlust bis zur Ablehnung des Projekts. |
| **Fehlende Informationen** | Was ist „zusätzliche Betreuung“, wer leistet sie? (`QUESTION-008`) · Welche „Nutzungsdaten“ sind gemeint, und dürfen sie dafür verwendet werden? (`QUESTION-002`, `QUESTION-004`) · Welche Entscheidungen dürfen automatisiert werden? (Datenschutz, Hochschulleitung) · Bilden Nutzungsdaten Betreuungsbedarf überhaupt ab? (`ASSUMPTION-001`, `ASSUMPTION-004`) |
| **Weitere Mängel** | *Inhalt – vorzeitige Entwurfsentscheidung:* „KI-Modell“ ist eine Technologiewahl, kein Bedürfnis. *Dokumentation – Eindeutigkeit:* „Nutzungsdaten“, „zusätzliche Betreuung“. Gleiche Muster wie REQ-004 und REQ-006. |

---

## Widersprüche und Querbezüge zwischen den Requirements

| # | Beteiligte | Art | Befund |
|---|---|---|---|
| K1 | REQ-007 ⟷ REQ-008 | **logischer Widerspruch** | Alles deaktivierbar vs. unabhängig von Einstellungen benachrichtigen. Nicht gleichzeitig erfüllbar. |
| K2 | REQ-005 ⟷ REQ-007 | Widerspruch | „Alle müssen jeden Montag erhalten“ vs. alles deaktivierbar. |
| K3 | REQ-001 ⟷ REQ-007 | Spannung | „Automatisch“ ohne Opt-in vs. Kontrolle bei den Studierenden. |
| K4 | REQ-011 ⟷ Brief Abschnitt 7 / Plot Twist | Verstoß gegen Rahmenbedingung | Eigenes Konto vs. Integration und bestehende Anmeldung. |
| K5 | REQ-009 ⟷ Brief Abschnitt 8, Datenschutz, Studierendenvertretung | Widerspruch zu Projektzielen | Vollzugriff auf Einzeldaten vs. „keine Überwachung oder Kontrolle“. |
| K6 | REQ-003 (Teil 4) ⟷ REQ-009 ⟷ Lehrendenvertretung | versteckte Datenweitergabe | Zweiter Weg zur Weitergabe individueller Einschätzungen; Lehrende wollen das selbst nicht ungeklärt. |
| K7 | REQ-004 → REQ-006 → REQ-015 | **Kette ohne Mensch** | Vorhersagen (004) → als „kritisch“ einstufen (006) → KI entscheidet über Betreuung (015). Einzeln jeweils problematisch, zusammen ein vollautomatisches Profiling mit Folgen für die Person. |
| K8 | REQ-013 ⟷ REQ-008 / REQ-007 | Spannung | Stille Friständerung vs. Benachrichtigung über kritische Ereignisse. |
| K9 | REQ-013 ⟷ REQ-010 | Abhängigkeit | Automatische Übernahme setzt bekannte Quellsysteme und Aktualität voraus. |
| K10 | REQ-010 ⟷ Aussage der IT | unbelegte Annahme | „Alles automatisch“ vs. „Daten nicht vollständig und einheitlich“. |
| K11 | REQ-004 · REQ-012 · REQ-015 | gemeinsame unbelegte Annahme | Alle setzen voraus, dass Nutzungsdaten Lernverhalten und Bedarf abbilden (`ASSUMPTION-001`, `ASSUMPTION-004`). |
| K12 | REQ-002 ⟷ REQ-014 | Überlappung | Benutzerfreundlichkeit und Barrierefreiheit überschneiden sich; beide nicht messbar. |
| K13 | REQ-005 ⟷ Brief Abschnitt 7 / Datenschutz | Spannung | E-Mail als Parallelkanal; Lerndaten verlassen den Online Campus. |

## Wiederkehrende Fehlermuster

| Muster | Signalwörter | Betroffen |
|---|---|---|
| Absolute Begriffe | alle, sämtliche, jederzeit, jeder, vollständig, zuverlässig, optimal | 003, 004, 005, 007, 008, 009, 010, 012, 014 |
| Präzise Zahlen ohne Quelle | sieben Tage, Montag 08:00 | 001, 005 |
| Undefinierte Schlüsselbegriffe | aktiv, kritisch, Lernrückstand, geeignet, relevant, personalisiert, Schwierigkeiten | 001, 003, 005, 006, 008, 010, 015 |
| Vorweggenommene Lösung | E-Mail, KI-Modell, eigenes Konto, benachrichtigen | 001, 005, 011, 015 |
| Daten gehen an Dritte ohne Zustimmung | Lehrende, Studiengangsleitung, KI | 003, 009, 015 |
| Unerfüllbares Versprechen | zuverlässig erkennen, optimale Strategie, alle Geräte | 004, 012, 014 |
| Kein Mensch in der Entscheidung | automatisch entscheiden / einleiten | 006, 015 |

## Neue offene Fragen aus dieser Analyse

`QUESTION-011` bis `QUESTION-015` wurden in [`/elicitation/06-offene-fragen.md`](../elicitation/06-offene-fragen.md) ergänzt (kritische Studienereignisse, Informationsbedarf der Studiengangsleitung, EU AI Act, Zielgeräte, führendes System für Abgabetermine).

## Fazit

Keine der 15 Anforderungen ist in der vorliegenden Form abnahmefähig. Die meisten enthalten ein nachvollziehbares Bedürfnis, aber in Form einer vorweggenommenen Lösung mit Werten, die niemand bestätigt hat. Die gefährlichsten Mängel liegen nicht in einzelnen Sätzen, sondern in der **Kombination** von REQ-004, REQ-006, REQ-009 und REQ-015: Gemeinsam ergäben sie ein Überwachungs- und Profiling-System, obwohl keine einzelne Anforderung das ausdrücklich verlangt.
