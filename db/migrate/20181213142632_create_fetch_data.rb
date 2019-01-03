class CreateFetchData < ActiveRecord::Migration[5.2]
  def change
    create_table :fetch_data do |t|

      t.timestamps
    end
  end
end
