class HauntedHouse < ActiveRecord::Base
  def self.create_table
    sql=<<-SQL
    CREATE TABLE IF NOT EXISTS haunted_houses (
      id INTEGER PRIMARY KEY,
      name TEXT,
      location TEXT,
      theme TEXT,
      price REAL,
      family_friendly BOOLEAN,
      opening_date DATETIME,
      closing_date DATETIME,
      description TEXT,
      created_at DATETIME,
      updated_at DATETIME
    )
    SQL

    connection = ActiveRecord::Base.connection.execute(sql)
  end
end
