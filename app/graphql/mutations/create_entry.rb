module Mutations
  class CreateEntry < BaseMutation
    argument :title, String, required: true
    argument :description, String, required: true

    type Types::EntryType

    def resolve(title: nil, description: nil)
      Entry.create!(
        title: title,
        description: description
      )
    end
  end
end