describe "GET data" do
  context "no data" do
    it "returns no data" do
      visit "/"
      expect(page).to have_content("No data here")
    end
  end
end
