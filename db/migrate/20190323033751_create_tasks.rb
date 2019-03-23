class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :start
      t.datetime :end
      t.boolean :done

      t.timestamps
    end
  end
end
