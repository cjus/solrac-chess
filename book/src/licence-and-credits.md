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

## Models and sounds

The voice uses [Kokoro-82M](https://huggingface.co/hexgrad/Kokoro-82M) (Apache-2.0) with
eSpeak NG's pronunciation data (GPL-3.0-or-later), and NVIDIA's
[Parakeet TDT 0.6B v2](https://huggingface.co/nvidia/parakeet-tdt-0.6b-v2) (CC-BY-4.0),
unchanged. The piece and clock sounds are recordings by JJTaynos given to the public domain
(CC0). The position previews use chess pieces by Colin M. L. Burnett.

## Third-party notices

The licences of everything Solrac is built with ask that their notices go with every copy.
Each release includes them in `THIRD-PARTY-NOTICES.txt`.
