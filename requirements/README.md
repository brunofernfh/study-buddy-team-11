# Requirements – Abgabe D3: Anforderungsqualitätsprüfung

Mission: 15 verdächtige Anforderungsentwürfe untersuchen, Qualitätsmängel identifizieren, Requirements verbessern und gegen eine generative KI antreten.

| Datei | Inhalt | Teil |
|---|---|---|
| [quality-review.md](quality-review.md) | Qualitätsanalyse aller 15 Requirements: Qualitätsaspekt, Kriterium, Fehlerbeschreibung, Konsequenz, fehlende Informationen, Widersprüche (K1–K13) | Teil 2 |
| [repaired-requirements.md](repaired-requirements.md) | 7 Überarbeitungen mit den Strategien REWRITE / INVESTIGATE / RECONSIDER | Teil 3 |
| [human-vs-ai.md](human-vs-ai.md) | 5 Vergleiche Human vs. KI: Prompt, Modell, Bewertungsraster mit Begründung, Reflexion | Teil 4 (Runde 1–3), Teil 5 |
| [ai-version-raw.md](ai-version-raw.md) | Unveränderte KI-Ausgabe aus Runde 2 (Suggested AI Prompt aus Moodle) | Teil 4 (Runde 2) |
| [ai-version-neutral-prompt.md](ai-version-neutral-prompt.md) | Zusatzexperiment: unveränderte KI-Ausgabe mit neutralem Prompt (nicht bewertet) | Teil 4 / Teil 5 |
| [final-requirements.md](final-requirements.md) | 5 finale Fassungen bzw. begründete offene Entscheidungen mit dokumentierten Annahmen | Teil 4 (Runde 4) |

Neue offene Fragen aus dieser Mission: `QUESTION-011` bis `QUESTION-015` in [`/elicitation/06-offene-fragen.md`](../elicitation/06-offene-fragen.md).

## Ergebnis auf einen Blick

- **Keine** der 15 Anforderungen ist in der vorliegenden Form abnahmefähig.
- Die größten Risiken entstehen durch die **Kombination** von REQ-004, REQ-006, REQ-009 und REQ-015: Zusammen ergäben sie ein automatisiertes Profiling- und Überwachungssystem.
- **Human vs. KI:** 102 : 106 Punkte. Die KI war gründlicher bei Vollständigkeit und Überprüfbarkeit, das Team lag bei Abstimmung und Konflikten vorne, weil es den Kontext kannte (REQ-008, Plot Twist).
- **Zusatzexperiment:** Mit einem neutralen Prompt hat dasselbe Modell zahlreiche Werte und Entscheidungen erfunden und keine Anforderung zurückgestellt. Der Prompt beeinflusst die Qualität stark.

## Status

`PHASE: Discovery` · `REQUIREMENTS: 5 finale Fassungen, davon 1 übernommen, 3 offen/bedingt, 1 zurückgestellt` · `FRAGEN: 15 offen`
