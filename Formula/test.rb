class Test < Formula
  desc "test desc"
  homepage ""
  url "https://github.com/ro-tex/test/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "3af5e025fe92ac0134a565988b7856bdd014eaf142a00922c2cc44e0ca3b5e90"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/ro-tex/test"
    # Copy all files from their current location (GOPATH root) to $GOPATH/src/github.com/ro-tex/test
    bin_path.install Dir["*"]
    cd bin_path do
      system "go", "build", "-o", bin/"test", "."
    end
  end

  test do
    system "#{bin}/test --help"
  end
end
