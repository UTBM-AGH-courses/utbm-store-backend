require 'json'
require 'pg'
require 'rails'
require 'logger'

Rails.logger = Logger.new(STDOUT)

begin
    conn = PG::Connection.open(:dbname => 'db_development', :host => 'db', :user => 'postgres')
    file = File.open('/myapp/scripts/data.json')
    data = JSON.parse(File.read(file))

    data.each do |product|
        conn.exec_params('INSERT INTO products VALUES($1, $2, $3, $4, $5, $6, $7)', [product["id"], product["name"], product["description"], product["price"], product["image"], product["created_at"], product["updated_at"]])
        Rails.logger.info("Product "+ "[" +"n°" + product["id"].to_s + " | " + product["name"] + "]" + " inserted")
    end
    Rails.logger.info("Rails fully loaded and running")
rescue => exception
    Rails.logger.error(exception.to_s)
ensure
    file.close unless file.nil?
    exit
end