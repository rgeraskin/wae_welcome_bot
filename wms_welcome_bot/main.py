"""Main module for the bot."""

import os

import telebot


def main():
    """Start the bot."""
    # get the bot token from the environment
    bot_token = os.environ.get("BOT_TOKEN")
    if not bot_token:
        raise ValueError("No BOT_TOKEN")
    bot = telebot.TeleBot(bot_token)

    print("Bot started!")

    @bot.message_handler(content_types=["new_chat_members"])
    def welcome_new_members(message):
        for member in message.new_chat_members:
            print(f"Welcome {member.first_name}!")
            bot.send_message(message.chat.id, f"Welcome {member.first_name}!")
            with open("welcome.mp4", "rb") as video:
                bot.send_video(message.chat.id, video)

    bot.polling()
