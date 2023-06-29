defmodule WellnessPulse.Questions.Question do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "questions" do
    field :type, :string
    field :text, :string
    field :order, :integer
    field :survey_id, :binary_id

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:text, :type, :order, :survey_id])
    |> validate_required([:text, :type, :order, :survey_id])
  end

  def type_agreement(), do: "AGREEMENT"
  def type_binary(), do: "BINARY"
  def type_frequency(), do: "FREQUENCY"
  def type_satisfaction(), do: "SATISFACTION"
  def type_weekly_frequency(), do: "WEEKLY_FREQUENCY"
end
