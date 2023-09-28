# prtimes-hackathon

AI 秘書アプリ Sora のモバイルアプリクライアント

開発開始前に作成したドキュメントは[こちら](https://excellent-thunder-6be.notion.site/Flutter-Instruction-5998c5cba03e4e29a590ca16ab7a0e3c?pvs=4).

技術選定の意図などについて述べています. また, 参考ページなどを多数まとめています.

## 開発環境構築

Mac の場合の手順です. 特に指定しない場合, コマンドはプロジェクトルートで実行しているものとします.

### 事前に必要なもの

- [Homebrew](https://docs.brew.sh/Installation)
- Apple アカウント
- Google アカウント

### [fvm](https://fvm.app/docs/getting_started/installation)

```
brew tap leoafarias/fvm
brew install fvm
```

### Flutter

```
fvm install
```

### [Cocoapods](https://guides.cocoapods.org/using/getting-started.html)

```
sudo gem install cocoapods
```

Homebrew の Cocoapods はバージョンが古く, Flutter プロジェクトでのコマンド実行時にエラーが発生します. 最新版をインストールしてください.

### XCode

[App Store](https://apps.apple.com/us/app/xcode/id497799835?mt=12), [XCodes](https://github.com/XcodesOrg/XcodesApp/releases) 等でインストールしてください.

インストール後に `flutter doctor` を実行すると, XCode 関連のコマンドを実行するように促すメッセージが出ます. そのコマンドを実行してください.

### Android Studio

```
brew isntall --cask android-studio
```

```
fvm flutter doctor --android-licenses
```

あとは[この手順](https://zenn.dev/imasaka0909/articles/00ebfaf74f9cea)に従ってください.

## デプロイ

### iOS

```
fvm flutter build ios --release --dart-define-from-file=dart_defines/prod.json
```

### Android

```
fvm flutter build appbundle --release --dart-define-from-file=dart_defines/prod.json
```
