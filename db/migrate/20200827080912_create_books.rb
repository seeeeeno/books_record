class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :page
      t.string :publisher
      t.date :started_at
      t.date :finished_at
      t.timestamps
    end
  end
end
