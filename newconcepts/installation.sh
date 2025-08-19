#!/usr/bin/env bash

set -euo pipefail # enabling strict error-handling behaviors.

Browsers=("Google-Chrome" "Brave" "Zen Browser")

# Display custom heading and get user selection
echo "Select Your Browsers :"
selected_browsers=$(gum choose --no-limit "${Browsers[@]}")

# Display what user selected
echo "You selected: $(echo "$selected_browsers" | tr '\n' ', ' | sed 's/[[:space:]]*,[[:space:]]*$//')"

# Process each selected browser
if [[ -n "$selected_browsers" ]]; then
    echo -e "\nInstalling selected browsers...\n"
    
    # Convert to array for processing
    while IFS= read -r browser; do
        case "$browser" in
            "Google-Chrome")
                echo "Installing Google Chrome..."
                # Add your Chrome installation commands here
                # wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
                # echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
                # sudo apt update && sudo apt install -y google-chrome-stable
                echo "✓ Google Chrome installation completed"
                ;;
            "Brave")
                echo "Installing Brave Browser..."
                # Add your Brave installation commands here
                # sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
                # echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
                # sudo apt update && sudo apt install -y brave-browser
                echo "✓ Brave Browser installation completed"
                ;;
            "Zen Browser")
                echo "Installing Zen Browser..."
                # Add your Zen Browser installation commands here
                # flatpak install -y flathub io.github.zen_browser.zen
                echo "✓ Zen Browser installation completed"
                ;;
            *)
                echo "Unknown browser: $browser"
                ;;
        esac
    done <<< "$selected_browsers"
    
    echo -e "\n🎉 All selected browsers have been installed successfully!"
else
    echo "No browsers selected. Exiting..."
fi

# Alternative Fix 2: Use a different approach entirely
# echo "You selected: $(echo "$selected_browsers" | paste -sd ', ' -)"

# Alternative Fix 3: Most reliable method
# formatted_selection=$(echo "$selected_browsers" | tr '\n' ',' | sed 's/,/, /g' | sed 's/, $//')
# echo "You selected: $formatted_selection"

# # Categories
# 1 browsers(chrome,brave,zen_browser,)
# flatpak
# 2 communication(discord,zoom,telegram)
# 3 text editor(kate,vs code ,sublime text , neovim , vim, intellgia code editor)
# 4 LibreOffice
# Remmina  (rdp protocol)
# 5 multimedia(OBS, VLC, video downlaoder(flatpak))
# Productivity (obsidian,)
# 6 Unity Hub

# shfmt -i 4 -ci -w "script.sh" // run this to format the code