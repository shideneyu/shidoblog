class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.article_id :integer
      t.string :author_email
      t.string :author_name
      t.text :content

      t.timestamps
    end
  end
end
