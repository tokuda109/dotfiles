require 'rake'
require 'fileutils'

task :default => 'install'

desc 'Install dotfiles'
task install: [
  'install:git',
  'install:tmux',
  'install:vim',
  'install:zsh'
]

desc 'Uninstall dotfiles'
task uninstall: [
  'uninstall:git',
  'uninstall:tmux',
  'uninstall:vim',
  'uninstall:zsh'
]

namespace :install do
  task :git do
    if ! File.exist?(ENV['HOME'] + '/.gitconfig')
      sh 'ln -s `pwd`/gitconfig ~/.gitconfig'
    end
    if ! File.exist?(ENV['HOME'] + '/.gitignore')
      sh 'ln -s `pwd`/gitignore ~/.gitignore'
    end
  end

  task :tmux do
    if ! File.exist?(ENV['HOME'] + '/.tmux.conf')
      sh 'ln -s `pwd`/tmux.conf ~/.tmux.conf'
    end
    if ! File.directory?(ENV['HOME'] + '/.tmux/')
      sh 'ln -s `pwd`/tmux ~/.tmux'
    end
  end

  task :vim do
    if ! File.directory?(ENV['HOME'] + '/.config/vim/')
      sh 'ln -s `pwd`/vim ~/.config/nvim'
    end
    if ! File.directory?(ENV['HOME'] + '/.config/nvim/dein')
      sh 'mkdir `pwd`/vim/dein'
      sh 'curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh'
      sh 'sh ./installer.sh `pwd`/vim/dein'
    end
  end

  task :zsh do
    if ! File.exist?(ENV['HOME'] + '/.zlogin')
      sh 'ln -s `pwd`/zlogin ~/.zlogin'
    end
    if ! File.exist?(ENV['HOME'] + '/.zlogout')
      sh 'ln -s `pwd`/zlogout ~/.zlogout'
    end
    if ! File.exist?(ENV['HOME'] + '/.zpreztorc')
      sh 'ln -s `pwd`/zpreztorc ~/.zpreztorc'
    end
    if ! File.exist?(ENV['HOME'] + '/.zprofile')
      sh 'ln -s `pwd`/zprofile ~/.zprofile'
    end
    if ! File.exist?(ENV['HOME'] + '/.zshenv')
      sh 'ln -s `pwd`/zshenv ~/.zshenv'
    end
    if ! File.exist?(ENV['HOME'] + '/.zshrc')
      sh 'ln -s `pwd`/zshrc ~/.zshrc'
    end
    if ! File.directory?(ENV['HOME'] + '/.zsh/')
      sh 'ln -s `pwd`/zsh ~/.zsh'
    end
  end
end

desc 'Remove installed dotfiles'
namespace :uninstall do
  task :iterm do
    if File.exist?('~/Library/Preferences/com.googlecode.iterm2.plist')
      sh 'rm -f ~/Library/Preferences/com.googlecode.iterm2.plist'
    end
  end

  task :git do
    if File.exist?(ENV['HOME'] + '/.gitconfig')
      sh 'rm -f ~/.gitconfig'
    end
    if File.exist?(ENV['HOME'] + '/.gitignore')
      sh 'rm -f ~/.gitignore'
    end
  end

  task :tmux do
    if File.exist?(ENV['HOME'] + '/.tmux.conf')
      sh 'rm -f ~/.tmux.conf'
    end
    if File.directory?(ENV['HOME'] + '/.tmux/')
      sh 'rm -rf ~/.tmux'
    end
  end

  task :vim do
    if File.directory?(ENV['HOME'] + '/.vim/')
      sh 'rm -rf ~/.vim'
    end
    if File.directory?(ENV['HOME'] + '/.config/nvim/')
      sh 'rm -rf ~/.config/nvim'
    end
  end

  task :zsh do
    if File.exist?(ENV['HOME'] + '/.zlogin')
      sh 'rm -f ~/.zlogin'
    end
    if File.exist?(ENV['HOME'] + '/.zlogout')
      sh 'rm -f ~/.zlogout'
    end
    if File.exist?(ENV['HOME'] + '/.zpreztorc')
      sh 'rm -f ~/.zpreztorc'
    end
    if File.exist?(ENV['HOME'] + '/.zprofile')
      sh 'rm -f ~/.zprofile'
    end
    if File.exist?(ENV['HOME'] + '/.zshenv')
      sh 'rm -f ~/.zshenv'
    end
    if File.exist?(ENV['HOME'] + '/.zshrc')
      sh 'rm -f ~/.zshrc'
    end
    if File.directory?(ENV['HOME'] + '/.zsh/')
      sh 'rm -rf ~/.zsh'
    end
  end
end
