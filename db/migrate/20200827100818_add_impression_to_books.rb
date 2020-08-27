class AddImpressionToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :impression, :string
  end
end
