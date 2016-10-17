describe "Configuration" do
  context "Port" do
    it "the cuurent port is localhost 4000" do
      visit "http://localhost:4000/"
      expect(page).to have_content("No data")
    end
  end
end

describe "GET data" do
  context "no data" do
    it "returns no data" do
      visit "/"
      expect(page).to have_content("No data")
    end
  end

  context "add data" do
    before do
      $db = {:name => 'Lawrence', :age => '29'}
    end

    it "returns all the todos" do
      visit "/get?key=:name"
      expect(page).to have_content "Lawrence"
    end
  end

  describe "SET data" do
    before do
      $db = {}
    end
    context "add data" do
      it "adds data to db" do
        visit "/set?name=Joe"
        expect($db.count).to eq("1")
      end
    end
  end


end
