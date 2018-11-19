Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :users, !types[Users::UserType] do
    resolve -> (obj, args, ctx) {
      User.all
    }
  end
end