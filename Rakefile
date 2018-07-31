require 'rake'
require 'fileutils'

task :default => 'install'

desc 'Install dotfiles'
task install: [
  'install:iterm',
  'install:git',
  'install:tmux',
  'install:vim',
  'install:zsh'
]

namespace :install do
  task :iterm do
    if ! File.exist?('~/Library/Preferences/com.googlecode.iterm2.plist')
      sh "cp ./iterm2/com.googlecode.iterm2.plist ~/Library/Preferences"
    end
  end

  task :git do
    if ! File.exist?(ENV["HOME"] + '/.gitconfig')
      sh "ln -s `pwd`/gitconfig ~/.gitconfig"
    end
    if ! File.exist?(ENV["HOME"] + '/.gitignore')
      sh "ln -s `pwd`/gitignore ~/.gitignore"
    end
  end

  task :tmux do
    if ! File.exist?(ENV["HOME"] + '/.tmux.conf')
      sh "ln -s `pwd`/tmux.conf ~/.tmux.conf"
    end
    if ! File.directory?(ENV["HOME"] + '/.tmux/')
      sh "ln -s `pwd`/tmux ~/.tmux"
    end
  end

  task :vim do
    if ! File.exist?(ENV["HOME"] + '/.vimrc')
      sh "ln -s `pwd`/vimrc ~/.vimrc"
    end
    if ! File.directory?(ENV["HOME"] + '/.vim/')
      sh "ln -s `pwd`/vim ~/.vim"
    end
    if ! File.directory?(ENV["HOME"] + '/.vim/dein')
      sh "mkdir `pwd`/vim/dein"
      sh "curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh"
      sh "sh ./installer.sh `pwd`/vim/dein"
    end
  end

  task :zsh do
    if ! File.exist?(ENV["HOME"] + '/.zlogin')
      sh "ln -s `pwd`/zlogin ~/.zlogin"
    end
    if ! File.exist?(ENV["HOME"] + '/.zlogout')
      sh "ln -s `pwd`/zlogout ~/.zlogout"
    end
    if ! File.exist?(ENV["HOME"] + '/.zpreztorc')
      sh "ln -s `pwd`/zpreztorc ~/.zpreztorc"
    end
    if ! File.exist?(ENV["HOME"] + '/.zprofile')
      sh "ln -s `pwd`/zprofile ~/.zprofile"
    end
    if ! File.exist?(ENV["HOME"] + '/.zshenv')
      sh "ln -s `pwd`/zshenv ~/.zshenv"
    end
    if ! File.exist?(ENV["HOME"] + '/.zshrc')
      sh "ln -s `pwd`/zshrc ~/.zshrc"
    end
    if ! File.directory?(ENV["HOME"] + '/.zsh/')
      sh "ln -s `pwd`/zsh ~/.zsh"
    end
  end
end

desc 'Remove installed dotfiles'
namespace :uninstall do
end

desc 'Update tasks'
namespace :update do
end
