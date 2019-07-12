# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export EDITOR='vim'

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
