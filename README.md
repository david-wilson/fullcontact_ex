# FullContactEx

Simple Elixir wrapper for [FullContact](https://www.FullContact.com/developer/docs/) APIs. Initially supports Person API, others to come as time allows.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `FullContact_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:FullContact_ex, "~> 0.0.1"}]
end
```

Add your API key to your config.exs file:
```
config :FullContact,
    api_key: "YOUR KEY HERE"
```

If you don't have an API get, you can get a free one [here](https://portal.fullcontact.com/signup).

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/FullContact_ex](https://hexdocs.pm/FullContact_ex).

