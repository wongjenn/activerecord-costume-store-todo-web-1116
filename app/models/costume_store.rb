# Create your CostumeStore class here
class CostumeStore < ActiveRecord::Base
  def self.create_table
    sql=<<-SQL
    CREATE TABLE IF NOT EXISTS costume_stores (
      id INTEGER PRIMARY KEY,
      name TEXT,
      location TEXT,
      costume_inventory INTEGER,
      num_of_employees INTEGER,
      still_in_business BOOLEAN,
      opening_time DATETIME,
      closing_time DATETIME,
      create_at DATETIME,
      updated_at DATETIME,
    )
    SQL

    connection = ActiveRecord::Base.connection.execute(sql)
  end
end
