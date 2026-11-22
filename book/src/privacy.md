# Privacy

Solrac keeps your games, settings and recordings on your Mac. It talks to the internet in
four places, and only these (a fifth, if you choose it: your own AI provider, below):

| What | Who it talks to | What it receives |
| --- | --- | --- |
| **Licence** (release builds) | PNXStudios' licence service | Your licence key, this machine's name and a fingerprint of it, the operating system's and Solrac's versions. It answers with a certificate, and may say a newer Solrac exists. |
| **Account** | PNXStudios' sign-in and the account database | What signing in to solrac-chess.com needs. Accounts and licences are kept apart. |
| **Chat** | PNXStudios' relay, then OpenRouter and the company whose language model answers | What you type or say (as text), the position and analysis a question needs, and which licence seat or account pays for it. Solrac asks before your first message is sent. |
| **Downloads** | PNXStudios' download server | The voice models, once, and the page for a new release, which you open yourself. |

Also:

- **Your own AI provider** (Settings → AI, off to start). If you choose Anthropic, OpenAI, Google
  Gemini, OpenRouter, or a server of your own, the chat goes straight from Solrac to that
  provider with your own key, instead of through PNXStudios' relay: what you type or say (as
  text), the position and analysis a question needs. Solrac asks you first, naming the provider.
  Your key is kept in your device's Keychain, never in Solrac's settings or a backup, and is
  sent only to that provider. With Ollama or LM Studio on your own computer, the chat goes to
  that program, at the address shown. PNXStudios sees none of it and no Solrac tokens are spent.
  The provider's own terms govern what it keeps.
- **Your voice is heard on your Mac.** Recordings are turned into text locally, and never
  sent or saved. Until the voice has downloaded, Talk waits.
- **Replies are read aloud on your Mac** by a local voice, once it has downloaded.
- **Your games library** (chessdb) is a file on your Mac. Nothing uploads it.
- **Engines**: cb2026 runs on your Mac, and talks to the network only if *you* pair an engine
  on another computer, and then only to that engine, encrypted.
- Solrac sends no analytics or crash reports.
