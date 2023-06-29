defmodule WellnessPulse.Surveys.Survey do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "surveys" do
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(survey, attrs) do
    survey
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
