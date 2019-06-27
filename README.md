# LoginWalpaperUtil-xfce-variety

Greeter utility for changing the wallpaper (of the greeter)

* Documentation: Dev.to Article [Randomize your XFCE / LightDM Login Screen Wallpaper](https://dev.to/karlredman/randomize-your-xfce-lightdm-login-screen-wallpaper-1ape)

* variety
    * this configuration sets the greeter background controlled by user 'karl'. a directory under `/opt` will have permissions set to karl for this purpose

    * checkout the greeter settings (temporarily)

    ```sh
    cd ~/Repositories
    git clone ssh://git@karlredman.ddns.net:2222/Configuration/LoginWalpaperUtil-xfce-variety.git
    ```

    * Create link to the repo

    ```sh
    sudo ln -s /home/karl/Repositories/LoginWalpaperUtil-xfce-variety /opt/LoginWalpaperUtil-xfce-variety
    ```

    * add crontab task for user `karl`

    ```cron
    */10 * * * * cp $(/opt/LoginWalpaperUtil-xfce-variety/mbin/print_random_file.pl /opt/LoginWalpaperUtil-xfce-variety/Variety) /opt/LoginWalpaperUtil-xfce-variety/Greeter/background.jpg
    ```

    * seed the background image

    ```sh
    cp $(/opt/LoginWalpaperUtil-xfce-variety/mbin/print_random_file.pl /opt/LoginWalpaperUtil-xfce-variety/Variety) /opt/LoginWalpaperUtil-xfce-variety/Greeter/background.jpg
    ```

    * configure xfce greeter (app)
        * point background to `/opt/LoginWalpaperUtil-xfce-variety/Greeter/background.jpg`
        * adjust the login box location as desired