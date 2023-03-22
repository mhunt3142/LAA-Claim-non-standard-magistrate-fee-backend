module Types
  class MutationType < Types::BaseObject
    field :create_claim, mutation: Mutations::CreateClaim
  end
end
