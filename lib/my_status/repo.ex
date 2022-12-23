defmodule MyStatus.Repo do
  use Ecto.Repo,
    otp_app: :my_status,
    adapter: Ecto.Adapters.SQLite3
end
