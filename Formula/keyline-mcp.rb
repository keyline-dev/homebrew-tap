# Updated by keyline's release workflow (keyline-dev/keyline); don't edit by hand.
class KeylineMcp < Formula
  desc "AI-native design engine: agents design over MCP, keyline renders every size"
  homepage "https://keyline.dev"
  url "https://github.com/keyline-dev/keyline/releases/download/v0.4.1/keyline-mcp-v0.4.1-macos-arm64.tar.gz"
  version "0.4.1"
  sha256 "666683881713cd8cb8ac82ccdbfc5881bf69a73c5664ae1e91b70a1db4f63195"
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
