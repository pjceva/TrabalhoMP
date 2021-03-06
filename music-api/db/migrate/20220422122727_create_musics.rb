# frozen_string_literal: true

# cria uma musica no banco de dados, passando nome e numero de likes, possui ligação com genero e artista
class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :name
      t.integer :likes
      t.references :artist, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      # t.references :favorite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
