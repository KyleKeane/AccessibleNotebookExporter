# AccessibleNotebookExporter

This is a Windows batch file named `RunNotebook.cmd` that will find the file called `MakeMeIntoHTML.nb` inside the same directory and convert it into an accessible HTML document with SVG graphics and serialized code, the output document is named `ConvertedFromNB.html` and is placed in the same directory as everything else. It would only take a small change to `RunNotebook.cmd` to make it possible to evoke the script from commandline and pass in the target notebook, but I found it easier to just put the target notebook into the directory and rename it.

The `RunNotebook.cmd` batch file works by launching a Wolfram Kernel and running the `RunNotebook.wl` Wolfram Script.
The `RunNotebook.wl` Wolfram Script simply opens a Wolfram FrontEnd and evaluates the  `RunNotebook.nb` notebook.
The `RunNotebook.nb` notebook is where the magic happens and the HTML is created and exported.
