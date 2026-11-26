# Licence, credits and notices

## Solrac's licence

Solrac and this guide are © 2026 PNXStudios LLC, all rights reserved. One licence key works on three machines
(see [Getting started](getting-started.md)).

## Open modules

Solrac talks to separate open-source programs through an open protocol:

- **cb2026**, the chess engine and its rules library, `MIT OR Apache-2.0`:
  [cjus/chessengine](https://github.com/cjus/chessengine).
- **The Chess Node Protocol** they speak: specification CC-BY-4.0, code `MIT OR Apache-2.0`.
- **The voice** (speech and transcription on your Mac) is its own program, GPL-3.0 as a whole
  because it links eSpeak NG.

## The Solrac collection

The Solrac collection of games, which the Opening Explorer shows, and the Solrac collection of
puzzles, which the puzzle trainer uses, come from these sources:

- **Ana Schaigorodsky (2016). Chess Database. figshare.**
  [doi.org/10.6084/m9.figshare.4276523.v1](https://doi.org/10.6084/m9.figshare.4276523.v1).
  Licensed under the Creative Commons Attribution 4.0 International licence (CC BY 4.0,
  [creativecommons.org/licenses/by/4.0](https://creativecommons.org/licenses/by/4.0/)).
  Solrac changed it: the text was converted to one encoding, the games were checked and
  filtered, duplicates were removed, and details worked out from the games were added to them.
- **Lichess** ([database.lichess.org](https://database.lichess.org/)): games and puzzles,
  given to the public domain (CC0).

The opening names come from Lichess's list of named openings,
[lichess-org/chess-openings](https://github.com/lichess-org/chess-openings), given to the
public domain (CC0).

## Models and sounds

The voice uses [Kokoro-82M](https://huggingface.co/hexgrad/Kokoro-82M) (Apache-2.0) with
eSpeak NG's pronunciation data (GPL-3.0-or-later), and NVIDIA's
[Parakeet TDT 0.6B v2](https://huggingface.co/nvidia/parakeet-tdt-0.6b-v2) (CC-BY-4.0), as
converted for use on a device by [sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx):
Parakeet's weights converted to ONNX and stored as 8-bit integers. The piece and clock sounds are recordings by JJTaynos given to the public domain
(CC0). The position previews use chess pieces by Colin M. L. Burnett.

## Third-party notices

The licences of everything Solrac is built with ask that their notices go with every copy.
Each release includes them in `THIRD-PARTY-NOTICES.txt`.
