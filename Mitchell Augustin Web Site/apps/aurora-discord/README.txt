To launch your own instance of Aurora for Discord, first make sure that your host computer has a valid Java installation. 
Go to https://discordapp.com/developers/applications/me and create a new app, and then make that app a "bot user." Once you have
done this, launch the bot by running the following command (replacing TOKEN with your bot user's token, keeping the quotes):
java -jar aurora-discord.jar 'TOKEN'

Commands:
exit - stops the bot
idle - sets the bot to idle
active - sets the bot to online
game - prompts the user for a game title, then sets the current game