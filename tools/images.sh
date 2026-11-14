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
r window --panel
r board-game --moves "$italian"
r board-panel --moves "$italian" --panel
r engine-thinking --moves "$italian" --thinking
r panel-clock --panel --moves "e4 e5" --clock-shows 4:32,0:08,white
r rail-captions --panel --captions
r games-library --games
r backups --backups
for tab in game chess-set avatar display lights sounds; do
  r "preferences-$tab" --panel --preferences "$tab"
done
r preferences-chess-set-2d --panel --preferences chess-set --main-view 2d --background forest
# The Licence, Network and Account tabs, and the windows over the board, are drawn from sample
# data (made up: no real network, licence or account), so they are remade like the rest.
r preferences-licence --panel --preferences licence
r preferences-network --panel --preferences network
r preferences-account --panel --preferences account
r new-game --panel --new-game
r game-over --panel --moves "e4 e5 Bc4 Nc6 Qh5 Nf6 Qxf7"
r draw-offer --panel --draw-offer --moves "e4 e5 Nf3 Nc6"
r promote --panel --promote --fen "4k3/1P6/8/8/8/8/8/4K3 w - - 0 1"
r menu-file --panel --menu file
r chat-history --panel --history
r engine-mind --mind --moves "e4 e5 Nf3 Nc6" --mind-time 8 --mind-move 2
