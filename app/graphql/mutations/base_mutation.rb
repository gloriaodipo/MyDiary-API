#This is the parent class for all mutations, contains all common utilities
module Mutations
  class BaseMutation < GraphQL::Schema::Mutation
    null false
  end
end
