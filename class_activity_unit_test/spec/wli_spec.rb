require "../wli.rb"

describe Wli do
  it "zero_like_text" do
    wli = Wli.new

    likes = wli.likes

    expect(likes).to eq("no one likes this")
  end

  it "one_like_text" do
    wli = Wli.new
    wli.names = ["Peter"]

    likes = wli.likes

    expect(likes).to eq("Peter likes this")
  end

  it "two_likes_text" do
    wli = Wli.new
    wli.names = ["Resha", "Ridho"]

    likes = wli.likes

    expect(likes).to eq("Resha and Ridho like this")
  end

  it "three_likes_text" do
    wli = Wli.new
    wli.names = ["Ren", "Raz", "Ridart"]

    likes = wli.likes

    expect(likes).to eq("Ren, Raz and Ridart like this")
  end

  it "min_four_likes_text" do
    wli = Wli.new
    wli.names = ["Ren", "Raz", "Resha", "Ridart", "Ridho"]

    likes = wli.likes

    expect(likes).to eq("Ren, Raz and 3 others like this")
  end
end
