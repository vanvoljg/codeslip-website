use Mix.Config

config :portfolio, PortfolioWeb.Endpoint,
  load_from_system_env: true,
  http: [port: System.get_env("PORT")],
  url: [scheme: "https", host: "www.codeslip.net", port: 443],
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  force_ssl: [rewrite_on: [:x_forwarded_proto], hsts: true],
  cache_static_manifest: "priv/static/cache_manifest.json",
  server: true

config :portfolio, Portfolio.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  database: "",
  ssl: true,
  pool_size: 1

# Do not print debug messages in production
config :logger, level: :info

