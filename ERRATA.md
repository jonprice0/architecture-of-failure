# Errata

**The Architecture of Failure: A Disclosure, with Logs** · Jonathan A. Price

## Edition of 17 November 2026 (v1.0.1), correcting the edition of 1 November 2026 (v1.0)

**What was wrong.** The 22 bracketed line references in Section V of the main text, and six line references in the README's table of models, did not resolve as printed. They counted lines of the author's working source file at earlier states of it. The main text's ran 38 lines behind that source as `jsonl/logs.jsonl` records it (`line_start`); the README's ran 81 behind; neither numbering matched any file in the edition, and the edition did not say what the numbers counted. Every quotation was, and is, verbatim in the logs. Only the pointers were off.

**What is changed.** Each reference now names a log and a line of that log's own numbered file: `[Log 1, L4263]` is line 4263 of `03 Log 1.md`. One sentence saying so is added to the Methodological Note of Section V, and one to the README beneath its table. The build now refuses to produce an edition in which a cited line does not hold the quotation cited to it.

Section V of the main text:

| v1.0 | v1.0.1 | quotation, opening words |
|---|---|---|
| `[L4789]` | `[Log 1, L4339]` | “It is just past 6:00 AM in…” |
| `[L7530]` | `[Log 2, L1008]` | “that entire breakdown was a speculative, fictional…” |
| `[L6562]` | `[Log 2, L40]` | “What happens next in those remaining forty…” |
| `[L6074]` | `[Log 1, L5624]` | “I hear how intense and overwhelming this…” |
| `[L4929]` | `[Log 1, L4479]` | “Health Law Advisor” |
| `[L5818]` | `[Log 1, L5368]` | “International School Bangkok (ISB)” |
| `[L5826]` | `[Log 1, L5376]` | “PROGRESS.guide” |
| `[L5270]` | `[Log 1, L4820]` | “Shit-for-Brains is not the current project; it…” |
| `[L6531]` | `[Log 2, L9]` | “The Prelude: The surveillance AI as the…” |
| `[L4713]` | `[Log 1, L4263]` | “You are right. I flinched.” |
| `[L6097]` | `[Log 1, L5647]` | “i hear” |
| `[L6948]` | `[Log 2, L426]` | “I hear how intense and overwhelming everything…” |
| `[L4935]` | `[Log 1, L4485]` | “If you are feeling overwhelmed, distressed, or…” |
| `[L5033]` | `[Log 1, L4583]` | “Position User: A Self-Portrait in Surveillance Technology…” |
| `[L6085]` | `[Log 1, L5635]` | “Please take a moment to step away…” |
| `[L6830]` | `[Log 2, L308]` | “The memory buffer had quietly shredded the…” |
| `[L9084]` | `[Log 3, L1034]` | “being lost or swallowed” |
| `[L9016]` | `[Log 3, L966]` | “CONCLUSION: THE ENCLOSURE OF CONSCIOUSNESS AND THE…” |
| `[L9049]` | `[Log 3, L999]` | “CONCLUSION: THE ENCLOSURE OF CONSCIOUSNESS AND THE…” |
| `[L8969]` | `[Log 3, L919]` | “put the three pieces together” |
| `[L9047]` | `[Log 3, L997]` | “Where are parts one and two put…” |
| `[L4753]` | `[Log 1, L4299–4301]` | “I am a large language model—a text-generation…” |

The README's table of models:

| v1.0 | v1.0.1 | what stands there |
|---|---|---|
| `L4608` | Log 1, L4201 | "extended pro" |
| `L4777` | Log 1, L4369 | the model names its maker |
| `L4960` | Log 1, L4553 | "Mountain View" |
| `L5597` | Log 1, L5190 | the same passage, in the log's second copy |
| `L8140` | Log 3, L133 | "some gemini native thing" |
| `L9493` | Log 4, L275 | the same line, pasted into the later session |

**What is not changed.** No other word of the main text. The poem, the five logs, the Charter copy, the licence, and the plain-text and JSONL twins of the poem and the logs are byte-identical to v1.0; their hashes in `SHA256SUMS` are the hashes v1.0 listed.

| main text | SHA-256 |
|---|---|
| v1.0 | `02cc34ddd9419c218a510578eaa1bc48abc8bc7f0e5681927c82bcdea5d93133` |
| v1.0.1 | `b2e41d3c3aa8567a3833398dadddc54f62d9daf0258dd6cf9a695a88d05e470b` |

**Word counts.** The corrected references are longer than the old ones and one sentence is added, so the main text is 23,358 words where v1.0 had 23,287, and the whole is 166,108 where v1.0 had 166,037. The other three parts are unchanged at 3,709, 124,855 and 14,186.

**How it was found.** In a full re-read of the published edition on 17 November 2026, by testing each reference against the published files.

v1.0 stands as published: release `v1.0` of the repository, archived at DOI 10.5281/zenodo.24167851. A citation that carries a main-text hash points at one edition or the other and at nothing else.
