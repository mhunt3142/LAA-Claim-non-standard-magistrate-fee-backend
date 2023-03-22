# frozen_string_literal: true

class ClaimsEdgeType < GraphQL::Types::Relay::BaseEdge
  node_type(Types::ClaimType)
end

class Types::ClaimsConnection < GraphQL::Types::Relay::BaseConnection
  field :total_count, Integer, null: false
  def total_count
    object.nodes.size
  end
  edge_type(ClaimsEdgeType)
end
