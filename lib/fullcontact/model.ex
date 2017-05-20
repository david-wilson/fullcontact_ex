defmodule FullContact.Model.Person do
    @derive [Poison.Encoder]
    defstruct [:contactInfo, :demographics, :digitalFootPrints,
               :organizations, :photos, :liklihood, :socialProfiles,
               :macromeasures]
end

defmodule FullContact.Model.ContactInfo do
    @derive [Poison.Encoder]
    defstruct [:familyName, :givenName, :fullName, :middleNames, :websites, :chats]
end

defmodule FullContact.Model.Website do
    @derive [Poison.Encoder]
    defstruct [:url]
end

defmodule FullContact.Model.Chat do
    @derive [Poison.Encoder]
    defstruct [:client, :handle]
end

defmodule FullContact.Model.Demographics do
    @derive [Poison.Encoder]
    defstruct [:age, :ageRange, :children, :education, :gender, :homeOwnerStatus,
               :househildIncome, :influencesScore, :locationGeneral, :maritalStatus,
               :locationDeduced]
end

defmodule FullContact.Model.DeducedLocation do
    @derive [Poison.Encoder]
    defstruct [:liklihood, :normalizedLocation, :deducedLocation, :city, :state, :city,
               :state, :country, :continent, :county]
end

defmodule FullContact.Model.LocationEntry do
    @derive [Poison.Encoder]
    defstruct [:deduced, :name, :code]
end

defmodule FullContact.Model.DigitalFootPrints do
    @derive [Poison.Encoder]
    defstruct [:topics, :scores]
end

defmodule FullContact.Model.DigitalFootPrintsTopic do
    @derive [Poison.Encoder]
    defstruct [:value, :provider]
end

defmodule FullContact.Model.DigitalFootPrintsScore do
    @derive [Poison.Encoder]
    defstruct [:value, :provider, :type]
end

defmodule FullContact.Model.Organization do
    @derive [Poison.Encoder]
    defstruct [:name, :startDate, :current, :endDate, :title, :isPrimary]
end

defmodule FullContact.Model.Photo do
    @derive [Poison.Encoder]
    defstruct [:typeId, :typeName, :type, :url, :isPrimary]
end

defmodule FullContact.Model.SocialProfile do
    @derive [Poison.Encoder]
    defstruct [:typeId, :type, :typeName, :url, :id, :username, :bio,
               :rss, :following, :followers]
end

defmodule FullContact.Model.Macromeasures do 
    @derive [Poison.Encoder]
    defstruct [:interests]
end

defmodule FullContact.Model.Interest do 
    @derive [Poison.Encoder]
    defstruct [:name, :id, :score, :parents, :category]
end




