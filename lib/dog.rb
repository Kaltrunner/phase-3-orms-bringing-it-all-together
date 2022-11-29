class Dog

    describe ".create_table" do
        it 'creates the dogs table in the database' do
          DB[:conn].execute("DROP TABLE IF EXISTS dogs")
          Dog.create_table
          table_check_sql = "SELECT tbl_name FROM sqlite_master WHERE type='table' AND tbl_name='dogs';"
          expect(DB[:conn].execute(table_check_sql)[0]).to eq(['dogs'])
        end
      end

end
