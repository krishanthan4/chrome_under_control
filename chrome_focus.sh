#!/bin/bash

echo "Welcome to CHROME Focus maker"
echo "Running this script will disable incognito mode, add person and guest mode in Chrome"
read -p "Type ok to Run the script : " ANSWER

if [ "$ANSWER" = "ok" ] || [ "$ANSWER" = "OK" ]; then
    sudo mkdir -p /etc/opt/chrome/policies/managed
    cd /etc/opt/chrome/policies/managed
    echo '{ "BrowserGuestModeEnabled": false, "IncognitoModeAvailability": 1, "BrowserAddPersonEnabled": false }' > incognito-policy.json
    echo "Policy file created successfully!"
else
    echo "Have a nice Day :)"
fi




