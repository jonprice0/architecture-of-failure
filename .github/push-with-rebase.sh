#!/usr/bin/env bash
# Pushes this job's commit to main, rebasing onto anything that landed while
# the job was running.
#
# Why this exists: three workflows commit to main, and the archive pass takes
# about a quarter of an hour. On 2 November the archive run saved twenty-one
# snapshots, wrote the file, committed it — and then lost the push to commits
# that had landed meanwhile. The work had succeeded and the run was reported
# as a failure, with the result discarded. Losing completed evidence to a race
# is the same class of defect as reporting evidence that does not exist.
#
# Machinery, not record: nothing under .github/ is covered by SHA256SUMS.
set -uo pipefail

for attempt in 1 2 3 4; do
  if git push origin HEAD:main; then
    [ "$attempt" -gt 1 ] && echo "pushed on attempt $attempt"
    exit 0
  fi
  echo "push rejected; rebasing onto origin/main (attempt ${attempt})"
  git fetch origin main || true
  if ! git rebase FETCH_HEAD; then
    git rebase --abort || true
    echo "::warning::rebase failed on attempt ${attempt}"
  fi
  sleep $((attempt * 3))
done

echo "::error::could not push after 4 attempts; this job's commit was not published"
exit 1
