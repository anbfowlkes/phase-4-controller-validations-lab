class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
    validates :content, length: { minimum: 100 }


    # validate :cat_check

    # def cat_check
    #     if category != "Fiction" && category != "Non-Fiction"
    #         errors.full_messages
    #     end
    # end
end
