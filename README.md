# memepaste
Alfred Workflow to paste the memes from your ~/meme folder
![](demo.gif)

# Requirements

To get memepaste to work, you will need impbcopy into your /usr/local/bin/ folder. 

## Installing impbcopy
This is a good old tool that was created by Alec Jacobson, definitely recommend checking it out from his blog post [here](https://www.alecjacobson.com/weblog/?p=3816)

You can follow his blog post to install his tool or use the [script](install_pbcopy.sh) I provide in this repo, completely up to you!

To install impbcopy using my script, just run this command:
```bash
$(curl https://raw.githubusercontent.com/gcarrarom/memepaste/master/install_pbcopy.sh)
```

Or download the script and run it locally:
```bash
curl https://raw.githubusercontent.com/gcarrarom/memepaste/master/install_pbcopy.sh --output install_pbcopy.sh
chmod +x ./install_pbcopy
./install_pbcopy.sh
```


# FAQ

## "How do I add memes to this?"
Just add your memes to your `~/meme` folder! It's as simple as that! Make sure to also give a descriptive name to your file, you're going to be searching for memes using it.

## "why can't you use pbcopy?!?"
I'm glad you've asked! If you have ever tried to use pbcopy for images, it's going to reference the file itself on your clipboard and it won't paste it as an image into the chats/documents/\<insertYourApplicationHere>.

## "Where are my memes?!!?"
Don't worry, if you don't see anything after typing `meme` on alfred, that's expected! This workflow uses the regular file filter from Alfred, nothing fancy. Just type something that should be in the file name of your meme. Just make sure it's in the `~/meme` folder!