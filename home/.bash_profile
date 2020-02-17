files=$(ls ~/.bash_profile.d/private/*.sh ~/.bash_profile.d/*.sh 2>/dev/null)
for file in ${files}; do
  source "${file}"
done
export PATH=$PATH:/usr/local/mysql/bin


###_begin_ttt_install_block_###
export PATH=/Users/chris.brenner/.ttt_home:$PATH
###_end_ttt_install_block_###

export BASH_SILENCE_DEPRECATION_WARNING=1

