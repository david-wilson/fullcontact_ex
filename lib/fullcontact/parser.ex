defmodule FullContact.Parser do
    alias FullContact.Model.Person
    alias FullContact.Model.ContactInfo
    alias FullContact.Model.Website
    alias FullContact.Model.Chat
    alias FullContact.Model.Demographics
    alias FullContact.Model.DeducedLocation
    alias FullContact.Model.LocationEntry
    alias FullContact.Model.DigitalFootPrints
    alias FullContact.Model.DigitalFootPrintsScore
    alias FullContact.Model.DigitalFootPrintsTopic
    alias FullContact.Model.Organization
    alias FullContact.Model.Photo
    alias FullContact.Model.SocialProfile
    alias FullContact.Model.Macromeasures
    alias FullContact.Model.Interest

    def parse_person_json(json) do
        Poison.decode!(json, 
            as: %Person{contactInfo: %ContactInfo{websites: [%Website{}], chats: [%Chat{}]},
            demographics: %Demographics{locationDeduced: %DeducedLocation{city: %LocationEntry{},
                state: %LocationEntry{},
                country: %LocationEntry{},
                continent: %LocationEntry{},
                county: %LocationEntry{}}},
            digitalFootPrints: %DigitalFootPrints{topics: %DigitalFootPrintsTopic{}, scores: %DigitalFootPrintsScore{}},
            organizations: [%Organization{}],
            photos: [%Photo{}],
            socialProfiles: [%SocialProfile{}],
            macromeasures: %Macromeasures{interests: [%Interest{}]}})
    end
end