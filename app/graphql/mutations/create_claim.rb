# app/graphql/mutations/create_claim.rb
class Mutations::CreateClaim < Mutations::BaseMutation
  argument :fullname, String, required: true
  argument :reference, String, required: true
  argument :telnumber, String, required: true
  argument :email, String, required: true
  argument :addressline1, String, required: true
  argument :town, String, required: true
  argument :postcode, String, required: true

  field :claim, Types::ClaimType, null: false
  field :errors, [String], null: false

  def resolve(fullname:, reference:, telnumber:, email:, addressline1:, town:, postcode:)
    claim = Claim.new(fullname: fullname, reference: reference, telnumber: telnumber, email: email, addressline1: addressline1, town: town, postcode: postcode)
    if claim.save
      # Successful creation, return the created object with no errors
      {
        claim: claim,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        user: nil,
        errors: user.errors.full_messages
      }
    end
  end
end
