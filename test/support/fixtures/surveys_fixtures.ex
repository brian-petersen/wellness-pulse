defmodule WellnessPulse.SurveysFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `WellnessPulse.Surveys` context.
  """

  @doc """
  Generate a survey.
  """
  def survey_fixture(attrs \\ %{}) do
    {:ok, survey} =
      attrs
      |> Enum.into(%{
        instructions: "some instructions",
        title: "some title"
      })
      |> WellnessPulse.Surveys.create_survey()

    survey
  end
end
