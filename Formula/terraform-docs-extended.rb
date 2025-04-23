class TerraformDocsExtended < Formula
  desc "Extended Terraform module documentation generator with Usage block segregation"
  homepage "https://github.com/jishnusygal/terraform-docs-extended"
  url "https://github.com/jishnusygal/terraform-docs-extended/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bb6f1b6ba90e17b97670583fd8c8a3db5e75b750aa8316e5e8517f2db3e8b99d"
  license "MIT"
  head "https://github.com/jishnusygal/terraform-docs-extended.git", branch: "main"

  depends_on "go" => :build
  depends_on "terraform-docs"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=0.1.0")
  end

  test do
    system "#{bin}/terraform-docs-extended", "--version"
  end
end