ZSHDHOME="$HOME/.config/zsh/.zsh.d";

source $ZSHDHOME/test.zsh

# if [ -d $ZSHDHOME -a -r $ZSHDHOME -a -x $ZSHDHOME ]; then
    for i in $ZSHDHOME/*; do
        [[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
# fi