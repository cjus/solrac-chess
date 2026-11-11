# Privacy

Solrac keeps your games, settings and recordings on your Mac. It talks to the internet in
four places, and only these:

| What | Who it talks to | What it receives |
| --- | --- | --- |
| **Licence** (release builds) | PNXStudios' licence service | Your licence key, this machine's name and a fingerprint of it, the operating system's and Solrac's versions. It answers with a certificate, and may say a newer Solrac exists. |
| **Account** | PNXStudios' sign-in and the account database | What signing in to solrac-chess.com needs. Accounts and licences are kept apart. |
| **Chat** | PNXStudios' relay to a language model | What you type or say (as text), the position and analysis a question needs, and which licence seat or account pays for it. |
| **Downloads** | PNXStudios' download server | The voice models, once, and the page for a new release, which you open yourself. |

Also:

- **Your voice is heard on your Mac.** Recordings are turned into text locally and never
  saved. Only if the local model isn't ready does a recording go to an online transcription,
  through the same relay.
- **Replies are read aloud on your Mac** by a local voice; online speech is the fallback.
- **Your games library** (chessdb) is a file on your Mac. Nothing uploads it.
- **Engines**: cb2026 runs on your Mac, and talks to the network only if *you* pair an engine
  on another computer, and then only to that engine, encrypted.
- Solrac sends no analytics or crash reports.
