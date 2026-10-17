# Wordle Assistant 🟩🟨⬛

A browser-based, interactive assistant designed to help you solve the daily NYT Wordle puzzle. It doesn't just filter words; it mathematically calculates the best possible next guess using **Information Entropy**.

## 🧠 How it Works

When you input a guess and the colors you received on the website, the app filters a dictionary of 14,855 five-letter words. It then calculates the **expected information gain** for every remaining possible word.

- **Entropy Scoring:** The algorithm evaluates how well a word splits the remaining candidate pool. A high score means the word will give you the most information, regardless of whether it's the actual answer.
- **Candidate Optimization:** In the early game, it suggests words that eliminate the most possibilities (e.g., `TARES`, `SOARE`). In the late game (< 20 words), it switches to suggesting words that are highly likely to be the actual answer.
- **★ Starred Guesses:** Words marked with a star are "info-gathering" guesses—they aren't possible answers, but guessing them will mathematically narrow down the field faster.

## ⚙️ Features
- **100% Client-Side:** Runs entirely in the browser. No Python server, no backend required.
- **Interactive UI:** Click a color box to cycle through Gray (⬛), Yellow (🟨), and Green (🟩).
- **Top 10 Suggestions:** Displays the highest-entropy words with their calculated scores.
- **Local Storage History:** Automatically saves your game history to the browser, with an option to download it as a `.txt` file.
- **Responsive Design:** Clean, Wordle-inspired UI that works on desktop and mobile.

## 🛠️ Tech Stack
- **Languages:** HTML5, CSS3, Vanilla JavaScript (ES6)
- **Core Concepts:** Information Theory, Shannon Entropy, DOM Manipulation, Local Storage API.
- **Data:** 14,855-word dictionary loaded dynamically via JSON.

## 🚀 How to Run
Because browsers block external JavaScript files from running via file:// for security reasons, this app includes a custom Windows launcher to make it run perfectly every time.

Clone the repository.

Double-click start_wordle.bat (included in the repo).

The script will automatically:

Start a local Python HTTP server in the background.

Open your default web browser to http://localhost:8000/wordle_assistant.html.

Play as normal!

When you're done, simply close the black terminal window to shut down the server.

(Alternative: If you are on Mac/Linux, just run python -m http.server 8000 in the project folder and visit the URL manually).
