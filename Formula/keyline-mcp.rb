# Updated by keyline's release workflow (keyline-dev/keyline); don't edit by hand.
class KeylineMcp < Formula
  desc "Design engine for AI agents: images and video at every size, no Chrome needed"
  homepage "https://keyline.dev"
  url "https://github.com/keyline-dev/keyline/releases/download/v0.6.0/keyline-mcp-v0.6.0-macos-arm64.tar.gz"
  version "0.6.0"
  sha256 "71bbedab8a704a7255d46fa4675b7179413fe27a109c2558c91410da94428240"
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
