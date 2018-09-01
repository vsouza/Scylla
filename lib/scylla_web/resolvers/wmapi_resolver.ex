defmodule ScyllaWeb.WMAPIResolver do
  alias Scylla.Title

  def all_titles(_root, _args, _info) do
    titles = Title.list_titles()
    {:ok, titles}
  end
end
