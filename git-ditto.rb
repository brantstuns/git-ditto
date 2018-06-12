class GitDitto < Formula
  desc "A tool to quickly add a mirrored repo to your project so you can start easily pushing two places at once 🤝"
  homepage "https://github.com/brantstuns/git-ditto"
  url "https://github.com/brantstuns/git-ditto/archive/v1.0.0.tar.gz"
  sha256 "c5bc92fc292bbcea821099d5a09ef497ae101184ef90dbc2abbefea76461b104"

  def install
   ln_sf '/usr/local/Cellar/git-ditto', '/usr/local/bin/git-ditto'
  end
end
