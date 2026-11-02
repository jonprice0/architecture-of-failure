#!/usr/bin/env bash
# Fails loudly when any OpenTimestamps proof does not describe the file beside
# it, when a part of the record that should be proved has no proof, or when a
# proof has been orphaned by a rename.
#
# Why this exists: a stale proof is worse than no proof, because it reads as
# evidence. Twice the maintainer discovered a stale proof by hand, after it had
# already been pushed, and both times the handoff recorded that catching it
# should be the machine's job rather than a person's memory. This is that job.
#
# Machinery, not record: nothing under .github/ is covered by SHA256SUMS.
set -uo pipefail
cd "$(dirname "$0")/.."

# The proved units are the eight numbered parts, the manifest, and the derived
# continuous reading copy. The parts govern; see the card's Provenance.
PROVED=(
  "SHA256SUMS"
  "The Architecture of Failure — complete edition.md"
  "01 The Yaowarat Partita.md"
  "02 The Architecture of Failure — main text.md"
  "03 Log 1.md"
  "04 Log 2.md"
  "05 Log 3.md"
  "06 Log 4.md"
  "07 Log 5.md"
  "08 Project Charter (publication copy).md"
)

fail=0
pending=0
attested=0

for f in "${PROVED[@]}"; do
  if [ ! -f "$f" ]; then
    echo "::error::target missing: $f"; fail=1; continue
  fi
  if [ ! -f "$f.ots" ]; then
    echo "::error::no proof for: $f"; fail=1; continue
  fi
  claimed=$(ots info "$f.ots" 2>/dev/null | sed -n 's/^File sha256 hash: //p')
  actual=$(sha256sum "$f" | cut -d' ' -f1)
  if [ -z "$claimed" ]; then
    echo "::error::unreadable proof: $f.ots"; fail=1; continue
  fi
  if [ "$claimed" != "$actual" ]; then
    echo "::error::STALE PROOF — $f.ots attests $claimed but the file is $actual"
    fail=1; continue
  fi
  block=$(ots info "$f.ots" 2>/dev/null \
          | grep -oE 'BitcoinBlockHeaderAttestation\([0-9]+\)' | head -1)
  if [ -n "$block" ]; then
    attested=$((attested+1)); printf 'ok       %-52.52s %s\n' "$f" "$block"
  else
    pending=$((pending+1));  printf 'ok       %-52.52s pending\n' "$f"
  fi
done

# An orphan proof means something was renamed out from under its evidence.
for p in ./*.ots; do
  [ -e "$p" ] || continue
  t="${p%.ots}"
  if [ ! -f "$t" ]; then
    echo "::error::orphan proof, no such target: $p"; fail=1
  fi
done

if [ "$fail" -ne 0 ]; then
  echo "::error::PROOF VERIFICATION FAILED. A stale or missing proof reads as evidence; fix it before anything is announced."
  exit 1
fi

echo "all ${#PROVED[@]} proofs describe the files beside them — ${attested} Bitcoin-attested, ${pending} pending"
