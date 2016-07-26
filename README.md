# Tester Interview Client

## Setup

### Ubuntu

```
sudo apt-get install libqt4-dev libqtwebkit-dev xvfb
```

### Mac
Needs Xcode installed (App Store)

```
brew tap homebrew/versions
brew install qt55
brew link --force qt55
```

## To run specs

To run the specs:

1. `bundle install`
2. `export ACTIONS_SERVER_URL=http://localhost:3000` or *hosted server address*.
3. `xvfb-run -a bundle exec rspec actions_spec.rb`
