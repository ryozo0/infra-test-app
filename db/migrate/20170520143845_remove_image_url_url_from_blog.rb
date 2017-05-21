class RemoveImageUrlUrlFromBlog < ActiveRecord::Migration[5.0]
  def change
    remove_column :blogs, :img_url, :string
  end
end
