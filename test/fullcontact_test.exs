defmodule FullContactTest do
  use ExUnit.Case

  doctest FullContact

  test "decode" do
    json = File.read! "test/data/lorangb@gmail.com.json"
    person = FullContact.Parser.parse_person_json(json)
    assert person.contactInfo.fullName == "Bart Lorang"
  end
end
