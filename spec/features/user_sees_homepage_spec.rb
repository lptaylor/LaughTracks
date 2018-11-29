RSpec.describe 'A visitor to our app' do
  it 'should see a homepage' do
    visit '/comedians'

    expect(page).to have_content("Laugh Tracks")
  end

  it 'should see a list of comedians' do
    comedian = Comedian.create(name: "John Doe", age: 0, city: "Nowhereseville")
    visit '/comedians'

    within (".comedian-#{comedian.id}") do
      expect(page).to have_content(comedian.name)
      expect(page).to have_content("Age: #{comedian.age}")
      expect(page).to have_content("City: #{comedian.city}")
    end
  end

  it 'should see a list of the comedians specials' do
    comedian = Comedian.create(name: "John Doe", age: 0, city: "Nowhereseville")
    Comedian.find_by(name: "John Doe").specials.create([{name: "Tacos the Unvarnished Truth"}])

    visit '/comedians'

    expect(page).to have_content(comedian.specials.first.name)
  end
end
