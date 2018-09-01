defmodule ScyllaWeb.Schema do
  use Absinthe.Schema

  alias ScyllaWeb.WMAPIResolver

  object :title do
    field :format, non_null(:string)
  end

  query do
    field :all_titles, non_null(list_of(non_null(:title))) do
      resolve &WMAPIResolver.all_titles/3
    end
  end
end
