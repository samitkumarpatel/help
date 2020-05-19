### svn-git migration 

*Tools to be Installed*

```
apt-get install git-svn
or
dnf install git-svn
or
find out a command based on your unix distro
```

*Migration Step by Steps*

```
cd to/expected_checkout_folder
svn co svn://svn.url/trunk checkout_folder_name
cd checkout_folder_name
svn log -q | awk -F '|' '/^r/ {sub("^ ", "", $2); sub(" $", "", $2); print $2" = "$2" <"$2">"}' | sort -u > somewhere/authors-transform.txt
cd ..
git svn clone svn://svn.url/trunk/ --no-metadata -A somewhere/authors-transform.txt ~/to/expected_checkout_folder/myml_trunk_git
cd ~/to/expected_checkout_folder/myml_trunk_git
git svn show-ignore > .gitignore
git add .
git commit -m 'commit message'
```
