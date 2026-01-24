function fish_greeting
    set -l msg \
        "ga  is alias for git add" \
        "gcm is alias for git commit -m" \
        "gst is alias for git status" \
        "gp  is alias for git push" \
        "update is alias for sudo pacman -Sy" \
        "upgrade is alias for sudo pacman -S" \
        "Nice day for fishing ain't it" \
        "Lets Code" \
        "Think before messing up packages" \
        "Do I really need to -S this?" \
        "Is this setup Reincarnation Ready?"
        
    echo (set_color cyan)(random choice $msg)(set_color normal)
end