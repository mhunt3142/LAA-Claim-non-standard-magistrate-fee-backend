# frozen_string_literal: true

module Types
  class ClaimType < Types::BaseObject
    field :id, ID, null: false do
      description 'claim  id'
    end
    field :fullname, String, null: true do
      description 'solicitors full name'
    end
    field :reference, String, null: true do
      description 'solicitors reference'

    end
    field :telnumber, String, null: true do
      description 'solicitors phone number'
    end
    field :email, String, null: true do
      description 'solicitors email'
    end
    field :addressline1, String, null: true do
      description 'solicitors first line of address'
    end

    field :town, String, null: true do
      description 'solicitors town or city'
    end
    field :postcode, String, null: true do
      description 'solicitors postcode'
    end
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def total_count
      object.nodes.size
    end
  end
end
