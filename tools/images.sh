#!/usr/bin/env bash
# Remakes the guide's pictures with Solrac's headless renderer (`solrac --render`), so they can
# be made again whenever the look changes. Never edit a picture by hand.
#
#   tools/images.sh /path/to/solrac
#
# Runs under a scratch HOME, so the pictures show a fresh install, not anyone's settings.
set -euo pipefail
solrac=${1:?usage: tools/images.sh /path/to/solrac}
out="$(cd "$(dirname "$0")/.." && pwd)/book/src/images"
mkdir -p "$out"
home=$(mktemp -d)
trap 'rm -rf "$home"' EXIT
r() { # name, args...
  local name=$1; shift
  HOME="$home" "$solrac" --render "$out/$name.png" --size 1600x1000 "$@"
}
italian="e4 e5 Nf3 Nc6 Bc4 Bc5 c3 Nf6 d4 exd4"
r board-start
r board-game --moves "$italian"
r board-panel --moves "$italian" --panel
r engine-thinking --moves "$italian" --thinking
r games-library --games
r backups --backups
for tab in game chess-set avatar display lights sounds; do
  r "preferences-$tab" --panel --preferences "$tab"
done
# The Network, Licence and Account tabs need a real network, licence and account, which the
# headless renderer has none of: their pictures are window screenshots.
