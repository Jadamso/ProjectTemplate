# ProjectTemplate
Templates and Functions for Standardized Research Projects


## Initial Instructions

To clone this repo to the current directory
```bash
git clone https://github.com/Jadamso/ProjectTemplate.git
```

make `FolderMaker` program to be in path

```bash
cp ./FolderMaker $HOME/Programs
# (Alternative symbolic link) ln -sf ./FolderMaker $HOME/Programs/FolderMaker
```
## 

## Templates

make Latex templates  to be in copyable Directory
```bash
cp -r ./LatexTemplate $HOME/Desktop/Common/Latex
```

make GitTemplate to be in copyable Directory
```bash
cp -r ./GitTemplate $HOME/Desktop/Common
```

code templates for submitting batch jobs on a cluster,
```bash
## added to project code directories
cp ./ALLBLOCKS.sh RBLOCK_INFO.R  $HOME/Desktop/Common
## added to path for related programs
cp ./Code ./Code2 ./CodeSub ./CodeSub2 $HOME/Programs
cp ./QSUBfunctions.sh $HOME/Desktop/Common
cp RSYNCexcludes.txt $HOME/Desktop/Common
```


## How to Use

Either copy the folders or run the program

i.e. `FolderMaker -p NewProject` creates NewProject folder


#### For standardized research project directory

```bash
cp -r $HOME/Desktop/Common/PaperTemplate/* .
```
note that if collaborators use `natbib` rather than `biber`, you need to code out some lines from `Writing/SetupDefs.sty` i.e. `\RequirePackage[ backend=biber,...`


    
#### For a standardized Rpackage directory
```bash
cp -r $HOME/Desktop/Common/GitTemplate/* .
```

If all R_codes are in `Code/R_Code` 
you can quickly create Rpackages with `R CMD BATCH --no-save Code/Make.R Code/Make.Rout`
Alternatively add the following alias to `~/.bashrc` and call `mrp`
```bash
alias mrp='R CMD BATCH --no-save Code/Make.R Code/Make.Rout'
```

