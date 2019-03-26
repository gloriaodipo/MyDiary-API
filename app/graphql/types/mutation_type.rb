module Types
  class MutationType < BaseObject
    field :create_entry, mutation: Mutations::CreateEntry
  end
end
