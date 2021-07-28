# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bff_elixir,
  ecto_repos: [BffElixir.Repo]

# Configures the endpoint
config :bff_elixir, BffElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eoSJPcsQQ7I0gTaC34vTJhX4uHGYKYClI2T0NY6Sv4TAJlaENdtX5y0XKCq31jca",
  render_errors: [view: BffElixirWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BffElixir.PubSub,
  live_view: [signing_salt: "9+FSvqvR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
