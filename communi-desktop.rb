require "formula"

class CommuniDesktop < Formula
  homepage "https://github.com/communi/communi-desktop"
  head "https://github.com/communi/communi-desktop.git"

  depends_on "qt5" => :build
  depends_on "libcommuni"

  def install
    ENV.deparallelize  # if your formula fails when building in parallel
    system "qmake"
    system "make", "install"
  end

  test do
    system "true"
  end
end
