# swift-rock-paper-scissors

A demo Swift application (CLI and web) that generates Rock-Paper-Scissors responses.  Runs on Linux.

## How to run it

- Using [Vagrant](http://vagrantup.com), you can use the `ubuntu/trusty64` box.
- Alternatively, set up your own 14.04 or 15.04 64-bit Linux VM

## Installing base packages

For basic Swift usage on Linux, install these packages:

```
sudo apt-get update
sudo apt-get install -y git clang libicu-dev
```

To use [Kitura](http://kitura.io), you'll need to install a couple more packages:

```
sudo apt-get install -y libcurl4-openssl-dev uuid-dev
```

## Setting up Vim for Swift development

I've prepared a minimal [.vimrc](https://gist.githubusercontent.com/subdigital/d533871b25e96a55cf31/raw/a645c120c2ccf69a02959a9af2489a9deebeab91/minimal-vim.sh) to work on Swift with vim without pulling your hair out. 

If you're feeling trustworthy, you can install it directly:

```
curl https://gist.githubusercontent.com/subdigital/d533871b25e96a55cf31/raw/a645c120c2ccf69a02959a9af2489a9deebeab91/minimal-vim.sh | bash
```

## Downloading Swift

Next, download and extract the latest swift download for your version of linux from [Swift.org](http://swift.org).

You'll need to extract this to a folder.  I chose:

```
/home/vagrant/swift-3.0
```

Finally, add this to your `PATH` by adding the following line to your `.profile`:

```
export PATH="/home/vagrant/swift-3.0:$PATH"
```

## Running the Command Line App

Type `swift build` in the project folder to build it.  You should get a `.build/debug/rps` binary.

Running this, you can get output on the command line:

```
.build/debug/rps
```

You can also pass the `--mode spock` to change the game mode to [Rock Paper Scissors Lizard Spock](http://rpsls.net/#7v018).

## Running on the web

You can pass the `--web` flag to start a web server.  You'll likely need to forward a port from your host machine to access it.

