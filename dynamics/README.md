

# Interactively exploring non-linear time series.

A nice survey of [dynamic visualization platforms](https://appsilon.com/dash-vs-shiny/), Shiny with R still
looks good. Regarding the function at the heart of the question in
[Earth Descends Into Chaos](https://www.msn.com/en-us/weather/topstories/physicists-warn-earth-could-feasibly-descend-into-chaos/ar-AA1jqRUs?ocid=winp2fptaskbar&cvid=a876cef1a3d441cadbaa15e8bf522117&ei=35), it is directly implemented as [logisticmap](https://search.r-project.org/CRAN/refmans/nonlinearTseries/html/logisticMap.html)
in the R package nonlinearTseries.

Regarding how to plot, and what is actually being plotted, I had a
look at octave and gnuplot which I haven't worked with in a while, and
came back to R: the diagram is called a Fiegenbaum diagram and there's
a non-dynamic version [on a blog post](https://www.magesblog.com/post/2012-03-17-logistic-map-feigenbaum-diagram/) that can be simplified with the
logisticmap function and then made interactive in Shiny. On the way to
this, I found a statistical investigation of such systems that merits
revisiting at some point for its [appendix](https://www.researchgate.net/figure/Comparison-of-different-nonlinear-methods-for-time-series-generated-by-logistic-map-For_fig5_332873823).

To do this right, I'd like to be able to generate commented code in a
[revision controlled directory](https://www.codecademy.com/learn/learn-git), with a [template for inserting the code](https://dataviz.shef.ac.uk/blog/05/02/2021/Shiny-Template) in
Emacs, and [push it to github.](https://gist.github.com/mindplace/b4b094157d7a3be6afd2c96370d39fad)


## To reliably run this code using the best practices I've been able to come up with so far:


### TODO [Update OSX](https://support.apple.com/en-us/HT201541).


### TODO [Install Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12).


### TODO [Install Gnu Emacs](https://emacsformacosx.com/).


### TODO Install Xcode command line utilities.

Launch Emacs and press the escape key at the top left of your
keyboard, and then the letter x and then type

    eshell

and press return. This will place you in your command shell.
From here on, we'll call a sequence like this:

    M-x eshell

From there, install Xcode command line tools by tying the following command
and pressing return:

    xcode-select --install


### TODO [Install Homebrew](https://docs.brew.sh/Installation) for compiling and managing software installations.


### TODO Install git.

Go back to your Emacs eshell and use homebrew to install git.  

    
    Welcome to the Emacs shell 
    
    ~/ $ brew install git


### TODO [Install R](https://cran.r-project.org/mirrors.html).


### TODO [Install X Quartz](https://www.xquartz.org/).


### TODO In Emacs, install ess.

You may have to [install Melpa](https://melpa.org/#/getting-started), but only if the below doesn't work in
Emacs out of the box.

    M-x package-list-packages 

Then navigate to ess. Click on it to pop up an install buffer, then
click on the install button.


### TODO Get this project.

    
    Welcome to the Emacs shell
    
    ~/ $ mkdir projects
    ~/ $ cd projects
    ~/projects $ git clone git@github.com:statlive/dynamics.git

