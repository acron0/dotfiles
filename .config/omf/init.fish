function gs
    git status
end

function gp
    git pull
end

function release
    env GIT_ALLOW_MASTER=1 lein release
end

function git-branches
     for x in (ls -d */)
      pushd $x;
      if test -d .git
         set branch (git rev-parse --abbrev-ref HEAD);
         printf "%-30s " $x;
         if not test $branch = "master"
            set_color red;
         else
            set_color green;
         end
         printf $branch;
         printf "\n";
         set_color normal;
      end
      popd;
    end
end

set -g theme_complete_path yes
set -g theme_display_time yes
set -g theme_display_group no
