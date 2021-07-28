defmodule BffElixir.Repo do
  use Ecto.Repo,
    otp_app: :bff_elixir,
    adapter: Ecto.Adapters.Postgres
end
