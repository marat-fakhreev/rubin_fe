## Prepare development version

Install Node.js

    brew install node

Install Grunt CLI

    npm install -g grunt-cli

Install Bower

    npm install -g bower

Install other dependencies

    brew install imagemagick
    brew install graphicsmagick

## Prepare repository

    git clone git@gl.fosslabs.ru:Marat_Galiev/rubin_html.git rubin_html
    cd rubin_html
    npm install

## Commands

Compile application and start server (after that all compiled code should be placed in the `public` folder)

    grunt

Start to use application on browser:

    #index page
    localhost:8000

    #another state of the index page
    localhost:8000/index2.html

    #news article page
    localhost:8000/article.html
