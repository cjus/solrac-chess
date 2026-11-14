# Learning from the engine

![The Engine Thinking window over the board](images/engine-thinking.png)

## The evaluation bar

The panel always shows an evaluation bar and the score in words. Click it to open the Engine
Thinking window.

## Review

The panel's **Review** button has Solrac search every position of your game's main line. It
marks inaccuracies (`?!`), mistakes (`?`) and blunders (`??`), adds a better line after
mistakes and blunders, and writes each move's evaluation into the game, along with which
engine and depth it used. A progress bar shows "Reviewing: N of M positions", and you can
cancel. Nothing is written unless the review finishes. The same position always gets the same
review. The button is greyed, with the reason on hover, while a review is under way, when a
position has no moves, or when the Games window has a newer version of the game (replay it from
there).

Under the move list, an **evaluation graph** shows a bar for each move, with marked moves as
dots; click one to see the move. It appears once the game has evaluations.

## After a game

When a game ends, a **Game over** notice offers **Play again**, **Analyse**, **Review** and
**Close**. **Review** analyses the game first, then reviews it.

## Analyse

Switch on **Analyse** to step to any position and play a move to follow or add a variation.
Right-click a move to edit its comment and symbols, promote or delete a variation, or delete
the moves from there. Edits are saved in your library as a new version.

## Replay

Load a game and use Start, Back, Forward and End, or the arrow keys. **Play from here** carries
on from any position, including a variation, as any kind of game. It is greyed in a position
where the game is over: step back first.

## Engine Thinking

Press ⌘E, click the evaluation bar or use the brain button to open the Engine Thinking window.
It shows the evaluation bar, depth, nodes, speed, hash use, tablebase hits, time and the line
the engine expects. While you play against Solrac it gives no hints on your turn.

When you step through or analyse a game, Solrac searches the position shown for up to 30
seconds. **Stop** ends the search at once, and **Think longer** searches on. If Solrac
stops working, **Restart Solrac** or **Try again** starts it again; the game carries on.

## Engine Mind

Press ⌘↑ or choose **View → Engine Mind** to see a full-window 3D view of Solrac's best lines,
drawn as a tree of small boards with the main line (PV1) in front and the next two lines
behind. The toolbar has:

- **Back to the board** (⌘↓, or Esc) to leave the view.
- **Return to PV1** to frame the first moves of the best line again.
- **Freeze view** to keep the picture while you look: Solrac goes on searching and the clocks
  go on. **Unfreeze view** shows its lines as they come.

Drag to pan and use the wheel to move forward or back. Point at a board and the **board panel**
at the top left shows the position after that move, with the line in words and what each
piece is worth. Click a board to select its move: the arrow keys then walk the moves (→ along
the line, ← back, ↑ and ↓ between lines), and the **search tree** panel on the right shows how
the search settled it. Esc clears a selection first, then returns to the board.

## Camera close-ups

On a checkmate, and on a promotion, the camera draws in on the piece and circles its square (for
ten seconds after a mate), then pulls back. There is no switch for it. Turning the camera
yourself ends it.

You can also ask the chat to analyse a position, compare moves or explain an evaluation: see
[The chat and voice](chat-and-voice.md).
