module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :restaurants, [RestaurantType], null: false,
      description: "A List of Restaurants" do 
        argument :location, String, required: false
        argument :description, String, required: false
      end

    def restaurants(location: nil , description: "lunch")
      location ||= context[:logged_in_user].zipcode
      Restaurant.search(location,description)
    end
  end
end
