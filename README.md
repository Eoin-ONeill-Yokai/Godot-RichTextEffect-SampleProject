## Godot: `RichTextEffect` Testing Project:
This is a test project for the new Godot feature `RichTextEffect` ([PR](https://github.com/godotengine/godot/pull/23658)) which is now released with Godot 3.2. This project serves as a test bed for the `RichTextEffects` feature that has been added to `RichTextLabel`. It also helps to test for regressions or inconsistencies in `RichTextLabel` behavior. For more details regarding the `RichTextEffect` feature, please click the link to the pull request above.

## Installation (with Godot 3.2+):

Assuming you have Godot 3.2 installed, you can simply clone this project

```

git clone git@github.com:Eoin-ONeill-Yokai/Godot-Rich-Text-Effect-Test-Project.git ./rich-text-samples

```

... and then import the directory as a Godot project or via Godot's CLI (see the [Godot Game Engine documentation](https://docs.godotengine.org/en/3.2/index.html) for more details.) 

## Installation (with Godot built from source):
The best way to install this project for use with master is to clone this project into your Godot source code directory's `projects` folder, as this folder is ignored by Godot's git configuration.

> *Note: If you are running OSX or Windows operating systems, these commands will need to be changed to better reflect your operating system's CLI.*

```

cd [GODOT_SOURCE_DIRECTORY_HERE]/projects
git clone git@github.com:Eoin-ONeill-Yokai/Godot-Rich-Text-Effect-Test-Project.git ./test_rich-text-effect

```


You can then compile the Godot game engine and run the project by running the following commands.

```

cd [GODOT_SOURCE_DIRECTORY_HERE]
scons -j[THREADCOUNT] platform=x11 && ./projects/test_rich-text-effect/launch.sh

//If you're on windows, you'll want to run something like...
scons -j[THREADCOUNT] platform=windows && .\bin\godot.win.tools.* -e .\projects\test_rich-text-effect

```

## The Future:
This repository could be useful for sample text effect implementations and as a testing ground for more `RichTextLabel` features down the line. Thus, I decided to openly share this repository for those who are interested. If you are having specific issues with `RichTextEffects`, you can ask specific questions here as well. 
