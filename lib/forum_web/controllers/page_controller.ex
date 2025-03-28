defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Alice", age: 30, email: "alice@email.com"},
      %{id: 2, name: "Bob", age: 31, email: "bob@email.com"},
      %{id: 3, name: "Charlie", age: 32, email: "charlie@email.com"}
    ]
    json(conn, %{users: users})
  end
end
