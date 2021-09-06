# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

# Multiple platforms
# From: https://github.com/vmware-tanzu/homebrew-carvel/blob/develop/kapp.rb

class Appbrew < Formula
  desc "My description"
  homepage "kapps.dev"
  license ""
  head "https://appsyouwear.github.io/homebrew-gazelle.dev/"
  on_macos do
    if Hardware::CPU.arm?
        url "https://appsyouwear.github.io/homebrew-gazelle.dev/gaz.arm64.v0.0.1.tgz"
        sha256 "d3c6ea403ed7ce849469b2247fbcb8d95c3afc5986a48c5d7ff0ff7afe8a0245"
        license ""
    else
        url "https://appsyouwear.github.io/homebrew-gazelle.dev/gaz.amd64.v0.0.1.tgz"
        sha256 "b5adf1ae7e7845496f084922c3680282af1b5ff7f268b435e37fa708223ffe73"
        license ""
    end
  end

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "gaz"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test appbrew`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end