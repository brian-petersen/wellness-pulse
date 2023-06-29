defmodule WellnessPulse.SurveysTest do
  use WellnessPulse.DataCase

  alias WellnessPulse.Surveys

  describe "surveys" do
    alias WellnessPulse.Surveys.Survey

    import WellnessPulse.SurveysFixtures

    @invalid_attrs %{title: nil}

    test "list_surveys/0 returns all surveys" do
      survey = survey_fixture()
      assert Surveys.list_surveys() |> Enum.map(& &1.id) |> Enum.member?(survey.id)
    end

    test "get_survey!/1 returns the survey with given id" do
      survey = survey_fixture()
      assert Surveys.get_survey!(survey.id) == survey
    end

    test "create_survey/1 with valid data creates a survey" do
      valid_attrs = %{title: "some title"}

      assert {:ok, %Survey{} = survey} = Surveys.create_survey(valid_attrs)
      assert survey.title == "some title"
    end

    test "create_survey/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Surveys.create_survey(@invalid_attrs)
    end

    test "update_survey/2 with valid data updates the survey" do
      survey = survey_fixture()
      update_attrs = %{title: "some updated title"}

      assert {:ok, %Survey{} = survey} = Surveys.update_survey(survey, update_attrs)
      assert survey.title == "some updated title"
    end

    test "update_survey/2 with invalid data returns error changeset" do
      survey = survey_fixture()
      assert {:error, %Ecto.Changeset{}} = Surveys.update_survey(survey, @invalid_attrs)
      assert survey == Surveys.get_survey!(survey.id)
    end

    test "delete_survey/1 deletes the survey" do
      survey = survey_fixture()
      assert {:ok, %Survey{}} = Surveys.delete_survey(survey)
      assert_raise Ecto.NoResultsError, fn -> Surveys.get_survey!(survey.id) end
    end

    test "change_survey/1 returns a survey changeset" do
      survey = survey_fixture()
      assert %Ecto.Changeset{} = Surveys.change_survey(survey)
    end
  end
end
