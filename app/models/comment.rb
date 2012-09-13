class Comment < ActiveRecord::Base
  belongs_to :article
  attr_accessible :author_email, :author_name, :content
end
