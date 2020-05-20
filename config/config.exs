# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :stratosflower_landing_site,
  ecto_repos: [StratosflowerLandingSite.Repo]

# Configures the endpoint
config :stratosflower_landing_site, StratosflowerLandingSiteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X2WVAsRwDVruvfACgQRmf4M/xxt0Zeuy+RhbyqWZGLjn05CRv4KkW3U1/pEExTlm",
  render_errors: [view: StratosflowerLandingSiteWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: StratosflowerLandingSite.PubSub,
  live_view: [signing_salt: "u2A9H5T5"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
