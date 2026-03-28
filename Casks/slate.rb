cask "slate" do
  version "1.3"
  sha256 "04db60efcc7f4eb9eca8e7b6a61887831351b962875380e3183dd1bab3501278"

  url "https://github.com/dominikstraub/slate/releases/download/v#{version}/Slate.dmg"
  name "Slate"
  desc "Window management application"
  homepage "https://github.com/dominikstraub/slate"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Slate.app"

  zap trash: [
    "~/Library/Application Support/com.slate.Slate",
  ]
end
