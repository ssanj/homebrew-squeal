class Squeal < Formula
  desc "Test for pwned passwords and emails"
  homepage "https://github.com/ssanj/squeal"
  version "0.1.0.1"
  url "https://github.com/ssanj/squeal/releases/download/v#{version}/squeal-v#{version}-osx.tar.gz"
  sha256 "d6f0c4113daec4621e22edb5d41f81815343b7d626df1b306b7bb7e715f74a56"
  head "https://github.com/ssanj/squeal.git"

  def install
      bin.install "squeal" => "squeal"
  end

  test do
    expected_output = "#{version}"
    assert_includes shell_output("#{bin}/squeal -v"), expected_output
  end
end