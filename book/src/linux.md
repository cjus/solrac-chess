# Solrac on Linux

Solrac for Linux is one file, an **AppImage**. There is nothing to install: you download it,
make it runnable and start it. It holds Solrac, its chess engine, its voice and its game
database, so it works on its own.

## What you need

- A 64-bit Intel or AMD computer (x86-64). Arm computers aren't supported yet.
- **Ubuntu 22.04, Debian 12 or newer**, or another distribution with the same or a newer C
  library (glibc 2.35 or later). Solrac was tried on Ubuntu 24.04.
- A graphics driver with Vulkan or OpenGL. On a slower computer, see
  [On a slower computer](slow-computers.md): Solrac chooses the lighter 2D board by itself.
- A licence key, as on a Mac (see [Getting started](getting-started.md)).

## Download and start

1. Sign in to your account on solrac-chess.com and open the **Download** page. Its Linux
   section has the download button, and links to the signature and the release key.
2. Make it runnable, then start it:

   ```sh
   chmod +x Solrac-*-x86_64.AppImage
   ./Solrac-*-x86_64.AppImage
   ```

3. The first start asks for your licence key.

Keep the file where you want it to stay: Solrac points your browser's sign-in at the file's
place (see below), and starting it from a new place moves that along.

## Check your download

Each release is signed with PNX Studios' release key. Checking takes a minute and tells you
the file is the one PNX Studios built and that nothing changed on the way:

```sh
gpg --import solrac-signing-key.asc
gpg --verify Solrac-<version>-x86_64.AppImage.asc Solrac-<version>-x86_64.AppImage
sha256sum -c --ignore-missing SHA256SUMS
```

`gpg` says **Good signature** and shows the key's fingerprint. Compare it with this one, and
with the one on the Download page:

```text
2733 F376 5806 806E 9823  7977 6F6E 5D83 D75C 8628
```

The same warning, "This key is not certified with a trusted signature", is normal: it means
only that you haven't yourself marked the key as trusted. The fingerprint matching is what
counts. If it doesn't match, don't run the file.

## Signing in to your account

**Preferences → Account** opens your browser for the sign-in and the browser hands the answer
back to Solrac. To make that work, each time Solrac starts it tells your desktop that links
beginning `solrac://` are Solrac's. This changes only your own files, under your home folder.

- **Your browser asks once** whether it may open Solrac. Tick **Always allow** so it doesn't
  ask again. The question is the browser's own.
- If the browser says there is **no app available** for the link, Solrac may not have started
  on this desktop yet, or `update-desktop-database` and `xdg-mime` (from the
  `desktop-file-utils` and `xdg-utils` packages) are missing. Install them, start Solrac again
  and retry.

## Where Solrac keeps things

Everything is in `~/.local/share/solrac` (or `$XDG_DATA_HOME/solrac`): your games and settings,
the downloaded voice models, and your licence key and account session in a `secrets` folder
that only you can read. There is no keyring to unlock, so a minimal install or a remote
session works. Back up your games as on any system
([Your games, imports and backups](games.md)).

## Updates

Solrac for Linux doesn't yet tell you when a newer version exists. Look at the Download page
now and then; a new version is a new file, and the old one keeps working until you replace it.
Check the new file's signature as above.

## Taking Solrac off

Delete the AppImage, `~/.local/share/applications/solrac-url.desktop` and, if you want your
games and settings gone too, `~/.local/share/solrac`. Choose **Deactivate this machine** in
Preferences first if you want to free its licence seat.

## If something doesn't work

- **The file won't start.** Check it is executable (`chmod +x`) and that your glibc is 2.35 or
  newer (`ldd --version`).
- **A blank or very slow window.** See [On a slower computer](slow-computers.md), and try
  Preferences' quality and board settings. A remote (ssh) session has no screen for Solrac to
  open.
- **Anything else:** [Troubleshooting and FAQ](faq.md).
