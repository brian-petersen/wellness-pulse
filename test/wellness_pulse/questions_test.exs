defmodule WellnessPulse.QuestionsTest do
  alias WellnessPulse.SurveysFixtures
  use WellnessPulse.DataCase

  alias WellnessPulse.Questions

  describe "questions" do
    alias WellnessPulse.Questions.Question

    import WellnessPulse.QuestionsFixtures

    @invalid_attrs %{type: nil, text: nil, order: nil}

    test "list_questions/0 returns all questions" do
      question = question_fixture()
      assert Questions.list_questions() |> Enum.map(& &1.id) |> Enum.member?(question.id)
    end

    test "get_question!/1 returns the question with given id" do
      question = question_fixture()
      assert Questions.get_question!(question.id) == question
    end

    test "create_question/1 with valid data creates a question" do
      survey = SurveysFixtures.survey_fixture()
      valid_attrs = %{type: "some type", text: "some text", order: 0, survey_id: survey.id}

      assert {:ok, %Question{} = question} = Questions.create_question(valid_attrs)
      assert question.type == "some type"
      assert question.text == "some text"
    end

    test "create_question/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Questions.create_question(@invalid_attrs)
    end

    test "update_question/2 with valid data updates the question" do
      question = question_fixture()
      update_attrs = %{type: "some updated type", text: "some updated text"}

      assert {:ok, %Question{} = question} = Questions.update_question(question, update_attrs)
      assert question.type == "some updated type"
      assert question.text == "some updated text"
    end

    test "update_question/2 with invalid data returns error changeset" do
      question = question_fixture()
      assert {:error, %Ecto.Changeset{}} = Questions.update_question(question, @invalid_attrs)
      assert question == Questions.get_question!(question.id)
    end

    test "delete_question/1 deletes the question" do
      question = question_fixture()
      assert {:ok, %Question{}} = Questions.delete_question(question)
      assert_raise Ecto.NoResultsError, fn -> Questions.get_question!(question.id) end
    end

    test "change_question/1 returns a question changeset" do
      question = question_fixture()
      assert %Ecto.Changeset{} = Questions.change_question(question)
    end
  end
end
