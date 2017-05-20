defmodule FullContactTest do
  use ExUnit.Case

  doctest FullContact

  test "decode" do
    json = File.read! "test/data/lorangb@gmail.com.json"
    IO.inspect json
    person = FullContact.Parser.parse_person_json(json)
    IO.inspect person
  end
end
