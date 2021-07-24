# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Appbrew < Formula
  desc "My description"
  homepage "kapps.dev"
  on_macos do
    if Hardware::CPU.arm?
        url "https://github.com/JCzz/homebrew-appbrew/releases/download/v0.0.52/appbrew.v0.0.52.tgz"
        sha256 "1f7e21fcf3891f06a9f14b8d439e919353f9bd24cb23867b4706da11e9fd45a9"
        license ""
    else
        url "https://github.com/JCzz/homebrew-appbrew/releases/download/v0.0.52/appbrew.v0.0.52.tgz"
        sha256 "1f7e21fcf3891f06a9f14b8d439e919353f9bd24cb23867b4706da11e9fd45a9"
        license ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
        url "https://github.com/JCzz/homebrew-appbrew/releases/download/v0.0.52/appbrew.v0.0.52.tgz"
        sha256 "1f7e21fcf3891f06a9f14b8d439e919353f9bd24cb23867b4706da11e9fd45a9"
        license ""
    else
        url "https://github.com/JCzz/homebrew-appbrew/releases/download/v0.0.52/appbrew.v0.0.52.tgz"
        sha256 "1f7e21fcf3891f06a9f14b8d439e919353f9bd24cb23867b4706da11e9fd45a9"
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
    bin.install "appbrew"
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
