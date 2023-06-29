defmodule WellnessPulse.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :text, :text, null: false
      add :type, :string, null: false
      add :order, :integer, null: false
      add :survey_id, references(:surveys, on_delete: :nothing, type: :binary_id), null: false

      timestamps()
    end

    create index(:questions, [:survey_id])
  end
end
