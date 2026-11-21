# The chat and voice

Talk or type to Solrac along the bottom of the board. It can look at the position, play moves
you ask for, change settings and explain what it finds.

![The Rail, with Solrac's caption lit above it](images/rail-captions.png)

## The Rail

The strip under the board is the **Rail**. From left to right:

- **The dial**: Solrac's face with a ring of ticks. While you speak, the lit ticks show how loud
  the microphone hears you. While Solrac speaks, all of them are lit, and while it thinks, a lit
  run chases round.
- **The field**, "Ask, or say a move": type up to 500 characters and press **Enter**. The field
  takes the whole width between the dial and the buttons. If the chat can't run, the field says
  why, as "The chat is off: ...".
- **Send**, which turns into **Stop** while Solrac is working out a reply or speaking. Stop ends
  the reply, the speech and any line it is showing on the board.
- **Talk**, **Hands-free** and **Read aloud**, when the voice is ready (see below).
- **History**, which opens the **Chat history** window.

**Tab** hides the panel and the Rail together, and shows them again. What you were typing is
kept.

## What it does

- It **plays a move only when you ask**, and the board checks every move it plays. It asks
  **Yes** or **No** before starting a new game, resigning, loading a game over one in
  progress, or agreeing to a draw, and when you accept one Solrac offers. Answer in the chat
  or press the buttons.
- It can analyse the position (one to five lines, quick or deep), compare moves, review a
  move, find a threat, or explain an evaluation term by term. The same position gets the same
  analysis every time. Its explanations rest on what the engine found on the board and along
  its lines: a piece left hanging, a pin, a weak pawn, a fork or a skewer a line shows, what
  a line wins, what the other side threatens. It can also tell you the trap in a move that
  looks good: a capture or a check a player at your level would be drawn to, and what the
  engine answers (it takes the level you are playing against as your level, and a club
  player's when there is none). If a reply still names a move the analysis didn't give, a
  note under it says so.
- It can turn, tilt, zoom and fit the camera or face a side, and change the clock, strength,
  think time, lights, environment, sound and voice, labels, the camera lock and the panel.
- It can take back, offer or answer a draw, copy the position or the game, save or load a game
  from text, step through a game, and play on from a position.
- When it describes a line, it **plays it out on the board** with arrows and rings, timed to
  its voice, then restores your game. A banner with **Stop** shows while it does. Press Esc,
  click **Stop**, click the board, hold Talk, type a message, or change the game, and it stops.
- During a game it gives ideas, not moves, and nothing on your turn from the engine.
- During a chess puzzle it gives the puzzle's own hint when you ask (the piece to move, as
  **Hint** does), and never the solution: it shows no lines and doesn't analyse the puzzle.
- It can switch between the 3D board and the 2D board.

## Chat history

![The Chat history window](images/chat-history.png)

**History** opens a window you can move and resize. Your words are on the right and Solrac's
on the left, with small italic lines for what it did (a move played, a setting changed).
Errors are in a warning colour. In Hands-free, speech that wasn't meant for Solrac, such as you
talking to someone in the room, is shown dimmed as "Not meant for the chat, so it wasn't
answered."

## What it costs and what is sent

The chat is answered by a language model reached through PNXStudios' service, paid with your
**tokens**, so there is no key to set up. It works with a licence seat on this machine or with a
signed-in account. If you run out, the chat tells you so. What is sent to get a reply is what
you type or say (as text) and the position and analysis the question needs, through PNX Studios'
server to OpenRouter and the company whose language model answers. Your voice itself, your games
library and your settings stay on your Mac.

![Solrac's chat asks before your first message](images/ai-notice.png)

Before your first message, Solrac tells you that what you type or say goes to the online
coach, the Solrac Chess AI Coach, and asks: **Continue** sends your message, and
Solrac doesn't ask again; **Not now** (or Esc) sends nothing, and it asks again next time. You
can change your answer under **Settings → Voice and Chat → Online coach**.

## Voice

- **Talk**: hold Space or the Talk button, for up to 30 seconds. The notice above the Rail
  counts the seconds ("Listening: let go to send"). What you say is turned into text **on your
  Mac**, never sent and never saved. Until the voice has downloaded (once), Talk is greyed out,
  and its tooltip says why; if the voice couldn't load, Talk waits until Solrac starts again.
- **Hands-free** keeps the microphone open without a wake word. It waits for you to pause,
  ignores Solrac's own speech, lets you speak over it, and hears an unclear move twice and
  checks it against the legal moves. Half a move, such as "Bishop", waits a moment for the
  rest. It is off at each start. The button is greyed until the voice is ready, with the
  reason on hover ("Preparing the voice...", or "Unavailable: ..." and why).
- **Read aloud** switches replies on (Always) or off (Never). **Settings → Voice and Chat**
  chooses Automatic, Always, In voice mode (when Hands-free is on) or Never, and the voice.
  Automatic reads everything, except on a computer with a weak graphics card, where it reads
  only in voice mode ([On a slower computer](slow-computers.md)).
- The voice models (more than 800 MB) download once. On an iPad, Solrac asks first, on the
  loading screen: **Download**, or **Not now** to type instead. Solrac remembers Not now, and
  **Settings → Voice and Chat** has **Download** for later. Until then, replies aren't read
  aloud and Talk and Hands-free say why they wait.

## Detail and pace

Under **Settings → Avatar → Explanation**, **Detail** chooses how much Solrac says and how
many moves it plays on the board: **Short** is the point in a sentence with one short line of a
few moves, **Normal** (the default) a few sentences with a line or two, and **Verbose**
everything, with up to four lines of a dozen moves. The change applies from your next message.

**Pace** (Standard, Relaxed or Slow; Relaxed is the default) sets how long Solrac pauses
between sentences and after each move it plays on the board, so you can take in what was said
and what moved before the next point. It changes the pauses, not the voice's speed.

## Captions

![Solrac's reply as a caption above the Rail, the word being said lit](images/captions.png)

What Solrac says appears as **captions** above the Rail, like subtitles in a film: a sentence
at a time, with each word lighting up as it is spoken, so the text matches what you hear. The
words already said are white, the word being said is teal and the rest are dimmed. A long
sentence is split at a comma so a caption is never a wall of text. The last caption stays for
five seconds.

The computer's moves are captioned and read aloud too ("Black plays knight f6.") while **Read
aloud** is on, whether you type or talk. When two engines play each other they are only
announced if you talk to Solrac.

Captions show even when **Read aloud** is off, or you can't hear, and for replies you typed: the
sentences come at reading speed instead. When Solrac describes a line, the moves and arrows on
the board arrive as the words that name them are spoken. While it thinks, a short note takes the
caption's place, and so does an error.

To turn captions off, clear **Show captions** in **Settings → Avatar**. Those notes and
errors still appear; **History** still has everything Solrac said.
