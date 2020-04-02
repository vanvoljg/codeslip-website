# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :portfolio,
  ecto_repos: [Portfolio.Repo]

# Configures the endpoint
config :portfolio, PortfolioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/y9nuHmczKQqXMJK9Wpl0r4G8Pl4lN+7BfAx9czQqFyJc+VgxTQ+8QDJyGJ4b8XX",
  render_errors: [view: PortfolioWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Portfolio.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "nHWGRWaP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
