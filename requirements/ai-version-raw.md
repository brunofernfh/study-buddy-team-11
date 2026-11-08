# KI Version (unverändert)

> Rohausgabe der KI aus Runde 2 mit dem **Suggested AI Prompt aus Moodle**, **unverändert** übernommen. Prompt, Modell und Rahmenbedingungen: [`human-vs-ai.md`](human-vs-ai.md#runde-2--ki).

---

# Review der Anforderungsentwürfe für den Digital Study Buddy

**Bewertungsrahmen:**
- **Inhalt:** Ist die Anforderung eindeutig, vollständig, korrekt, notwendig, prüfbar, machbar und lösungsneutral?
- **Dokumentation:** Sind Form, Satzschablone, Verbindlichkeit, Struktur und Verständlichkeit in Ordnung?
- **Abgestimmtheit:** Ist die Anforderung mit den relevanten Stakeholder:innen abgestimmt, frei von Konflikten und begründet?

Platzhalter wie **[TBD: …]** zeigen fehlende Informationen. Diese Werte habe ich bewusst nicht erfunden.

---

## REQ-001

> *Das System muss Studierende automatisch benachrichtigen, wenn sie sieben Tage lang nicht im Online Campus aktiv waren.*

### Qualitätsmängel

**Inhalt**
- **Unbegründeter Schwellenwert:** Die „sieben Tage“ sind nirgends belegt. Der Project Brief sagt ausdrücklich, dass der „längere Zeitraum“ noch nicht definiert ist. Der Wert ist also eine Annahme und keine abgeleitete Anforderung.
- **„Aktiv“ ist nicht definiert:** Es kann Login, Seitenaufruf, Bearbeitung einer Lernaktivität oder Abgabe bedeuten. Ohne Definition lässt sich die Anforderung nicht prüfen.
- **Unklare Datenbasis:** Laut Brief ist offen, ob Aktivitätsdaten verfügbar sind und ob sie verwendet werden dürfen.
- **Fragliche Annahme:** Inaktivität wird ohne Beleg mit Unterstützungsbedarf gleichgesetzt. Bei einem Fernstudium mit berufstätigen Studierenden kann eine Pause geplant sein, z. B. in prüfungsfreien Zeiten, im Urlaub oder bei einer Beurlaubung. Das Risiko sind Fehlalarme.
- **Unvollständig:** Es fehlen Kanal (E-Mail, Online Campus, Push), Inhalt, Häufigkeit (einmalig oder wiederholt), Ausnahmen (Semesterferien, Beurlaubung) und Zielgruppe (alle Studierenden oder nur bestimmte Studiengänge).
- **Unklarer Zweck:** Es ist nicht gesagt, welches Ziel die Benachrichtigung verfolgt (Erinnerung, Hilfsangebot, Orientierung).

**Dokumentation**
- „Automatisch benachrichtigen“ beschreibt eine Systemaktivität, aber nicht, was die Studierenden davon haben.
- Quelle, Begründung und Priorität fehlen.

**Abgestimmtheit**
- Die Anforderung ist mit keiner Stakeholdergruppe abgestimmt, weder mit Studierenden noch mit Datenschutz, Studiengangsleitung oder IT.
- **Möglicher Konflikt mit dem Projektziel**, dass sich Studierende nicht kontrolliert oder überwacht fühlen sollen.
- **Abhängigkeit zu REQ-007:** Wenn die Deaktivierung möglich ist, muss das Verhältnis zwischen beiden Anforderungen geklärt sein.

### Verbesserungsvorschlag (vorläufig)

> Das System muss Studierenden, die Erinnerungen bei Inaktivität nicht deaktiviert haben, eine Erinnerung über **[TBD: Kanal]** senden, wenn sie **[TBD: Zeitraum]** lang keine **[TBD: Definition von „Aktivität“, z. B. Bearbeitung einer Lernaktivität]** im Online Campus ausgeführt haben. Ausgenommen sind **[TBD: Ausnahmezeiträume, z. B. lehrveranstaltungsfreie Zeit, Beurlaubung]**.

### Offene Punkte und notwendige Abstimmungen
- Definition von „Aktivität“ und Festlegung des Schwellenwerts, abgestimmt mit Studierenden und Studiengangsleitungen
- Verfügbarkeit der Aktivitätsdaten und Schnittstellen, abgestimmt mit der IT bzw. den Betreiber:innen des Online Campus
- Zulässigkeit der Verarbeitung von Aktivitätsdaten zu diesem Zweck, abgestimmt mit dem Datenschutz
- Wie Studierende diese Art von Hinweis wahrnehmen (hilfreich oder kontrollierend), zu erheben z. B. durch Befragung oder Interviews
- Inhalt und Tonalität der Nachricht

### Akzeptanzkriterien
Akzeptanzkriterien sind erst sinnvoll, wenn Zeitraum und Aktivitätsdefinition geklärt sind. Danach ließe sich z. B. prüfen:
- Nach X Tagen ohne definierte Aktivität wird genau eine Erinnerung ausgelöst.
- In Ausnahmezeiträumen wird keine Erinnerung ausgelöst.
- Bei deaktivierter Funktion wird keine Erinnerung ausgelöst.

**Status: INVESTIGATE**

---

## REQ-002

> *Der Study Buddy muss schnell, intuitiv und besonders benutzerfreundlich sein.*

### Qualitätsmängel

**Inhalt**
- **Mehrdeutig und nicht prüfbar:** „Schnell“, „intuitiv“ und „besonders benutzerfreundlich“ sind subjektive Begriffe ohne Messgröße.
- **Nicht atomar:** Die Anforderung vermischt mindestens zwei Qualitätsmerkmale, Performance und Usability.
- **Unvollständig:** Es ist nicht gesagt, welche Funktionen oder Interaktionen gemeint sind, für welche Nutzer:innengruppe die Anforderung gilt und in welchem Nutzungskontext (mobil, Desktop, assistive Technologien).
- **Barrierefreiheit fehlt:** Der Brief nennt sie ausdrücklich als Thema. Sie wäre aber als eigene Anforderung zu erfassen.

**Dokumentation**
- Es handelt sich um eine Qualitätsanforderung, aber ohne Metrik, Messmethode und Zielwert.
- „Besonders“ ist ein Steigerungswort ohne Bezugspunkt.

**Abgestimmtheit**
- Es gibt kein gemeinsames Verständnis davon, was „intuitiv“ für die heterogene Zielgruppe bedeutet.
- Der Brief nennt lediglich das Ziel „einfach und ohne besondere technische Kenntnisse“ nutzbar.

### Verbesserungsvorschlag
Die Anforderung sollte in eigenständige, messbare Qualitätsanforderungen aufgeteilt werden:

> **REQ-002a (Performance):** Das System muss **[TBD: konkrete Funktion, z. B. die Übersicht „Mein Lernfortschritt“]** innerhalb von **[TBD: Zeit]** Sekunden anzeigen, gemessen unter **[TBD: Lastbedingungen/Umgebung]**.

> **REQ-002b (Gebrauchstauglichkeit):** Studierende ohne vorherige Einweisung müssen **[TBD: definierte Kernaufgaben]** in einem Usability-Test zu **[TBD: Erfolgsquote]** erfolgreich abschließen können.

> **REQ-002c (Barrierefreiheit, separat zu erheben):** Das System muss **[TBD: anzuwendender Standard bzw. anzuwendende Konformitätsstufe]** erfüllen.

### Offene Punkte und notwendige Abstimmungen
- Welche Kernaufgaben sind für Studierende relevant? Das ist zu erheben, nicht anzunehmen.
- Welche Performance-Ziele sind im Online Campus technisch erreichbar? Abstimmung mit der IT.
- Welche Barrierefreiheitsvorgaben gelten für die Hochschule? Klärung mit den Verantwortlichen.
- Welche Messmethoden sind geeignet, z. B. Usability-Test oder standardisierter Fragebogen wie SUS?

### Akzeptanzkriterien
Akzeptanzkriterien lassen sich erst nach Festlegung der Metriken formulieren. Fachlich naheliegend sind messbare Kriterien wie Antwortzeit, Aufgabenerfolgsquote im Usability-Test oder ein Fragebogenwert. Die konkreten Zielwerte müssen festgelegt werden.

**Status: REWRITE**

---

## REQ-007

> *Studierende müssen sämtliche Benachrichtigungen jederzeit deaktivieren können.*

### Qualitätsmängel

**Inhalt**
- **„Sämtliche“ ist zu absolut:** Es ist ungeklärt, ob es Benachrichtigungen gibt, die nicht deaktivierbar sein dürfen, z. B. organisatorisch oder rechtlich verbindliche Mitteilungen. Unklar ist auch, ob die Anforderung nur Study-Buddy-Benachrichtigungen betrifft oder auch bestehende Online-Campus-Benachrichtigungen.
- **Granularität offen:** Nur alles oder nichts, einzeln pro Benachrichtigungstyp, pro Kanal oder pro Lehrveranstaltung?
- **Folgen unklar:** Werden die zugrunde liegenden Daten weiter verarbeitet, wenn Benachrichtigungen deaktiviert sind? Deaktivieren und Datenverarbeitung beenden sind zwei verschiedene Dinge.
- **Unvollständig:** Wiederaktivierung, Voreinstellung (opt-in oder opt-out) und Ort der Einstellung fehlen.
- **Positiv:** Die Anforderung ist nutzer:innenzentriert und unterstützt das Ziel, nicht als Kontrolle wahrgenommen zu werden.

**Dokumentation**
- „Jederzeit“ ist grundsätzlich verständlich, sollte aber präzisiert werden, z. B. „ohne Kontaktaufnahme mit der Hochschule, über die Einstellungen“.
- Begründung und Quelle fehlen.

**Abgestimmtheit**
- Der Brief nennt ausdrücklich als offen, „ob bestimmte Funktionen deaktiviert werden können“. Die Anforderung nimmt also eine Entscheidung vorweg, die noch nicht abgestimmt ist.
- **Zielkonflikt** mit „frühzeitiges Erkennen von Unterstützungsbedarf“ und mit REQ-001. Dieser Konflikt ist mit Studiengangsleitungen, Studierenden und Datenschutz aufzulösen.

### Verbesserungsvorschlag (vorläufig)

> Das System muss Studierenden die Möglichkeit bieten, jede vom Study Buddy erzeugte Benachrichtigungsart **[TBD: Liste der Benachrichtigungsarten]** einzeln über die persönlichen Einstellungen zu deaktivieren und wieder zu aktivieren, ohne dafür Dritte kontaktieren zu müssen. **[TBD: ob und welche Benachrichtigungen davon ausgenommen sind, mit Begründung]**

### Offene Punkte und notwendige Abstimmungen
- Gibt es nicht deaktivierbare Benachrichtigungen? Klärung mit Studienadministration und Datenschutz.
- Voreinstellung opt-in oder opt-out? Klärung mit Datenschutz und Studierenden.
- Führt eine Deaktivierung auch zur Einstellung der zugehörigen Datenverarbeitung? Das wäre gegebenenfalls eine eigene Anforderung.
- Abgrenzung zu bestehenden Benachrichtigungen des Online Campus, Klärung mit der IT.

### Akzeptanzkriterien
Diese sind fachlich begründbar, sobald die Benachrichtigungsarten feststehen:
- Nach dem Deaktivieren einer Benachrichtigungsart erhält die Person keine Benachrichtigung dieser Art mehr.
- Die Einstellung lässt sich ohne Unterstützung Dritter ändern.
- Die Einstellung bleibt über Sitzungen hinweg erhalten.
- Eine Wiederaktivierung ist jederzeit möglich.

**Status: INVESTIGATE**

---

## REQ-011

> *Studierende müssen für den Study Buddy ein separates Benutzerkonto mit eigenem Passwort erstellen.*

### Qualitätsmängel

**Inhalt**
- **Vorweggenommene Lösung:** Die Anforderung legt eine technische Umsetzung fest, statt einen Bedarf zu beschreiben. Der eigentliche Bedarf ist vermutlich eine sichere Authentifizierung bzw. ein Zugriffsschutz.
- **Widerspruch zu den Rahmenbedingungen:** Der Brief verlangt eine Integration in den bestehenden Online Campus und will eine eigenständige Anwendung möglichst vermeiden. Ein separates Konto steht dem direkt entgegen.
- **Widerspruch zum Nutzungsziel:** Der Study Buddy soll „einfach und ohne besondere technische Kenntnisse“ nutzbar sein. Ein zusätzliches Konto ist eine zusätzliche Hürde.
- **Fraglicher Nutzen:** Die Anforderung bietet Studierenden keinen erkennbaren Vorteil und schafft zusätzliche Sicherheitsrisiken (weiteres Passwort, eigene Kontoverwaltung).

**Dokumentation**
- Die Anforderung ist formal klar formuliert. Begründung und Quelle fehlen jedoch vollständig.

**Abgestimmtheit**
- Die Anforderung ist mit der IT nicht abgestimmt und steht im Konflikt mit dokumentierten Projektrahmenbedingungen.
- Woher sie stammt, ist nicht nachvollziehbar.

### Verbesserungsvorschlag
Die Anforderung sollte in dieser Form verworfen und gegebenenfalls durch eine lösungsneutrale Anforderung ersetzt werden:

> Das System muss sicherstellen, dass ausschließlich authentifizierte Studierende Zugriff auf ihre eigenen Study-Buddy-Informationen erhalten. **[TBD: ob die bestehende Authentifizierung des Online Campus genutzt werden kann, Abstimmung mit der IT]**

### Offene Punkte und notwendige Abstimmungen
- Welche Authentifizierungsmechanismen bietet der Online Campus? Klärung mit der IT.
- Welche Sicherheitsanforderungen gelten? Klärung mit der Informationssicherheit.
- Gibt es einen fachlichen oder technischen Grund für ein separates Konto, der bisher nicht dokumentiert ist? Klärung mit der Quelle der Anforderung.

### Akzeptanzkriterien
Für die ursprüngliche Anforderung sind keine sinnvoll. Für die Ersatzanforderung erst nach Klärung der Authentifizierungslösung.

**Status: RECONSIDER**

---

## REQ-015

> *Ein KI-Modell muss anhand der Nutzungsdaten automatisch entscheiden, welche Studierenden zusätzliche Betreuung benötigen.*

### Qualitätsmängel

**Inhalt**
- **Vorweggenommene Lösung:** „KI-Modell“ ist eine Technologieentscheidung. Der Brief sagt ausdrücklich, dass erst geprüft werden soll, ob KI sinnvoll eingesetzt werden kann.
- **Vorweggenommene Grundsatzentscheidung:** Laut Brief ist offen, welche Entscheidungen automatisiert getroffen werden dürfen und wann eine menschliche Person eingebunden werden muss. Die Anforderung entscheidet beides vorab, und zwar ohne Menschen in der Entscheidung.
- **Undefinierte Begriffe:**
  - „Nutzungsdaten“: welche Daten konkret?
  - „Zusätzliche Betreuung“: welche Form, durch wen?
  - „Benötigen“: nach welchen Kriterien?
- **Nicht prüfbar:** Ohne Kriterien für „Betreuungsbedarf“ lässt sich weder Korrektheit noch Qualität der Entscheidung prüfen.
- **Hohes Risikopotenzial:** Fehlklassifikationen, Stigmatisierung, mögliche Verzerrungen (Bias) gegenüber bestimmten Gruppen mit anderem Lernverhalten und fehlende Nachvollziehbarkeit für Studierende.
- **Starker Widerspruch zum Projektziel**, nicht als Überwachung oder Kontrolle wahrgenommen zu werden.

**Dokumentation**
- Akteur ist „ein KI-Modell“ und nicht das System. Die Anforderung ist aus Technologiesicht formuliert statt aus Sicht des Bedarfs.
- Zweck, Quelle und Begründung fehlen.

**Abgestimmtheit**
- Die Anforderung ist mit keiner der relevanten Gruppen abgestimmt: Datenschutz, Informationssicherheit, Studierende, Studiengangsleitung, Hochschulleitung.
- **Rechtliche Prüfung erforderlich:** Automatisierte Einzelentscheidungen über Personen und der KI-Einsatz im Bildungskontext können datenschutzrechtlich (z. B. DSGVO-Regelungen zu automatisierten Entscheidungen) und KI-regulatorisch relevant sein. Ob und welche Vorgaben hier greifen, ist nicht geklärt und muss vom Datenschutz bzw. der Rechtsabteilung bewertet werden. Eine Zulässigkeit darf nicht angenommen werden.

### Verbesserungsvorschlag
Die Anforderung sollte in dieser Form verworfen werden. Der dahinterliegende Bedarf („frühzeitiges Erkennen möglichen Unterstützungsbedarfs“) ist aus dem Brief ableitbar und sollte lösungsneutral neu erhoben werden. Eine mögliche Richtung, vorbehaltlich der Abstimmung:

> Das System soll Studierenden auf Basis von **[TBD: abgestimmte, zulässige Datenkategorien]** und **[TBD: definierte, transparente Kriterien]** Hinweise auf verfügbare Unterstützungsangebote anzeigen. Ob und unter welchen Bedingungen eine Ansprechperson der Hochschule informiert wird, ist **[TBD: Abstimmung mit Datenschutz, Studiengangsleitung, Studierenden]**. Entscheidungen über die Zuweisung von Betreuung dürfen **[TBD: ob ausschließlich durch Menschen]** getroffen werden.

### Offene Punkte und notwendige Abstimmungen
- Was bedeutet „Unterstützungsbedarf“ fachlich? Erhebung mit Studierenden, Lehrenden und Studiengangsleitung.
- Welche Daten dürfen zu diesem Zweck verarbeitet werden? Klärung mit dem Datenschutz.
- Ist KI überhaupt erforderlich, oder reichen transparente regelbasierte Kriterien? Das gehört in die Lösungsphase, nicht in die Anforderung.
- Welche Rolle hat der Mensch (Human-in-the-Loop) und wer erhält Einsicht in welche Informationen?
- Wissen Studierende von der Verarbeitung, haben sie Widerspruchsmöglichkeiten, und können sie die Grundlage eines Hinweises nachvollziehen?

### Akzeptanzkriterien
Derzeit sind keine fachlich begründbaren Akzeptanzkriterien möglich, weil Kriterien, Datenbasis und Entscheidungsbefugnis vollständig ungeklärt sind.

**Status: RECONSIDER**

---

## Gesamtübersicht

| ID | Hauptmangel | Status |
|---|---|---|
| REQ-001 | Unbegründeter Schwellenwert, „Aktivität“ undefiniert, Datenbasis und Zulässigkeit unklar | **INVESTIGATE** |
| REQ-002 | Vage, nicht messbar, nicht atomar | **REWRITE** |
| REQ-007 | „Sämtliche“ zu absolut, Granularität offen, Zielkonflikt mit REQ-001 | **INVESTIGATE** |
| REQ-011 | Vorweggenommene Lösung, widerspricht der Integrationsvorgabe des Briefs | **RECONSIDER** |
| REQ-015 | Technologievorgabe, automatisierte Personenentscheidung ohne Kriterien und Abstimmung, rechtlich ungeprüft | **RECONSIDER** |

## Übergreifende Feststellungen
1. **Fehlende Rückverfolgbarkeit:** Keine Anforderung hat Quelle, Begründung oder Priorität. Diese Attribute sollten für alle Anforderungen ergänzt werden.
2. **Konflikt zwischen Unterstützung und Selbstbestimmung:** REQ-001 und REQ-015 auf der einen Seite und REQ-007 auf der anderen stehen in einem Spannungsfeld. Dieses muss explizit mit den Stakeholder:innen aufgelöst und dokumentiert werden.
3. **Datenklärung als Voraussetzung:** REQ-001 und REQ-015 setzen eine Klärung von Datenverfügbarkeit und Zulässigkeit voraus. Diese sollte vorgezogen werden.
4. **Fehlende Anforderungen:** Transparenz (welche Daten wofür verwendet werden), Barrierefreiheit und Speicherdauer werden im Brief als Themen genannt, sind aber noch nicht als Anforderungen erfasst.
