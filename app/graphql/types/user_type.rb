# app/graphql/types/user_type.rb
module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :books, [Types::BookType], null: true
    field :books_count, Integer, null: true

    def books_count
      object.books.size
    end
  end
end


# app/graphql/types/book_type.rb
module Types
  class BookType < Types::BaseObject
    field :title, String, null: false
  end
end
