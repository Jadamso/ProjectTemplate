# ProjectTemplate
Templates and Functions for Standardized Research Projects


## Initial Instructions


Clone this repo

```bash
https://github.com/Jadamso/ProjectTemplate.git
```

make `FolderMaker` program to be in path

```bash
cp ./FolderMaker $HOME/Programs
# (Alternative symbolic link) ln -sf ./FolderMaker $HOME/Programs/FolderMaker
```

make GitTemplate to be in copyable Directory

```bash
cp -r ./GitTemplate $HOME/Desktop/Common
```


code templates for submitting batch jobs on a cluster,
often added to project code directories
```bash
cp ./Code ./Code2 ./CodeSub ./CodeSub2 $HOME/Programs
cp -r ./ALLBLOCKS.sh ./QSUBfunctions.sh $HOME/Desktop/Common

```

## How to Use

To Create a standardized research project directory

```bash
FolderMaker NewProject
```

To Create a standardized Rpackage in the current directory
```bash
cp -r $HOME/Desktop/Common/GitTemplate/* .
```

If all R_codes are in `Code/R_Code` 
you can quickly create Rpackages with `R CMD BATCH --no-save Code/Make.R Code/Make.Rout`
Alternatively add the following alias to `~/.bashrc` and call `mrp`
```bash
alias mrp='R CMD BATCH --no-save Code/Make.R Code/Make.Rout'
```

## How to Use


