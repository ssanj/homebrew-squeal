class Squeal < Formula
  desc "Test for pwned passwords and emails"
  homepage "https://github.com/ssanj/squeal"
  version "0.2.0.1"
  url "https://github.com/ssanj/squeal/releases/download/v#{version}/squeal-v#{version}-osx.tar.gz"
  sha256 "596980b5c6df9429612855abe6e5ff63352c934d42bd382a7d99d9626a3bb84c"
  head "https://github.com/ssanj/squeal.git"

  def install
      bin.install "squeal" => "squeal"
  end

  test do
    expected_output = "#{version}"
    assert_includes shell_output("#{bin}/squeal -v"), expected_output
  end
end