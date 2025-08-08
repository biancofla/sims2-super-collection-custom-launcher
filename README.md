# The Sims™ 2 - Super Collection Custom Launcher

## Overview

This script creates a custom launcher app for [_The Sims™ 2 - Super Collection_](https://apps.apple.com/en/app/the-sims-2-super-collection/id883782620?mt=12) that allows you to run the game in different languages without changing your system language settings.

## Requirements

- macOS
- A copy of The Sims™ 2 - Supper Collection installed in `/Applications/The Sims 2.app`

## How to Use

1. **Make the script executable**

   Open a terminal and navigate to the directory where the script is located. Run the following command:

   ```bash
   chmod +x run.sh
   ```

2. **Run the script**

   Then, execute the script by running:

   ```bash
   sh run.sh
   ```

3. **Select a language**

   The script will display a menu with 25 available languages. Enter the number corresponding to your desired language.

4. **Launch the game**

   After the script completes, you'll find a new app named `The Sims 2 - Super Collection.app ($LANGUAGE)`, where `$LANGUAGE` is the language you selected. You can find this app in the same directory as the script.

## Available Languages

- Brazilian Portuguese
- Czech
- Danish
- Dutch
- English
- Finnish
- French
- German
- Greek
- Hebrew
- Hungarian
- Italian
- Japanese
- Korean
- Norwegian
- Polish
- Portuguese
- Russian
- Simplified Chinese
- Spanish
- Swedish
- Thai
- Traditional Chinese
- Turkish
- UK English

## How It Works

The script creates a wrapper application that launches the game with the `-l:` parameter, which tells the game to use a specific language. This avoids the need to change your entire system's language settings.

## Notes

- The script will remove any existing launcher with the same name before creating a new one.
- The launcher uses the original game's icon.
- The game runs in x86_64 mode via Rosetta 2 on Apple Silicon Macs.

## Troubleshooting

If a language doesn't work as expected, it may not be fully supported by your version of The Sims 2. The game will typically fall back to English in such cases.
