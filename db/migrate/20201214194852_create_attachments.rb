class CreateAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :attachments do |t|
      t.string :article_id
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end

# def change
#   add_column :articles, :image_file_name, :string
#   add_column :articles, :image_content_type, :string
#   add_column :articles, :image_file_size, :integer
#   add_column :articles, :image_updated_at, :datetime
# end