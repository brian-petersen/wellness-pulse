defmodule WellnessPulse.Repo do
  use Ecto.Repo,
    otp_app: :wellness_pulse,
    adapter: Ecto.Adapters.Postgres
end
