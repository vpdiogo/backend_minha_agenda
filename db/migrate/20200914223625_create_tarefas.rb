class CreateTarefas < ActiveRecord::Migration[5.1]
  def change
    create_table :tarefas do |t|
      t.string :name
      t.date :data
      t.date :hora
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
