class Squeal < Formula
  desc "Test for pwned passwords and emails"
  homepage "https://github.com/ssanj/squeal"
  version "0.1.0.8"
  url "https://github.com/ssanj/squeal/releases/download/v#{version}/squeal-v#{version}-osx.tar.gz"
  sha256 "3174aec0b0a28e4b8c8ed009a3ef76112be544778dd20338742319b7a0a05d18"
  head "https://github.com/ssanj/squeal.git"

  def install
      bin.install "squeal" => "squeal"
  end

  test do
    expected_output = "#{version}"
    assert_includes shell_output("#{bin}/squeal -v"), expected_output
  end
end