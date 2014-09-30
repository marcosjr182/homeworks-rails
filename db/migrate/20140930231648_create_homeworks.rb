class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :name
      t.date :deadline
      t.references :subject, index: true

      t.timestamps
    end
  end
end
