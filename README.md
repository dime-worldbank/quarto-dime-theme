# quartoWBtheme

A World Bank theme for Quarto Reveal.js Presentations. **Why Quarto?** Because
it is a cross-language publishing platform that will allow you to create
beautiful HTML presentations with your R or Python code on short notice!
This theme's goal is to allow researchers at the Bank to focus on the content
rather than the form of their presentations by providing a range of sensible
defaults, from the implementation of the official color palette to the inclusion
of a World Bank `{ggplot}` theme.

See a demo [here]().

## Using this theme:

To use this presentation theme, create a project folder, open a console in that
folder, and run the following command:

```
quarto use template BBieri/quartoWBtheme
```

This will copy all required stylesheets and templates to your project folder
of the latest version of the template. You can then remove files that you don't
need and edit the `.qmd` presentation.

## Building the presentation:

To build the presentation, simply run `quarto render template.qmd` from the
same console or open up the `template.qmd` file and hit `CTRL/CMD + K` or the
corresponding shortcut depending on your OS and text editor. This will generate
an `html` file you will be able to present.

## Useful Resources

Want to go further? Here are some great resources to get you started with
Quarto.

- [Presenting Quarto Slides Documentation](https://quarto.org/docs/presentations/revealjs/presenting.html)
- [The Advanced Quarto/Reveal Documentation](https://quarto.org/docs/presentations/revealjs/advanced.html)
- [A Quarto Tip a Day](https://mine-cetinkaya-rundel.github.io/quarto-tip-a-day/)

## Acknowledgements:

The following creators greatly inspired this theme:

- [The RLadies theme](https://beatrizmilz.github.io/quarto-rladies-theme)
- [The coeos theme](https://github.com/mcanouil/quarto-revealjs-coeos)
- [Hrbrmstr's minimalistic `{ggplot}` themes](https://github.com/hrbrmstr/hrbrthemes)

The Palmer Penguin data used in some of the examples can be found under:

> Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer Archipelago (Antarctica) penguin data. doi:10.5281/zenodo.3960218, R package version 0.1.0, https://allisonhorst.github.io/palmerpenguins/.

All photos used as examples in the presentation are obtained under
[Pixabay's licence](https://pixabay.com/service/terms/). The train picture can be
found [here](https://pixabay.com/photos/train-railway-snow-winter-railroad-62849/)
and the mountain picture [here](https://pixabay.com/photos/switzerland-sunrise-mountain-clouds-4290226/).


*Disclaimer: The views expressed on this project/website are my own. They do not necessarily represent the views of the World Bank and its affiliated organizations.*
