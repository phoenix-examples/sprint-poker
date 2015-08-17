defmodule PlanningPoker.GameUser do
  use PlanningPoker.Web, :model

  schema "game_user" do
    belongs_to :game, PlanningPoker.Game, type: :binary_id
    belongs_to :user, PlanningPoker.User, type: :binary_id

    timestamps
  end

  @required_fields ~w(game_id user_id)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
