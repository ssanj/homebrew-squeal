class Squeal < Formula
  desc "Test for pwned passwords and emails"
  homepage "https://github.com/ssanj/squeal"
  version "0.1.0.9"
  url "https://github.com/ssanj/squeal/releases/download/v#{version}/squeal-v#{version}-osx.tar.gz"
  sha256 "c26f8f43871c10e998177110ae8f58e284092cdb6ed8da36ca96f38c46370ffe"
  head "https://github.com/ssanj/squeal.git"

  def install
      bin.install "squeal" => "squeal"
  end

  test do
    expected_output = "#{version}"
    assert_includes shell_output("#{bin}/squeal -v"), expected_output
  end
end