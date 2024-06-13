#!/bin/bash

echo "Welcome to Brave Focus maker"
echo "Running this script will disable incognito mode, add person and guest mode in Brave"
read -p "Type ok to Run the script : " ANSWER

if [ "$ANSWER" = "ok" ] || [ "$ANSWER" = "OK" ]; then
  sudo mkdir -p /etc/brave/policies/managed
  cd /etc/brave/policies/managed
  echo '{ "BrowserGuestModeEnabled": false, "IncognitoModeAvailability": 1, "BrowserAddPersonEnabled": false }' > brave-policy.json
  echo "Policy file created successfully!"
else
  echo "Have a nice day :)"
fi

