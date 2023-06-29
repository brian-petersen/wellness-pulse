defmodule WellnessPulse.QuestionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `WellnessPulse.Questions` context.
  """

  @doc """
  Generate a question.
  """
  def question_fixture(attrs \\ %{}, survey_attrs \\ %{}) do
    survey = WellnessPulse.SurveysFixtures.survey_fixture(survey_attrs)

    {:ok, question} =
      attrs
      |> Enum.into(%{
        type: "some type",
        text: "some text",
        order: 0,
        survey_id: survey.id
      })
      |> WellnessPulse.Questions.create_question()

    question
  end
end
