class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :title
      t.attachment :content
      t.timestamps
    end
  end
end
