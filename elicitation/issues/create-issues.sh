#!/usr/bin/env bash
# Legt alle Elicitation-Issues im Team-Repository an.
# Voraussetzung: GitHub CLI (gh) installiert und angemeldet (gh auth login).
set -euo pipefail
REPO="brunofernfh/study-buddy-team-11"
gh label create question --repo "$REPO" --color 1d76db --description "Offene Frage an Stakeholder*innen" 2>/dev/null || true
gh label create assumption --repo "$REPO" --color fbca04 --description "Nicht validierte Annahme" 2>/dev/null || true
gh label create elicitation --repo "$REPO" --color 5319e7 --description "Mission Elicitation" 2>/dev/null || true
DIR="$(cd "$(dirname "$0")" && pwd)"
gh issue create --repo "$REPO" --title "QUESTION-001 – Was bedeutet „Inaktivität“? (Kein Login? Keine bearbeitete Lernaktivität? Kein Download?)" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-001.md")
gh issue create --repo "$REPO" --title "QUESTION-002 – Welche Learning-Analytics-Daten sind im Online Campus tatsächlich verfügbar – in welcher Granularität und Qualität?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-002.md")
gh issue create --repo "$REPO" --title "QUESTION-003 – Was bedeutet „Lernfortschritt“ – aus Sicht der Studierenden, der Lehrenden und des Systems?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-003.md")
gh issue create --repo "$REPO" --title "QUESTION-004 – Für welche Zwecke dürfen Aktivitäts- und Lerndaten verarbeitet werden, und auf welcher Rechtsgrundlage?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-004.md")
gh issue create --repo "$REPO" --title "QUESTION-005 – Müssen Studierende einzelne Funktionen (z. B. Hinweise, Datenauswertung) selbst aktivieren/deaktivieren können?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-005.md")
gh issue create --repo "$REPO" --title "QUESTION-006 – Darf eine automatisch erzeugte Einschätzung ohne Zustimmung der Studierenden an Hochschulpersonal weitergegeben werden?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-006.md")
gh issue create --repo "$REPO" --title "QUESTION-007 – Welche Benachrichtigungsfunktionen und Schnittstellen bietet der Online Campus bereits?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-007.md")
gh issue create --repo "$REPO" --title "QUESTION-008 – Welche Unterstützungsangebote (Beratung, Tutoring, Ansprechpersonen) existieren, an die vermittelt werden könnte – und wer betreut sie?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-008.md")
gh issue create --repo "$REPO" --title "QUESTION-009 – Gibt es einen definierten „erwarteten Lernverlauf“ pro Lehrveranstaltung oder Studiengang?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-009.md")
gh issue create --repo "$REPO" --title "QUESTION-010 – Welche Anforderungen an Barrierefreiheit gelten (z. B. WCAG, Web-Zugänglichkeitsgesetz) und welche Bedürfnisse haben betroffene Studierende?" --label question --label elicitation --body-file <(tail -n +3 "$DIR/QUESTION-010.md")
gh issue create --repo "$REPO" --title "ASSUMPTION-001 – Fehlende Aktivität im Online Campus deutet auf Unterstützungsbedarf hin" --label assumption --label elicitation --body-file <(tail -n +3 "$DIR/ASSUMPTION-001.md")
gh issue create --repo "$REPO" --title "ASSUMPTION-002 – Studierende wünschen proaktive Erinnerungen" --label assumption --label elicitation --body-file <(tail -n +3 "$DIR/ASSUMPTION-002.md")
gh issue create --repo "$REPO" --title "ASSUMPTION-003 – Ein einheitlicher Schwellenwert (z. B. 7 Tage) passt für alle Studierenden und Lehrveranstaltungen" --label assumption --label elicitation --body-file <(tail -n +3 "$DIR/ASSUMPTION-003.md")
gh issue create --repo "$REPO" --title "ASSUMPTION-004 – „Lernfortschritt“ bzw. „Lernrückstand“ lässt sich aus Online-Campus-Daten zuverlässig ableiten" --label assumption --label elicitation --body-file <(tail -n +3 "$DIR/ASSUMPTION-004.md")
gh issue create --repo "$REPO" --title "ASSUMPTION-005 – Die Studiengangsleitung ist die richtige Stelle, um bei Unterstützungsbedarf informiert zu werden – und kann reagieren" --label assumption --label elicitation --body-file <(tail -n +3 "$DIR/ASSUMPTION-005.md")
gh issue create --repo "$REPO" --title "ASSUMPTION-006 – Studierende akzeptieren die Auswertung ihrer Aktivitätsdaten, wenn sie dem eigenen Nutzen dient" --label assumption --label elicitation --body-file <(tail -n +3 "$DIR/ASSUMPTION-006.md")
gh issue create --repo "$REPO" --title "ASSUMPTION-007 – Das Kernproblem liegt bei fehlendem Überblick der Studierenden – nicht z. B. bei unklaren Fristen, Arbeitslast oder Kursdesign" --label assumption --label elicitation --body-file <(tail -n +3 "$DIR/ASSUMPTION-007.md")
