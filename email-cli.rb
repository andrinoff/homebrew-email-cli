# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class EmailCli < Formula
  desc "A beautiful and functional email client for your terminal"
  homepage "https://github.com/andrinoff/email-cli"
  url "" 
  sha256 ""
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # This is a basic test to check if the binary is executable and returns the version.
    # You might want to expand this with more specific tests.
    assert_match "email-cli version", shell_output("#{bin}/email-cli --version")
  end
end