# Playing on an engine on another computer

Solrac plays against cb2026, a chess engine that normally runs on the same computer as Solrac.
Chess engines get stronger with more processor cores and memory, so you may want a laptop to
use the engine of a faster computer instead: a desktop in the study, say. This chapter shows
how to set that up and use it.

## What you need

- **Two computers on the same network**: the one you play on (running Solrac) and the one
  that will do the thinking (the *engine computer*).
- **cb2026 on the engine computer, built with its `net` feature.** The downloadable cb2026
  releases don't include the network part yet, so for now you build it yourself:

  ```text
  cargo build --release -p cb2026 --features net
  ```

  The [cb2026 guide](https://cjus.github.io/chessengine/) explains the network code and how
  to build the engine. Macs with Apple chips are the tested combination; Windows and Intel
  Macs haven't been tried.
- A few minutes at both keyboards, **once**. After that, Solrac connects by itself.

You don't need an account, and nothing here goes through the internet.

## Set it up

### 1. On the engine computer: start the engine

Open a terminal and run:

```text
cb2026 --serve 0.0.0.0:4026 --tls --discover --name "the study"
```

- `--serve 0.0.0.0:4026` lets other computers on your network connect, on port 4026.
- `--tls` encrypts the connection.
- `--discover` lets Solrac find the engine without you typing its address.
- `--name` is what you will see in Solrac; use anything you like.

The engine prints its **fingerprint**, a long string of pairs of letters and digits that
identifies this engine. Leave it running. Your computer may ask once whether to allow incoming
connections for the program: allow it.

### 2. On the engine computer: open the pairing window

In a second terminal on the same computer, run:

```text
cb2026 --pair
```

It shows its fingerprint again and an **eight-digit code**. The code works once, for five
minutes, and the window closes after three wrong tries. Keep this terminal open.

### 3. In Solrac: find the engine

On the computer you play on, open **Preferences** (⌘,) and choose the **Network** tab. When
you open it, Solrac looks for engines on your network and lists the ones that answer, each
with its name and address. Click **Pair** next to yours.

If nothing is listed, don't worry: many Wi-Fi networks and firewalls don't pass a search.
Type the engine computer's address instead, in the form `192.168.1.20:4026`, and click
**Connect**. (Port 4026 is the default, so the address alone also works.)

### 4. Compare the fingerprints

Solrac connects and shows the fingerprint **the engine really presents**. Compare it with the
one `cb2026 --pair` printed on the engine computer. If they are exactly the same, click
**Yes, they match**. If they differ, click **No, cancel**: something else may be answering at
that address.

This step is what makes the connection safe. Solrac sends nothing, and asks for no code, until
you have said that the fingerprints match.

### 5. Type the code

Type the eight digits from the engine computer and confirm. Solrac says it is paired. From
now on it connects to this engine with no code, and the engine only accepts the computers it
has paired with.

## Using it

In **Preferences → Network**, under **Engines**, you choose where your games are played:

- **This computer's engine plays**: the usual setting.
- **A paired engine** (named, with its address): your games are played on that computer.

The choice takes hold at once. If a game is under way, it carries on with the new engine from
its next move.

Each paired engine has two buttons:

- **Test** connects to the engine and plays it a short search of the starting position. It
  shows the engine's name, version and protocol, the threads and memory it searches with, the
  move it chose, and how long that took, with and without the network. Use it to check a
  pairing works. While games are played on an engine, its Test is switched off, because an
  engine serves one program at a time; choose this computer's engine to test it.
- **Remove** makes Solrac forget the engine. It only forgets it on *your* side. To stop the
  engine trusting your computer, delete your computer's line from `approved-clients.txt` on the
  engine computer (it sits in cb2026's data folder; on a Mac, `~/Library/Application
  Support/cb2026`). The engine reads the file at every connection, so it takes effect at once
  and nothing needs restarting.

## What is sent, and how it is protected

Everything between the two computers travels over **TLS 1.3**, the encryption `https` uses.
Both sides have a certificate they made themselves, and each remembers the other's
fingerprint. That is why pairing compares fingerprints: afterwards, a program that pretends to
be your engine can't show the right certificate, so Solrac refuses it and sends nothing.

What travels is chess: the position Solrac wants searched, and the engine's moves and
evaluations. Your games, settings, chat and voice stay on your computer.

Pairing is guarded twice. The **code** proves that someone at the engine's keyboard let your
computer in; a stranger on the network would have to guess eight digits, with three tries,
inside five minutes. The **fingerprint comparison** proves you are talking to the right engine.
The engine never says *why* it refused a connection, so a guesser learns nothing.

## Limits

- **One at a time.** An engine serves one program at a time. If a second computer tries while
  yours is playing, it is told the engine is busy.
- **The same network.** Finding engines uses a broadcast, which doesn't leave your network.
  Over the internet it works only if *you* arrange the route, with your own VPN or by
  forwarding a port on your router, and then you type the address.
- **Games only.** Analysis and review of games, and the chat's questions to the engine, still
  use this computer's own engines. Only the engine that plays your games moves.
- Windows and Intel Macs haven't been tried as the engine computer.

## When something goes wrong

Solrac says what happened in the Network tab. Here is what each message means.

**"Nothing answered at that address. Is the engine running, and is it on this network?"**
The engine isn't running, the address is wrong, a firewall is in the way, or the computers are
on different networks. Check that `cb2026 --serve` is still running on the engine computer and
that you typed its current address. Many routers give a computer a new address now and then.

**"This isn't the engine you paired with: it showed a different fingerprint. Nothing was
sent."** Something else is answering at that address. Perhaps another engine took the address
or you reinstalled cb2026 on the engine computer, which makes a new fingerprint. If you know
why, **Remove** the engine and pair again. If you don't, treat it as unsafe and don't pair.

**"The engine refused…"** Either you are pairing and the code was wrong or the pairing window
closed (run `cb2026 --pair` again and use the new code), or you paired before and the engine
no longer approves your computer, because its line was removed from `approved-clients.txt`.
Pair again.

**"The engine is busy with another program. It serves one at a time."** Another program, or
another Solrac, holds the engine. Close it, or wait.

**"No engines answered."** Not an error. The search needs the engine started with
`--discover`, and many networks block it. Type the address instead.

**"Its pairing window is closed"** (under a found engine). Run `cb2026 --pair` on that
computer, then click **Pair**.

**"That isn't an address"**: write it as `192.168.1.20:4026`. **"The code is eight
digits"**: type the eight digits shown by `cb2026 --pair`.

### Firewalls

If the engine computer has a firewall, let **TCP port 4026** through for connections and
**UDP port 4026** for the search. If you started the engine on another port, use that port
instead.

### Still stuck?

Post on the [issues page](https://github.com/cjus/solrac-chess/issues) what the Network tab
says and what you did. Fingerprints are safe to include; they identify a computer and unlock
nothing.
