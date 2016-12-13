class Costume < ActiveRecord::Base
  def self.create_table
    sql=<<-SQL
    CREATE TABLE IF NOT EXISTS costumes (
      id INTEGER PRIMARY KEY,
      name TEXT,
      price REAL,
      size TEXT,
      image_url TEXT,
      create_at DATETIME,
      updated_at DATETIME,
    )
    SQL

    connection = ActiveRecord::Base.connection.execute(sql)
  end
end
# It should inherit from ActiveRecord::Base
