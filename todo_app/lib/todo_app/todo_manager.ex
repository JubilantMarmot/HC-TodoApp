defmodule TodoApp.TodoManager do
  alias TodoApp.{Repo, Todo}

  def list_todos do
    Repo.all(Todo)
  end

  def get_todo!(id) do
    Repo.get!(Todo, id)
  end

  def create_todo(attrs \\ %{}) do
    %Todo{}
    |> Todo.changeset(attrs)
    |> Repo.insert()
  end

  def update_todo(%Todo{} = todo, attrs) do
    todo
    |> Todo.changeset(attrs)
    |> Repo.update()
  end

  def delete_todo(%Todo{} = todo) do
    Repo.delete(todo)
  end
end
