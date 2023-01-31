defmodule Linkly.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :username, :string

      timestamps()
    end

    create unique_index(:users, [:email, :username])
  end

end
