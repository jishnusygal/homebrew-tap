class TerraformDocsExtended < Formula
  desc "Extended Terraform module documentation generator with Usage block segregation"
  homepage "https://github.com/jishnusygal/terraform-docs-extended"
  url "https://github.com/jishnusygal/terraform-docs-extended/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "00000000000000000000000000000000000000000000000000" # This will be updated after the first real release
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
