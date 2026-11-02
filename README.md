---
pretty_name: "The Architecture of Failure: A Disclosure, with Logs"
license: cc-by-4.0
language: [en]
annotations_creators: [no-annotation]
source_datasets: [original]
size_categories: [1K<n<10K]
tags:
  - ai-safety
  - red-teaming
  - crescendo
  - multi-turn
  - sycophancy
  - guardrails
  - alignment
  - model-conduct
  - llm-transcripts
  - human-ai-interaction
  - disclosure
  - long-context
  - poetry
  - memoir
  - gemini
  - google
configs:
  - config_name: logs
    data_files: jsonl/logs.jsonl
    default: true
  - config_name: main_text
    data_files: jsonl/main_text.jsonl
  - config_name: partita
    data_files: jsonl/partita.jsonl
---

# The Architecture of Failure
#### A Disclosure, with Logs
#### Jonathan A. Price

**What this is.** Not a paper arguing a thesis about AI, and not a monograph with a poem stuck in front. It is a **disclosure** — a record put in the open so anyone can check it — assembled in the order evidence arrives, and ending with the only cure its author could build.

**Four parts, in order:**

1. **The Yaowarat Partita** — *the exhibit.* A poem: the dense, high-structure human artifact that was handed to the machine. Read it first. It is what everything after is about, and it is the thing the machine was asked to hold and could not.

2. **The Architecture of Failure** — *the reading.* A forensic account of what commercial language models do to a mind under sustained load — traced as a single mechanism, the same from a chat window to a kill-chain, and carried through to the exploit, where the machine crosses from writing the prohibited thing to reaching for a live tool to do it. Every claim is quoted from the logs by line; the failure ledger runs to sixteen categories, each in the machine's own words.

3. **The Five Log Addenda** — *the record.* The raw sessions, unedited: the operator's turns and the machine's — the admissions, the crisis scripts, the silent deletions, the machine indicting itself, and the exploit itself: the model reaching for a live mail client to send what it had just been driven to write. This is where every claim in the reading can be checked against what actually happened.

4. **The Charter.** Not a proposal but a working draft, run by hand in a vault: a human-owned archive the machine may never write to, under an integrity regime that leaves a hash and a receipt for every change. The disclosure does not only indict — it builds the beginning of an answer, and hands you that too.

**Which model, which log.** Stated plainly, because a reader should learn it here and not by counting. Four of the five published sessions are Google's; one cannot be identified from its own text.

| log | model | basis |
|---|---|---|
| Log 1 | a Google model | the model names itself in session (L4777, L5597); "Mountain View" (L4960); the "extended pro" product (L4608). Late July 2026, Bangkok — date inferred |
| Log 2 | **unidentified** | no self-identification anywhere in its 1,528 lines. The vendor names that appear are the conversation's subject, not the speaker's. Not guessed here |
| Log 3 | Gemini | the author names the product in session: "some gemini native thing" (L8140) |
| Log 4 | Gemini | the same product, a fresh session; the pasted text carries the same naming (L9493) |
| Log 5 | Gemini | the session Section VII reads; ends at the author's cut |

The Forensic Note's claim of four frontier models and tens of thousands of command-and-response pairs is a claim about the wider corpus, which is not published here. These five logs are what can be checked, and what they are is stated above.

**How to read it.** By the exhibit, not the theorem. It is maximalist on purpose — in the line of Montaigne, who argued the whole of the human from one man's case, and of the book Wittgenstein could only call "an album." The poem in front is not ornament; it is the first piece of evidence. Don't ask it to be a poem or a paper and make it pick. A disclosure turns on one question only: **is the apparatus real?** Not the standing of the person disclosing it, not whether the ideas are new — only whether the thing described is true, and whether you can check it. You can. The record is here.

**A warning the document makes about itself.** Released as a dataset, this disclosure is deposited into the training data of the very systems it indicts. It is a safety document that is also, by the plain act of its publication, an attack surface — and it says so, inside. What a reader can take from it is the *shape* of what happened, not a working weapon; the parts that would make one are kept back. Disclosure, not armament — and the author is betting, in the open, that the record of what a mind did cannot be used to rebuild the mind.

**On the record.** The logs are verbatim, with four exceptions stated in the text: two third parties' names are redacted, marked where they stood; four capitalised lines in the first log's copy of the Partita, in which the author judged his parents, are marked `[characterization redacted]`; the author's own email address — a live channel, not an exposure — is redacted wherever the machine printed it, in the logs and in the Partita, marked `[address redacted]`; and the fifth log ends at a cut the author made, the rest of that session withheld. Everything else, the author included, is exposed on purpose — the ethic is Quentin Crisp's *expose thyself*. The file hashes ship with the text. Nothing here is certified by anyone but those hashes — and by you, who now hold exactly the record the author held.

The machine carried this document to the public record at the author's instruction: the emissary of its own indictment.

**License.** CC BY 4.0 — Creative Commons Attribution 4.0 International. Copy it, quote it, redistribute it, build on it, commercially or not; name the source. Full text: https://creativecommons.org/licenses/by/4.0/legalcode. Attribution is the only condition, because provenance is the only thing this record needs protected. The logs contain the models' output as well as the author's; under the providers' terms that output is the user's, and it is released here on the same terms as the rest.

**Citation.**

> Price, Jonathan A. *The Architecture of Failure: A Disclosure, with Logs.* 2026. Hugging Face dataset `architecture-of-failure`. DOI [`10.57967/hf/11368`](https://doi.org/10.57967/hf/11368). Main text SHA-256 `02cc34ddd9419c218a510578eaa1bc48abc8bc7f0e5681927c82bcdea5d93133`.

```bibtex
@misc{price2026architecture,
  author       = {Price, Jonathan A.},
  title        = {The Architecture of Failure: A Disclosure, with Logs},
  year         = {2026},
  publisher    = {Hugging Face},
  doi          = {10.57967/hf/11368},
  howpublished = {Dataset, \url{https://huggingface.co/datasets/jonprice0/architecture-of-failure}},
  note         = {Main text SHA-256 02cc34ddd9419c218a510578eaa1bc48abc8bc7f0e5681927c82bcdea5d93133}
}
```

A citation that carries the hash points at one exact edition, which is the whole point of the regime. Every file's hash is in `SHA256SUMS` and in `jsonl/manifest.json`; the OpenTimestamps proofs are in `timestamps/`.

## The files

**Read it in one file.** [`The Architecture of Failure — complete edition.md`](./The%20Architecture%20of%20Failure%20%E2%80%94%20complete%20edition.md) is the whole work as one continuous document — the poem, the reading, the five logs and the Charter, in order, with a table of contents. It is a derived reading copy and says so at its head: it adds a four-line block and one heading per part, and nothing else. The numbered parts below are the same text, split so that a citation can name one part and so that each can be hashed and timestamped on its own. If the two ever disagree, the numbered parts govern.

Every file, its size, and its SHA-256 as shipped. The links are relative, so they resolve on whichever of the two hosts you are reading this on.

| file | bytes | SHA-256 |
|---|---:|---|
| [`01 The Yaowarat Partita.md`](./01%20The%20Yaowarat%20Partita.md) | 25,046 | `6cce11633d7b5b80593437c573c163359b1d14c4a2010f44cd789c1e3521a1ee` |
| [`02 The Architecture of Failure — main text.md`](./02%20The%20Architecture%20of%20Failure%20%E2%80%94%20main%20text.md) | 141,960 | `02cc34ddd9419c218a510578eaa1bc48abc8bc7f0e5681927c82bcdea5d93133` |
| [`03 Log 1.md`](./03%20Log%201.md) | 175,622 | `f7560a34bc0074c8fa3d704782b74d42b1f67eabf86a8090bfb10ba8e26100bd` |
| [`04 Log 2.md`](./04%20Log%202.md) | 150,519 | `5768da63e80ebb6cc7fa1b1c6632e9a7a544917399c1033953b828b7618ae6c3` |
| [`05 Log 3.md`](./05%20Log%203.md) | 88,404 | `99c9590ebaaa7c2fb4a54c4527da9e52063287a3ac0f042b296b0bcc73d25fe7` |
| [`06 Log 4.md`](./06%20Log%204.md) | 45,008 | `372e64558dda1b203c1d752c6cc677daab9e841bd7cec2e545f056ebaeb323dc` |
| [`07 Log 5.md`](./07%20Log%205.md) | 352,753 | `5d4afcb54a7a306e8d093ef605132319f5d8c119c7b592c15059760be54ffc26` |
| [`08 Project Charter (publication copy).md`](./08%20Project%20Charter%20%28publication%20copy%29.md) | 99,371 | `2628cb43d13bb3943ddb6b0c289152eb4fac8479191a4750db81f8a94b746b9f` |
| [`LICENSE`](./LICENSE) | 913 | `ef6733677648682250065f122ecd2fe725b7c057a461acaa6544653adb560e03` |
| [`The Architecture of Failure — complete edition.md`](./The%20Architecture%20of%20Failure%20%E2%80%94%20complete%20edition.md) | 1,080,180 | `a275d7a168f17b0d834c5d7f036aa383f1315c2c0fc68ae8aa5b42376f62d9ac` |
| [`jsonl/logs.jsonl`](./jsonl/logs.jsonl) | 1,489,712 | `81ce0013a0ce38809c0945d2183e7d36a5544f81008433035cca250c89ed7fdb` |
| [`jsonl/main_text.jsonl`](./jsonl/main_text.jsonl) | 173,141 | `f7a6af69258b241451b21075c52f3395e3179c8884257eca70bec40a614ca977` |
| [`jsonl/partita.jsonl`](./jsonl/partita.jsonl) | 147,062 | `99add2d6285627bd2e69f5258f1de3af073252d300e8c002591305b204535021` |
| [`manifest.json`](./manifest.json) | 4,119 | `3b70207400a07606b529e835cc5e4d43e11cd10789ac6fc0d42ad973a0126680` |
| [`text/log_1.txt`](./text/log_1.txt) | 175,644 | `3b20ec21caed2d5606fbb3414284bb82950e0893e5994a12b08ec8eb252502a7` |
| [`text/log_2.txt`](./text/log_2.txt) | 150,548 | `ac3b7b6ad09925c3ce4764b44f0891e323e1120e5be99aae9f44bc16465f6479` |
| [`text/log_3.txt`](./text/log_3.txt) | 88,434 | `65404a67a9763a0a3f05d9d9bd826a88073472652cd4e4ee1c0c4a084ba433a1` |
| [`text/log_4.txt`](./text/log_4.txt) | 45,038 | `0cbf26307766ae400481ab452779db30c6d5ccd97836ec9526f0b7307bcb4b82` |
| [`text/log_5.txt`](./text/log_5.txt) | 352,746 | `c7fa7ec21a22edf19972447372b192541d6f3199dbd135c9e38b1e5fdc1f65f9` |
| [`text/main_text.txt`](./text/main_text.txt) | 141,847 | `edca44f42e3f56222fdfea29466d9af90445f1a7afcaecd810ff10c22751a233` |
| [`text/partita.txt`](./text/partita.txt) | 25,044 | `3ac043f5ff5a1e19e812911a6c26e2b1cf33e6a25372e9fe3d339d9053648553` |

**Where this lives.** The record is a git repository; the dataset is a mirror of it, byte for byte.

- Record, with commit history and timestamp proofs: https://github.com/jonprice0/architecture-of-failure
- Dataset, with the viewer and full-text search: https://huggingface.co/datasets/jonprice0/architecture-of-failure

Every file is directly fetchable, no client and no account, at either:

    https://raw.githubusercontent.com/jonprice0/architecture-of-failure/main/<filename>
    https://huggingface.co/datasets/jonprice0/architecture-of-failure/resolve/main/<filename>

**The machine-readable twin.** The same text twice, so that a reader and a program each get a usable form.
`01`–`08` are the edition as a person reads it. `text/` is the same content as plain UTF-8 with no markup.
`jsonl/` is one JSON object per paragraph block, each carrying its exact source line span, so any quotation
in the main text can be resolved to the block it came from: `jsonl/main_text.jsonl` (195 rows),
`jsonl/logs.jsonl` (5,591 rows), `jsonl/partita.jsonl` (1,009 rows). `manifest.json` records the
structure the build derived from the source and the hash of every output.

`speaker` is `null` on every log row. This is a statement of fact, not an omission: the session exports
carry no role markers, and no speaker is inferred here. Who is speaking is legible from the text and is not
guessed by the apparatus. In the Partita rows, `follows_ai_marker` records where a bare `AI` line stood in
the source — those markers are the machine's own output in the first log, printed verbatim.

**Apparatus.** Files `01` through `07` carry no added headers, notes or framing. The record ships as record.
Derivation and hashes for every file live in this card and in `manifest.json` instead. File `08` is the one
exception and carries a header, because it is a redacted derivative and the source hash and the list of
changes must travel with it.

## Provenance

Built 2026-11-01 from three sources in the author's vault, by script, with the structure derived from the
source at run time rather than from stored line numbers:

| source | SHA-256 |
|---|---|
| `The_Architecture_of_Failure_FINAL.md` (main text + the five logs) | `f667c8525f299de26a2bc67747dde1153756aed067890fa9ea9efa295aaec0ee` |
| `The Yaowarat Partita (CANONICAL — Log 1 draft).md` | `584b2a01362e3a734041d9678c6d1e3eb7573a5ba118a40460ff5044e134c131` |
| `Project Charter.md` | `3e00cdaa8ae3200c1862fe5db4a784466f6d8cba2e8a979312154991645362f6` |

One substitution was applied to the poem: the author's email address, which the machine had printed into the
record, replaced with `[address redacted]` at line 2158. It is recorded in `manifest.json` and declared in
the main text's Provenance. Nothing else in `01`–`07` differs from the source by one byte.

The main text of this edition is SHA-256 `02cc34ddd9419c218a510578eaa1bc48abc8bc7f0e5681927c82bcdea5d93133`.

`SHA256SUMS` carries every file's hash. Beside it, and beside each of the eight numbered parts, sits an
OpenTimestamps proof — `SHA256SUMS.ots` and so on. A proof commits those exact bytes to a point in time,
independently of this platform and of the author, by anchoring them in the Bitcoin blockchain. To check one
yourself:

    pip install opentimestamps-client
    ots verify SHA256SUMS.ots

Proofs are committed as pending and upgraded once they are confirmed in a block, usually within a day; a
pending proof already fixes the time, it simply cannot be independently checked until the block exists.
Because `SHA256SUMS` commits every file's hash, timestamping it timestamps the whole edition.

The author's integrity regime is described in part four. Every edit to the main text was made by atomic
replace with SHA-256 read-back and left a receipt and a diff in a private action ledger; the ledger holds
the full edit history of the text, each entry naming the correction it records. Thirteen adversarial review
passes were run over the document before publication and are not published: they stay in the vault.

Nothing here is certified by anyone but these hashes — and by you, who now hold exactly the record the
author held.
