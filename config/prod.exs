use Mix.Config

config :portfolio, PortfolioWeb.Endpoint,
  load_from_system_env: true,
  http: [port: "${PORT}"],
  server: true,
  url: [host: "${APP_NAME}.gigalixirapp.com", port: 443],
  secret_key_base: "${SECRET_KEY_BASE}",
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :portfolio, Portfolio.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: "${DATABASE_URL}",
  database: "",
  ssl: true,
  pool_size: 1

# Do not print debug messages in production
config :logger, level: :info

