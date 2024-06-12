# Welcome Bot

## Description

The Welcome Bot is a telegram bot designed to greet new users and provide them with helpful information about the project.

## Features

- Greet new users
- Send a funny video

## Installation

To install and run the Welcome Bot:

- use docker-compose: but `BOT_TOKEN=XXX` to `.env` file
- or use helm chart: put `bot_token: "XXX"` to `helm/secrets.yaml`
- or run python code directly: `export BOT_TOKEN=XXX` env

## Debugging

1. Prepare k8s context
1. Put `bot_token: "XXX"` to `helm/secrets.yaml`
1. `tilt up`

## Usage

Once the bot is running, it will automatically greet new users.

## Contributing

Contributions are welcome! If you would like to contribute to the Welcome Bot project, please follow these guidelines:

1. Fork the repository
2. Create a new branch: `git checkout -b feature/your-feature-name`
3. Make your changes and commit them: `git commit -m "Add your feature"`
4. Push to the branch: `git push origin feature/your-feature-name`
5. Submit a pull request

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
