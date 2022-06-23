# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kusa < Formula
  desc "Kusa is a CLI application that displays the Github Contributions Graph."
  homepage "https://github.com/Ryu0118/Kusa"
  url "https://github.com/Ryu0118/Kusa/archive/0.0.1.tar.gz"
  sha256 "d895a8ed694ab93b85ed75e4dd8078eafc42a5c0fa1ccc52823fa62f2977d2cf"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method

    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "kusa"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Kusa`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
