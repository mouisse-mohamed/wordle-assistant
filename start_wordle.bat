@echo off
cd /d "C:\Users\MSI\Documents\Wordle"
start "" http://localhost:8000/wordle_assistant.html
python -m http.server 8000
