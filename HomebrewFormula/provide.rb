class Squeal < Formula
  desc "Test for pwned passwords and emails"
  homepage "https://github.com/ssanj/squeal"
  version "0.1.0.1"
  url "https://github.com/ssanj/squeal/releases/download/v#{version}/squeal-v#{version}-osx.tar.gz"
  sha256 "75cddf6d66d6b39ed5dbc79e63f53a78507b2dbc93c5d608052573f467974b6b "
  head "https://github.com/ssanj/squeal.git"

  def install
      bin.install "squeal" => "squeal"
  end

  test do
    expected_output = "#{version}"
    assert_includes shell_output("#{bin}/squeal -v"), expected_output
  end
end