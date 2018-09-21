# bash-primer

A Lab to prime your skills in using the Linux/mac OSX command line (bash)

![Final Environment](https://user-images.githubusercontent.com/3911650/45897131-855b5e80-bd93-11e8-80ab-cd117fb69685.png)

## Getting Started

An Azure RM template is included in `infrastructure/` to create the environment:

<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Flrakai%2Fbash-primer%2Fmaster%2Finfrastructure%2Farm-template.json">
    <img src="https://camo.githubusercontent.com/536ab4f9bc823c2e0ce72fb610aafda57d8c6c12/687474703a2f2f61726d76697a2e696f2f76697375616c697a65627574746f6e2e706e67" data-canonical-src="http://armviz.io/visualizebutton.png" style="max-width:100%;">
</a> 

Using Azure PowerShell, do the following to provision the resources:

```ps1
.\startup.ps1
```

Alternatively, you can perform a one-click deploy with the following button:

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Flrakai%2Fbash-primer%2Fmaster%2Finfrastructure%2Farm-template.json">
    <img src="https://camo.githubusercontent.com/9285dd3998997a0835869065bb15e5d500475034/687474703a2f2f617a7572656465706c6f792e6e65742f6465706c6f79627574746f6e2e706e67" data-canonical-src="http://azuredeploy.net/deploybutton.png" style="max-width:100%;">
</a>

## Following Along

1. Assign the `my_path` variable a value of `/home`:

    ```sh
    my_path=/home
    ```

1. Print the value stored in `my_path`:

    ```sh
    echo $my_path
    ```

1. List the contents of `/home` using the `my_path` variable:

    ```sh
    ls $my_path
    ```

1. Assign the value of `/` (root directory) to `my_path`:

    ```sh
    my_path=/
    ```

1. List the contents of the directory stored in `my_path`:

    ```sh
    ls $my_path
    ```

1. Type `echo $` then press tab twice to list all the currently defined variables.

1. Type `y` to confirm that you want to see all the possible completions:

    Some worth knowing are
    - $HOME: Home directory path
    - $HOSTNAME: Name of the Linux host/machine
    - $PATH: A list of paths that are separated by colons. Whenever you enter a command these paths are automatically searched to find the corresponding command binary to run. Without the $PATH variable, you would need to give complete paths instead of just the name of the command. For example, rather than /bin/ls, you can enter ls because /bin is in your $PATH.
    - $SHELL: Path to the shell binary of your current shell (/bin/bash in the case of this Lab)
    - $USER: Name of the logged in user

1. Store the the date in a variable called current_date:

    ```sh
    current_date=$(date)
    ```

1. Output the value of the current_date variable:

    ```sh
    echo $current_date
    ```

## Tearing Down

When finished, remove the Azure resources with:

```ps1
.\teardown.ps1
```
