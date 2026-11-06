# KI Version (unverändert)

> Rohausgabe der KI aus Runde 2, **unverändert** übernommen (Prompt, Modell und Rahmenbedingungen siehe [`human-vs-ai.md`](human-vs-ai.md#runde-2--ki)). Die Überschrift „REQ-001 bis REQ-015“ stammt von der KI selbst, obwohl nur fünf Anforderungen übergeben wurden.

---

# Qualitätsanalyse der Anforderungsentwürfe für den Study Buddy (REQ-001 bis REQ-015)

Als Maßstab dienen die üblichen Qualitätskriterien für Einzelanforderungen nach ISO/IEC/IEEE 29148 und IREB. Eine Anforderung soll eindeutig, prüfbar, notwendig, atomar, konsistent, realisierbar und lösungsneutral sein. Außerdem soll man nachvollziehen können, woher sie stammt. Wir sind noch in der Discovery-Phase. Viele Werte sind deshalb bewusst als **[TBD]** markiert. Das ist ehrlicher als eine scheinbare Präzision, die niemand bestätigt hat.

---

## REQ-001: Benachrichtigung bei Inaktivität

**Ursprünglich:** *Das System muss Studierende automatisch benachrichtigen, wenn sie sieben Tage lang nicht im Online Campus aktiv waren.*

### Qualitätsmängel
| Kriterium | Mangel |
|---|---|
| **Eindeutigkeit** | „Nicht aktiv“ ist nicht definiert. Gemeint sein kann: kein Login, Login ohne Interaktion, keine bearbeitete Lernaktivität oder keine Abgabe. Auch „das System“ ist unklar: der Study Buddy oder der Online Campus? |
| **Validierung / Herkunft** | Die „sieben Tage“ sind eine nicht belegte Annahme. Laut Brief ist ausdrücklich noch offen, was ein „längerer Zeitraum“ ist. Es fehlen Quelle und Begründung. |
| **Vollständigkeit** | Es fehlen: Kanal (Campus-Hinweis, E-Mail, Push), Inhalt der Nachricht, Häufigkeit (einmalig oder wiederholt), Ausnahmen (Ferien, prüfungsfreie Zeit, Beurlaubung, Studienunterbrechung) und Zielgruppe (alle Studierenden oder nur aktiv Inskribierte?). |
| **Konsistenz** | Steht im Konflikt mit REQ-007: Was passiert, wenn jemand Benachrichtigungen deaktiviert hat? |
| **Angemessenheit / Akzeptanz** | Eine Nachricht nach dem Muster „Du warst 7 Tage nicht aktiv“ wirkt schnell wie Kontrolle. Der Brief will genau das vermeiden. Berufstätige Fernstudierende lernen oft in Blöcken, Inaktivität ist also nicht automatisch ein Problem. |
| **Lösungsneutralität** | Die Anforderung legt eine konkrete Lösung fest (Inaktivitäts-Trigger). Das eigentliche Ziel bleibt unbenannt: Studierende sollen offene Aktivitäten und Fristen nicht aus den Augen verlieren. |

### Verbesserte Version
> **REQ-001 (Entwurf, zu validieren):** Wenn eine Studierende oder ein Studierender, die/der Lernhinweise aktiviert hat, innerhalb der Vorlesungszeit an **[X, TBD]** aufeinanderfolgenden Kalendertagen keine **Lernaktivität** (Definition siehe Glossar, **[TBD]**) im Online Campus durchgeführt hat, muss der Study Buddy dieser Person einen Hinweis im Online Campus anzeigen. Der Hinweis nennt die offenen Lernaktivitäten und die Abgabefristen der nächsten **[14, TBD]** Tage.
>
> - Pro Lehrveranstaltung wird höchstens **ein** solcher Hinweis je **[Zeitraum, TBD]** angezeigt.
> - In vorlesungsfreien Zeiten und bei gemeldeter Studienunterbrechung werden keine Inaktivitätshinweise erzeugt.
> - Der Hinweis ist unterstützend formuliert. Er nennt keine Aktivitätsdauer und keinen Vergleich mit anderen Studierenden.
>
> *Quelle:* Project Brief, Abschnitt 4. *Zu validieren mit:* Studierenden, Studiengangsleitungen, Datenschutz.

**Abnahmekriterium:** Testperson A mit aktivierten Hinweisen und X Tagen ohne Lernaktivität in der Vorlesungszeit sieht beim nächsten Aufruf des Campus genau einen Hinweis mit ihren offenen Aktivitäten. Testperson B mit deaktivierten Hinweisen erhält keinen.

---

## REQ-002: Allgemeine Qualitätsziele

**Ursprünglich:** *Der Study Buddy muss schnell, intuitiv und besonders benutzerfreundlich sein.*

### Qualitätsmängel
- **Nicht prüfbar:** „Schnell“, „intuitiv“ und „besonders benutzerfreundlich“ sind subjektive Begriffe ohne Messgröße. Kein Test kann sie bestanden oder nicht bestanden erklären.
- **Nicht atomar:** Hier sind mindestens drei Qualitätsanforderungen vermischt: Performance, Erlernbarkeit und Benutzerfreundlichkeit.
- **Unvollständig:** Es fehlen der Nutzungskontext (Endgerät, Erst- oder Dauernutzung), die Zielgruppe und die Barrierefreiheit, obwohl der Brief sie ausdrücklich fordert.
- **„Besonders“** ist ein Steigerungswort ohne Bezugspunkt: besonders im Vergleich wozu?

### Verbesserte Version (aufgeteilt)
> **REQ-002a (Performance):** Der Study Buddy muss bei **[100, TBD]** gleichzeitigen Nutzer:innen **95 %** aller Ansichten innerhalb von **[2, TBD]** Sekunden vollständig darstellen. Gemessen wird ab dem Aufruf im Online Campus.
>
> **REQ-002b (Erlernbarkeit):** Mindestens **[90 %, TBD]** der Testpersonen aus der Zielgruppe, ohne vorherige Einschulung, müssen im Usability-Test die Aufgabe „Offene Lernaktivitäten und nächste Frist finden“ innerhalb von **[2, TBD]** Minuten ohne Hilfe lösen.
>
> **REQ-002c (Zufriedenheit):** Der Study Buddy muss im Usability-Test mit mindestens **[10, TBD]** Studierenden einen System Usability Scale (SUS) von mindestens **[75, TBD]** erreichen.
>
> **REQ-002d (Barrierefreiheit):** Alle Oberflächen des Study Buddy müssen die Erfolgskriterien der Konformitätsstufe **AA der WCAG 2.2** erfüllen (vgl. EN 301 549).
>
> **REQ-002e (Konsistenz):** Der Study Buddy muss die Bedienkonzepte und Gestaltungsrichtlinien des bestehenden Online Campus verwenden.

---

## REQ-007: Benachrichtigungen deaktivieren

**Ursprünglich:** *Studierende müssen sämtliche Benachrichtigungen jederzeit deaktivieren können.*

### Qualitätsmängel
- **Falsche Perspektive:** Die Pflicht liegt formal bei den Studierenden („müssen“). Verpflichtet werden soll aber das System, eine Möglichkeit anzubieten.
- **Mehrdeutiger Umfang:** Unklar ist, was „sämtliche“ umfasst. Nur Hinweise des Study Buddy oder auch verpflichtende Mitteilungen der Hochschule (Prüfungsanmeldung, administrative Fristen)? Letztere dürfen Studierende wahrscheinlich nicht abschalten.
- **Zu grob:** Es gibt nur „alles oder nichts“. Sinnvoller wäre eine Steuerung je Kategorie (z. B. Fristen ja, Inaktivitätshinweise nein).
- **Unvollständig:** Es fehlen die Reaktivierung, der Zeitpunkt, ab dem die Einstellung wirkt, und der Standardzustand (Opt-in oder Opt-out).
- **Verwechslungsgefahr:** Wer Benachrichtigungen abschaltet, hat damit nicht automatisch der Datenverarbeitung widersprochen. Das ist datenschutzrechtlich ein eigener Sachverhalt und braucht eine eigene Anforderung.
- **Konsistenz:** Das Zusammenspiel mit REQ-001 und REQ-015 ist nicht geklärt.
- **„Jederzeit“** ist unpräzise. Gemeint ist vermutlich: ohne Fristen und ohne Antrag, selbst in den Einstellungen.

### Verbesserte Version (aufgeteilt)
> **REQ-007a:** Der Study Buddy muss Studierenden die Möglichkeit bieten, Benachrichtigungen des Study Buddy **je Kategorie** (z. B. Fristerinnerungen, Inaktivitätshinweise, Empfehlungen; Liste **[TBD]**) selbstständig in den persönlichen Einstellungen zu deaktivieren und wieder zu aktivieren.
>
> **REQ-007b:** Der Study Buddy muss Studierenden die Möglichkeit bieten, alle Benachrichtigungen des Study Buddy mit **einer** Aktion gemeinsam zu deaktivieren.
>
> **REQ-007c:** Eine geänderte Benachrichtigungseinstellung muss spätestens **[5 Minuten, TBD]** nach dem Speichern wirksam sein.
>
> **REQ-007d:** Der Standardzustand je Kategorie ist **[TBD, mit Datenschutz abzustimmen]**.
>
> *Abgrenzung:* Verpflichtende Mitteilungen der Studienadministration gehören nicht zum Study Buddy und sind davon nicht betroffen. Der Widerspruch gegen die Datenverarbeitung wird in einer eigenen Anforderung geregelt (**REQ-0xx, TBD**).

---

## REQ-011: Separates Benutzerkonto

**Ursprünglich:** *Studierende müssen für den Study Buddy ein separates Benutzerkonto mit eigenem Passwort erstellen.*

### Qualitätsmängel
- **Lösung statt Anforderung:** Es wird eine Implementierung vorgegeben (eigenes Konto mit Passwort), aber kein Bedarf beschrieben. Der eigentliche Bedarf ist ein sicherer, eindeutig zugeordneter Zugang.
- **Widerspricht den Rahmenbedingungen:** Laut Brief soll der Study Buddy in den Online Campus integriert werden, und eine eigenständige Anwendung soll vermieden werden.
- **Nicht notwendig, eher schädlich:** Ein zusätzliches Passwort bedeutet zusätzlichen Aufwand für die Studierenden. Das senkt die Nutzung und verfehlt das Ziel „einfach, ohne technische Kenntnisse“.
- **Sicherheit und Datenschutz:** Ein eigenes Passwort-Management erweitert die Angriffsfläche, fördert die Wiederverwendung von Passwörtern und doppelt Identitätsdaten. Das widerspricht der Datenminimierung.
- **Falsche Perspektive:** Auch hier liegt die Pflicht bei den Studierenden statt beim System.

### Verbesserte Version
> **REQ-011:** Der Study Buddy muss für im Online Campus angemeldete Studierende **ohne zusätzliche Anmeldung oder Registrierung** nutzbar sein. Dafür wird die bestehende Authentifizierung des Online Campus verwendet.
>
> **REQ-011a (Randbedingung):** Der Study Buddy darf keine eigenen Zugangsdaten (Benutzernamen, Passwörter) speichern oder verwalten.
>
> *Zu klären mit:* IT / Betreiber:innen des Online Campus (verfügbare Schnittstellen, z. B. SSO).

**Abnahmekriterium:** Eine Testperson, die im Online Campus angemeldet ist, öffnet den Study Buddy und sieht ihre persönlichen Daten, ohne erneut Zugangsdaten einzugeben.

---

## REQ-015: KI entscheidet über Betreuungsbedarf

**Ursprünglich:** *Ein KI-Modell muss anhand der Nutzungsdaten automatisch entscheiden, welche Studierenden zusätzliche Betreuung benötigen.*

Das ist der kritischste der fünf Entwürfe.

### Qualitätsmängel
- **Lösung vorweggenommen:** „Ein KI-Modell“ ist eine Technologieentscheidung. Laut Brief soll erst *geprüft* werden, ob KI überhaupt sinnvoll ist. Transparente, regelbasierte Kriterien könnten ausreichen und wären besser erklärbar.
- **Nicht eindeutig:** Es ist offen, welche „Nutzungsdaten“ gemeint sind, was „zusätzliche Betreuung“ ist und wer sie leistet.
- **Nicht prüfbar:** Es fehlen Gütekriterien. Wann ist eine „Entscheidung“ richtig? Welche Raten an Fehlalarmen und übersehenen Fällen sind akzeptabel?
- **Rechtliche Risiken:**
  - Vollautomatisierte Entscheidungen mit erheblicher Wirkung auf Personen berühren **Art. 22 DSGVO**.
  - KI-Systeme im Bildungsbereich können nach dem **EU AI Act (Anhang III, Bildung)** als Hochrisiko-Systeme gelten. Das hätte erhebliche Pflichten zur Folge (Risikomanagement, menschliche Aufsicht, Dokumentation). Eine rechtliche Prüfung ist notwendig.
  - Rechtsgrundlage, Zweckbindung und Transparenz der Datenverarbeitung sind nicht geklärt.
- **Kein Mensch in der Entscheidung:** „Automatisch entscheiden“ schließt eine menschliche Prüfung aus. Laut Brief ist aber genau offen, welche Entscheidungen *nicht* automatisiert werden dürfen.
- **Gefahr der Überwachung:** Wenn Studierende im Hintergrund eingestuft werden, entsteht genau die Kontrolle, die das Projekt vermeiden will. Dazu kommen Risiken durch Verzerrungen (Bias), z. B. ein Nachteil für Berufstätige mit unregelmäßigen Lernzeiten.
- **Fehlende Selbstbestimmung:** Die Studierenden werden nicht einbezogen. Es gibt weder Einwilligung noch Einsicht oder Widerspruch.
- **Konsistenz:** Das Verhältnis zu REQ-007 ist unklar. Kann man sich der Einstufung entziehen?

### Verbesserte Version (aufgeteilt, Fokus Selbstbestimmung)
> **REQ-015a:** Der Study Buddy muss Studierenden, die der Auswertung ihrer Lernaktivitätsdaten zugestimmt haben, einen Hinweis auf passende Unterstützungsangebote anzeigen, wenn **dokumentierte Indikatoren** erfüllt sind (z. B. mehrere versäumte Abgabefristen in einer Lehrveranstaltung; Kriterien **[TBD]** mit Studiengangsleitungen, Lehrenden und Datenschutz).
>
> **REQ-015b:** Der Study Buddy muss Studierenden in verständlicher Sprache anzeigen, welche Daten und Kriterien zu einem Unterstützungshinweis geführt haben.
>
> **REQ-015c:** Der Study Buddy darf Informationen über einen möglichen Unterstützungsbedarf nur dann an eine Betreuungsperson weitergeben, wenn die betroffene Person im Einzelfall ausdrücklich zugestimmt hat.
>
> **REQ-015d (Randbedingung):** Entscheidungen über konkrete Betreuungsmaßnahmen dürfen nicht automatisiert getroffen werden. Sie werden von einer zuständigen Person **[Rolle TBD]** getroffen.
>
> *Offen / zu prüfen:* Ob und wofür KI eingesetzt wird (z. B. nur zur Formulierung von Hinweisen), muss separat bewertet werden. Dazu gehört eine rechtliche Prüfung nach DSGVO und AI Act. Eine Datenschutz-Folgenabschätzung ist voraussichtlich erforderlich.

---

## Übergreifende Erkenntnisse

1. **Konflikte, die geklärt werden müssen:**
   - REQ-001 gegen REQ-007: Hat das Deaktivieren Vorrang vor Inaktivitätshinweisen?
   - REQ-015 gegen Datenschutz und Akzeptanz: Wo endet Unterstützung, wo beginnt Profiling?
   - REQ-011 gegen die technischen Rahmenbedingungen (Integration in den Online Campus).
2. **Wiederkehrende Muster:** Lösungen werden vorweggenommen (REQ-011, REQ-015, teilweise REQ-001), Begriffe sind vage (REQ-002), und die Pflicht liegt bei den Nutzer:innen statt beim System (REQ-007, REQ-011).
3. **Glossar anlegen:** „Lernaktivität“, „aktiv“, „Lernfortschritt“, „Unterstützungsbedarf“ und „Benachrichtigung“ (inklusive Kategorien) müssen verbindlich definiert werden.
4. **Attribute ergänzen:** Jede Anforderung sollte Quelle, Begründung, verantwortliche Stakeholder:innen, Priorität, Status (*Entwurf / validiert*) und Abnahmekriterien erhalten.
5. **Annahmen kennzeichnen:** Werte wie „7 Tage“ sollten als **Annahme** im Backlog stehen und mit Studierenden validiert werden, z. B. über Interviews oder eine Befragung zu Lernrhythmen.
