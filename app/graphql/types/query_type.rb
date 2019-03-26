module Types
  class QueryType < BaseObject
    field :all_entries, [EntryType], null: false, description: "Returns a list of all entries"

    field :single_entry, EntryType, null: true do
      description "Returns a single diary entry"
      argument :id, ID, required: true
    end

    def all_entries
      Entry.all
    end

    def single_entry(id:)
      Entry.find_by(id: id)
    end
  end
end
