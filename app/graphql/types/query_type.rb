module Types
  class QueryType < Types::BaseObject

    field :claims, [Types::ClaimType, null: true], null: false
    def claims(**_args)
      Claim.all
    end

    field :claims_connection, Types::ClaimsConnection, null: false, connection: true
    def claims_connection(**_args)
      Claim.all
    end
  end
end
