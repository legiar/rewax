ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Rewax.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Rewax.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Rewax.Repo)

