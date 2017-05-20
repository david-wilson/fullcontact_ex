defmodule FullContact do
  @moduledoc """
  Documentation for FullContact.
  """

  @doc """
  Hello world.

  ## Examples

      iex> FullContact.hello
      :world

  """
  def hello do
    :world
  end

  def person(identifier, options \\ []) do
    case options[:type] do
      :phone ->
        param = "phone"
      :twitter ->
        param = "twitter"
       _ ->
        param = "email"
    end 

    url =  "https://api.fullcontact.com/v2/person.json"
    params = [{param, identifier}]
    token = Application.get_env(:FullContact, :api_key) 
    headers = ["X-FullContact-APIKey": token, "Accept": "Application/json; Charset=utf-8"]
    options = [params: params]
    {:ok, response} = HTTPoison.get(url, headers, options)
    IO.inspect response
    FullContact.Parser.parse_person_json(response.body)
  end
end
