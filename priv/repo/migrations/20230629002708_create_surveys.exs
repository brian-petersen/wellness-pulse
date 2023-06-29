defmodule WellnessPulse.Repo.Migrations.CreateSurveys do
  use Ecto.Migration

  def change do
    create table(:surveys, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :text, null: false

      timestamps()
    end
  end
end
