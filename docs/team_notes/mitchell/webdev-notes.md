# Mitchell's Fast & Furious Web Development Crash Course

![when you're here, you're family](../../images/furious.gif)

This is my super-duper quick, off-the-cuff, and totally unprofessional guide to getting up to speed in web development as it related to BLIS.

## The AMP Stack

BLIS seems to come from a time when web development was a bunch of scripts dropped in a folder and expected to work. This was common for the era, and it was/is called *AMP stack. Commonly LAMP or WAMP, it stands for "Linux (or Windows) Apache MySQL PHP."

* [The Apache Web server](https://httpd.apache.org/): this is an oldie but a goodie, it's one of the most commonly used web servers on the Internet. Unfortunately, that can mean it's a little bit more difficult to configure since there are a lot of options, but fortunately we don't need anything complicated.
* [MySQL](https://www.mysql.com/): This is one of the most popular SQL databases, and it used to be a more popular choice until Oracle got its hands on it.
* [PHP](https://www.php.net/): A scripting language that is extremely popular and therefore, a common attack vector. PHP remains popular because it is very easy to learn.

## Getting AMPed Up

BLIS runs on Windows, but the software it's built on started on *nix servers.For that reason, it will sound silly, but I recommend the following resources for familiarizing yourself with the stack:

1. Create a virtual machine of the latest Ubuntu (can be either Server edition or Desktop edition, but you will be using the terminal a bit either way)
2. Familiarize yourself with the [Web Servers](https://ubuntu.com/server/docs/web-servers-apache) section of the Ubuntu Server Guide. Goals:
    1. Install Apache
    2. View the sample web page that proves Apache is running
    3. If you are unsure of the purpose of a web server or how the HTTP protocol works, you can read about [HTTP on the MDN website](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).
3. Install [MySQL on Ubuntu](https://ubuntu.com/server/docs/databases-mysql) (just the Installation section, unless you want to read further).
4. Read the section on [LAMP Applications](https://ubuntu.com/server/docs/lamp-applications). Goals:
    1. Install phpMyAdmin and view the interface in your browser
5. Now that you have a LAMP stack (good job!) you get to install WordPress! Their installation process used to be called "The Famous Five-Minute Install" but it seems like they changed it. [Regardless, you can read up here](https://wordpress.org/support/article/how-to-install-wordpress/). Goals:
    1. Make a wordpress blog that's hosted in your VM.

That's the *AMP Stack!

## Back to BLIS

BLIS, of course, does not run on Linux (easily, anyway), but hopefully by now you should be familiar with the different pieces and how they work together.

As far as I can tell, BLIS is all of these applications in their Windows form, bundled together with a set of configuration files that provide the bare minimum needed to get BLIS up and running on a single computer. Which actual files those are, are not clear to me since there are some duplicates.

## In the Browser

I think these technologies are ones that make more sense if you learn as you go, but it's good to have some reference material ready that you can use when you need it.

For reading up about web development technologies in terms of what happens in the browser, I'd recommend reading the Mozilla Developer Network.

* https://developer.mozilla.org/en-US/docs/Web/HTML
* https://developer.mozilla.org/en-US/docs/Web/CSS
* https://developer.mozilla.org/en-US/docs/Web/JavaScript

as well as the introductory documentation of jQuery, a library that used to be popular because developing for different browsers was terrible (and BLIS seems to use it still).

* https://learn.jquery.com/