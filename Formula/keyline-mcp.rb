# Updated by keyline's release workflow (keyline-dev/keyline); don't edit by hand.
class KeylineMcp < Formula
  desc "Design engine for AI agents: images and video at every size, no Chrome needed"
  homepage "https://keyline.dev"
  url "https://github.com/keyline-dev/keyline/releases/download/v0.7.0/keyline-mcp-v0.7.0-macos-arm64.tar.gz"
  version "0.7.0"
  sha256 "12ebcf2360c8887d5d6ca04d248e0215d66a888a75cb33b52edaff7c023e68d6"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "keyline-mcp"
  end

  def caveats
    <<~EOS
      Add it to your MCP client, e.g. Claude Code:
        claude mcp add keyline -- keyline-mcp
      Video (MP4, WebM, clips) needs ffmpeg:
        brew install ffmpeg
    EOS
  end

  test do
    assert_match "keyline-mcp", shell_output("#{bin}/keyline-mcp --help")
  end
end
