We used `npx tailwindcss init --full` to create tailwind.config file. --full flag is there to create 
every field with default valueborder-gray-200

Before this file, tailwind was using default values under the hood.
Now as we have one, it will look for it and use it.

Using this file we can add our own customizations [change existing values and add new ones]. 
After adding, we need to process it through `npm run build-css` command. buil-css is a command to convert 
source css ( src/styles.css to public/styles.css )

~~
Changing values inside default config file is not recommended as it leads to confusion about what was 
there before i.e. default values and the altered values. It becomes confusing to track altered values.
Instead creating a blank config file to extend default rules

!!
We would rename (tailwind.config.js to tailwind-default.config.js )
now it would not use this file (but will use default values under the hood, not through this one 
due to changed name)
We will create blank config file ( using `npx tailwindcss init` without --full flag)

~~ New config file's code below: 
module.exports = {
  purge: [],
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
}
tailwind will use this file to apply styles and get values for class but as there is nothing mentioned
it will still apply styles under hood with default values ,in extend we can add new classes

After adding styles we need to rebuilt css file `npm run build-css`

Everytime after alteration we have to process/rebuilt css again. after that we can use it.

?? Font-family
It has 3 classes [sans, serif, mono], if we dont specify sans class would be used. To use serif or 
mono it is required that we mention it in HTML.
To use any other font family we need to extend it.