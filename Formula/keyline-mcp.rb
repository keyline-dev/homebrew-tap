# Updated by keyline's release workflow (keyline-dev/keyline); don't edit by hand.
class KeylineMcp < Formula
  desc "Design engine for AI agents: images at every size, no Chrome, 2× fewer tokens"
  homepage "https://keyline.dev"
  url "https://github.com/keyline-dev/keyline/releases/download/v0.8.0/keyline-mcp-v0.8.0-macos-arm64.tar.gz"
  version "0.8.0"
  sha256 "850cc6c4b630890bf4ecc174bc9622354b20cab799c640d1d68f577a53374ccc"
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
