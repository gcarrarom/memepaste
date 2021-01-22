# memepaste
Alfred Workflow to paste the memes from your ~/meme folder
![](demo.gif)

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://paypal.me/guicarraro)

# Installation
Installing this workflow works the same way you would install any other alfred workflow, but it'll need a [cli tool to manage your clipboard](#installing-impbcopy).
Once you have installed the [Requirements](#requirements), you can just navigate to the [Releases](https://github.com/gcarrarom/memepaste/releases) page and download the latest workflow file.

# Usage
The basic usage of the workflow is shown in the demo gif, but if you need more information:
## Pasting memes
To paste a meme to a chat, or any other app, you just need to type `meme` and then search for the filename of the meme you want. 
## Downloading memes
If you want to sync the memes from my storage account - just making it easier to download memes - you can just open alfred and type `memedownload`!

This command will fetch all the memes I have in my computer and sync it with yout `~/meme` folder. 
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

Also, if you want to add another image to this via `memedownload`, please open a github issue, or get in touch with me! I will try adding all the memes I can!

## "why can't you use pbcopy?!?"
I'm glad you've asked! If you have ever tried to use pbcopy for images, it's going to reference the file itself on your clipboard and it won't paste it as an image into the chats/documents/\<insertYourApplicationHere>.

## "Where are my memes?!!?"
Don't worry, if you don't see anything after typing `meme` on alfred, that's expected! This workflow uses the regular file filter from Alfred, nothing fancy. Just type something that should be in the file name of your meme. Just make sure it's in the `~/meme` folder!

You can now type `memedownload` in alfred to download some memes to your `~/meme` folder!
