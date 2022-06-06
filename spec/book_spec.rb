require './lib/book'

RSpec.describe Book do
before :each do
  @book = Book.new({
    author_first_name: "Harper",
    author_last_name: "Lee",
    title: "To Kill a Mockingbird",
    publication_date: "July 11, 1960"
    })
  end

  it "exists" do
    expect(@book).to be_a(Book)
  end

  it "has details" do
    expect(@book.title).to eq("To Kill a Mockingbird")
    expect(@book.publication_date).to eq("July 11, 1960")
    expect(@book.author_first_name).to eq("Harper")
    expect(@book.author_last_name).to eq("Lee")
    expect(@book.author).to eq("Harper Lee")
  end
end
