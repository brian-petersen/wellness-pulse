alias WellnessPulse.Questions.Question
alias WellnessPulse.Repo
alias WellnessPulse.Surveys.Survey

surveys = [
  %{
    id: "1fac8674-2227-406a-8185-e8418caa303d",
    title: "Self-Regulation",
    questions: [
      %{
        id: "bf136957-94e5-4a8e-856e-da70dfc9a54e",
        text: "I can identify and understand my emotions",
        type: Question.type_frequency()
      },
      %{
        id: "39a6b12f-c578-4350-9519-97bebf063219",
        text: "I can handle setbacks and adversity",
        type: Question.type_frequency()
      },
      %{
        id: "61ac96b2-d760-439e-af06-2d396b0d9691",
        text: "I can act independently of what people think of me",
        type: Question.type_frequency()
      },
      %{
        id: "b24b9863-9d7d-4b82-905b-4303f380a351",
        text: "I feel like I have personal agency in my life",
        type: Question.type_frequency()
      }
    ]
  },
  %{
    id: "3e11a045-feb8-4437-b3e9-290b7437837e",
    title: "Self-Awareness",
    questions: [
      %{
        id: "f1c0b390-9d18-4add-a33e-d2d147c1a4f6",
        text: "I can identify the difference between my thoughts and feelings",
        type: Question.type_frequency()
      },
      %{
        id: "5f2b82a8-91c1-4692-b1a3-5e285ccf176f",
        text: "How often do I spend time self-reflecting?",
        type: Question.type_weekly_frequency()
      },
      %{
        id: "04cfdcc7-1033-4f7e-a4f2-af901e2ec363",
        text: "How satisfied am I with my self-attitude?",
        type: Question.type_satisfaction()
      }
    ]
  },
  %{
    id: "cf05b6d1-75a6-4b7f-99c4-7d1afe788cae",
    title: "Empathy",
    questions: [
      %{
        id: "b4eb708e-0394-472a-907f-eccda7370d0d",
        text: "I can understand another person's point of view",
        type: Question.type_frequency()
      },
      %{
        id: "4ea3fcfb-7d73-4dba-acaf-b5032ab2510f",
        text: "I am impacted emotionally by other people",
        type: Question.type_frequency()
      },
      %{
        id: "a3060677-50c0-43d2-8c07-ebbcd4bbe4f4",
        text: "I am judgemental of others",
        type: Question.type_frequency()
      },
      %{
        id: "5c6f1169-e27b-49e1-b313-cf7f601ab0d2",
        text: "I am confident I can validate myself and others",
        type: Question.type_frequency()
      }
    ]
  },
  %{
    id: "27b081b9-8ad4-49a6-94bf-3c9f4af5834f",
    title: "Purpose/Meaning",
    questions: [
      %{
        id: "bbff0672-ac08-4fac-9fbb-2ee45fb53d09",
        text: "I feel stuck in life",
        type: Question.type_agreement()
      },
      %{
        id: "5fe4fb42-98e9-48b9-8783-89d74d17868f",
        text: "My life lacks direction",
        type: Question.type_agreement()
      },
      %{
        id: "5dcb484f-e065-4f92-a7e4-6be8c33eece2",
        text: "My life has purpose",
        type: Question.type_agreement()
      },
      %{
        id: "ee6c6ab0-3b4e-4c1d-8126-5ae87e4b3873",
        text: "I'm excited to get out of bed in the morning",
        type: Question.type_agreement()
      },
      %{
        id: "5dff44de-3693-42b1-8384-cead28e07eb7",
        text: "I have forward momentum in life",
        type: Question.type_agreement()
      }
    ]
  },
  %{
    id: "bd009401-83ee-4c43-8aa3-7ca45a8e4748",
    title: "Agency/Control",
    questions: [
      %{
        id: "7397278f-7019-4633-9806-f258cd275be7",
        text: "I can change the course of my life",
        type: Question.type_agreement()
      },
      %{
        id: "062a82e6-9b44-4172-913e-9faf400babb4",
        text: "I am too undisciplined to make meaningful change",
        type: Question.type_agreement()
      },
      %{
        id: "81401b8d-ee12-4008-9419-47083debcf29",
        text: "I'm too lazy to accomplish anything",
        type: Question.type_agreement()
      },
      %{
        id: "d078cb71-5680-454c-8fbc-b6f3e325dbdf",
        text: "I'm in this situation due to my actions",
        type: Question.type_agreement()
      },
      %{
        id: "771eb555-5d32-496e-8d5c-8ea3ec7deb5c",
        text: "Everything I do is of my own free will",
        type: Question.type_agreement()
      }
    ]
  },
  %{
    id: "d07a3fa1-d378-4d67-accc-56ef79c8e30d",
    title: "Motivation",
    questions: [
      %{
        id: "f14c2e05-fc76-4d32-947b-b37f0a2cb9d7",
        text: "I can identify a goal I would like to work towards",
        type: Question.type_frequency()
      },
      %{
        id: "01071189-4bd2-4d8a-a513-aa59225ab16c",
        text: "How many days a week do I work on a life goal?",
        type: Question.type_weekly_frequency()
      },
      %{
        id: "e69a0c29-b745-474d-a6fc-33994876f269",
        text: "I give up or get distracted from my main tasks often",
        type: Question.type_frequency()
      },
      %{
        id: "0b8cb76e-4de5-4fcb-94b0-f1af19b5dc99",
        text: "I am happy with the amount of effort I put into achieving my life goals",
        type: Question.type_satisfaction()
      }
    ]
  },
  %{
    id: "75e5b842-e022-4c85-9258-9e262e672df5",
    title: "Quality of Life",
    questions: [
      %{
        id: "44a72efd-aa03-41c2-9a75-cc70da913709",
        text: "Lately my life had purpose",
        type: Question.type_frequency()
      },
      %{
        id: "d3511f80-2999-4b49-a746-f9efb68a8fcd",
        text: "Lately my life had meaning",
        type: Question.type_frequency()
      },
      %{
        id: "2acbef53-35ff-4e51-8da6-113e8d789421",
        text: "Lately I had a sense of well being",
        type: Question.type_frequency()
      },
      %{
        id: "7dce55fa-700c-4880-addb-d1487ce02d74",
        text: "Lately I felt hopeful",
        type: Question.type_frequency()
      },
      %{
        id: "3c61dd61-d22c-4169-8a0b-bd4af6d3c9da",
        text: "Lately my life was satisfying",
        type: Question.type_frequency()
      },
      %{
        id: "d0bda052-c7a0-4ed3-8d0d-87e329f9d973",
        text: "Lately I felt cheerful",
        type: Question.type_frequency()
      },
      %{
        id: "cfe859bc-33e5-495d-85c9-f2ed5b6c4467",
        text: "Lately my life was worth living",
        type: Question.type_frequency()
      },
      %{
        id: "a2389eff-cbd5-4394-88fa-2cce4b1c4752",
        text: "Lately I had a sense of balance in my life",
        type: Question.type_frequency()
      },
      %{
        id: "5c22d4a9-7eb3-4b5d-9e78-4dd816a63ae8",
        text: "Lately many areas of my life were interesting to me",
        type: Question.type_frequency()
      }
    ]
  },
  %{
    id: "40ce0197-ab7e-4d43-9a9c-d183483675bf",
    title: "Occupational Satisfaction",
    questions: [
      %{
        id: "7c07f93d-1f1d-41ec-a80d-5c2d4b446e20",
        text: "I wish I had more things to do",
        type: Question.type_agreement()
      },
      %{
        id: "dfabaf9c-ecde-4ba4-bdde-b4bd77e923f0",
        text: "I am currently in eructation, employment, or training",
        type: Question.type_binary()
      },
      %{
        id: "ead08a98-47b5-4219-a455-815208f1d6d5",
        text: "I find it easy to keep myself busy",
        type: Question.type_agreement()
      },
      %{
        id: "48b88116-0d2d-4dcc-984e-bf07bf0c1d2e",
        text: "I am satisfied with my current occupation(s)",
        type: Question.type_agreement()
      },
      %{
        id: "f71ac27a-b112-4a2e-a57e-4bfc53f72ff3",
        text: "I am contributing to my community",
        type: Question.type_agreement()
      },
      %{
        id: "a321afde-2dd0-41fb-8376-b1bf6e5322f8",
        text: "I am always bored and have nothing to do",
        type: Question.type_agreement()
      }
    ]
  },
  %{
    id: "485dc696-24ed-43c6-b8c0-10f867f74391",
    title: "PROMIS Anxiety",
    questions: [
      %{
        id: "b4fe7002-ed6c-48cc-9422-0a562577c4f0",
        text: "I felt fearful",
        type: Question.type_frequency()
      },
      %{
        id: "d9fa807f-ea49-4773-80d8-c3321b0c6160",
        text: "I felt anxious",
        type: Question.type_frequency()
      },
      %{
        id: "212d3320-4c79-408c-94d5-01988f42ea59",
        text: "I felt worried",
        type: Question.type_frequency()
      },
      %{
        id: "7b0a5952-33d4-4d8e-b80d-b434a33e8200",
        text: "I found it hard to focus on anything other than my anxiety",
        type: Question.type_frequency()
      },
      %{
        id: "2a7e3814-02e3-4f1f-8751-bb200fe03f62",
        text: "I felt nervous",
        type: Question.type_frequency()
      },
      %{
        id: "6e83ee67-24af-474f-a0e6-00f6411ea088",
        text: "I felt uneasy",
        type: Question.type_frequency()
      },
      %{
        id: "33cca696-025f-4c6c-8bc9-95df78dff121",
        text: "I felt tense",
        type: Question.type_frequency()
      }
    ]
  },
  %{
    id: "f85a8e2e-5b40-49df-94cf-df2f71069b6b",
    title: "PROMIS Depression",
    questions: [
      %{
        id: "df525d0f-e706-4e84-8a74-d7071bdd5163",
        text: "I felt like a failure",
        type: Question.type_frequency()
      },
      %{
        id: "677b8f44-f38d-42e6-8050-1b3210e60985",
        text: "I felt hopeless",
        type: Question.type_frequency()
      },
      %{
        id: "9cc43259-5e20-44f7-bba2-855cb37dffea",
        text: "I felt unhappy",
        type: Question.type_frequency()
      },
      %{
        id: "749df35b-cca0-44a2-8bfa-bc62d553515d",
        text: "I felt worthless",
        type: Question.type_frequency()
      },
      %{
        id: "de76390e-4bde-4234-a63f-c31d539e0812",
        text: "I felt that I had nothing to look forward to",
        type: Question.type_frequency()
      },
      %{
        id: "fd2cc5eb-b497-4dea-a8d9-a5c29c5b6ab3",
        text: "I felt helpless",
        type: Question.type_frequency()
      },
      %{
        id: "63d8a542-cbe1-4445-b0f8-bb6abb09cec7",
        text: "I felt sad",
        type: Question.type_frequency()
      },
      %{
        id: "724d7b37-4510-4d90-abee-d153cd832f31",
        text: "I felt depressed",
        type: Question.type_frequency()
      }
    ]
  }
]

Enum.each(surveys, fn raw_survey ->
  survey = %Survey{
    id: raw_survey.id,
    title: raw_survey.title
  }

  Repo.insert!(survey,
    on_conflict: {:replace_all_except, [:inserted_at]},
    conflict_target: [:id]
  )

  Enum.with_index(raw_survey.questions, fn raw_question, i ->
    question = %Question{
      id: raw_question.id,
      order: i,
      survey_id: raw_survey.id,
      text: raw_question.text,
      type: raw_question.type
    }

    Repo.insert!(question,
      on_conflict: {:replace_all_except, [:inserted_at]},
      conflict_target: [:id]
    )
  end)
end)
