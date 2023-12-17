# Latex Beamer FGV EMAp Template

Welcome to Latex Beamer FGV EMAp Template, a LaTeX Beamer Template specifically designed for use by students and faculty at [FGV EMAp](https://emap.fgv.br/en). This template provides an easy and efficient way to create beautifully formatted presentations, maintaining the aesthetic and quality standards of our institution.

## Getting Started
To use this template, you'll need to have Git installed on your system. If you're new to Git, please visit Git's official site for installation instructions.

## Running the template (**Very Important**)

In the examples contained in `main.tex`, there's some `minted` environments. To compile the document, you'll need to run to add following flag:

```bash
pdflatex -shell-escape main.tex
```

(each editor has its own way to do this, usually you can add this flag in the settings)

If you don't want to use `minted`, you can remove the `minted` package and the `minted` environments from the document. You'll be able to compile the document without the `-shell-escape` flag.

## Using the Script Directly from the Web
For convenience, you can also run the `start.sh` script directly from the web:

```bash
curl -sSL https://tinyurl.com/slide-emap | bash
```

## Quick Local Setup
1. Clone the Repository: Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/adamesalles/latex-beamer-emap.git
```

2. Run the Setup Script: Navigate to the cloned directory and run the setup script:


```
cd latex-beamer-emap
chmod +x start.sh
./start.sh
```

3. Follow the Prompts: The script will prompt you to enter details like the presentation's title, authors, date, and language. You can choose up to 5 authors, and the script will format the authors' section appropriately.


## Customization
Feel free to edit the `main.tex` file to further customize your presentation. The script sets up the basic structure, but the flexibility of LaTeX allows for extensive customization to suit your needs.

## Collaboration and Contributions
This project thrives on your input! If you have ideas, suggestions, or spot any known mistakes, please feel free to contribute. To collaborate, you can:

- Fork the repository.
- Make your changes.
- Submit a pull request.

For any queries or suggestions, you can reach out to me at eadamesalles@gmail.com.

## Acknowledgments
Special thanks to [prof. Yuri Saporito](yurisaporito.com) for providing the early version of this template in 2021. I would also like to thank [prof. Luiz Max de Carvalho](https://github.com/maxbiostat) for remembering me that quote from Lord Knuth: 

> Premature optimization is the root of all evil,

which inspired me to publish this repo - even though it is still a work in progress.

Also, thanks to [Tulio Koneçny](https://matematicaeparatodos.com/), [Daniel Csillag](https://github.com/dccsillag) and [Prof. Claudio Struchiner](https://emap.fgv.br/professores/claudio-jose-struchiner) for their suggestions.