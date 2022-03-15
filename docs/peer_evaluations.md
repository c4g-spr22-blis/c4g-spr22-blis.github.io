# Peer Evaluations

Welcome to the C4G BLIS Webpage! Thanks for taking the time to review our project.

Our main objective this semester was to create a create a version of BLIS that can push data from local computers running BLIS on Windows to a version of BLIS running on a remote server. You can read more about our objectives and current Project Status by checking out [the Home page!](https://c4g-spr22-blis.github.io)


## Peer Review Task #1: Testing BLIS Cloud

Over the past semester, we've been working to deploy a version of BLIS that is capable of running on a Cloud Provider. It is accessible with the following link:

[http://188.166.124.131/home.php](http://188.166.124.131/home.php) 

For the first part of our peer review task, please open the short form, accessible here:

[https://forms.office.com/r/YG4cMaC0rP](https://forms.office.com/r/YG4cMaC0rP).


Instructions for this peer review task is embedded in the form. The first part of the peer review task ends after Task F. Thank you for providing your feedback!


## Peer Review Task #2: Pushing a data backup to BLIS Cloud

Testimonies and user feedback from labs in Africa indicate that internet availability is not always guarenteed, so we wanted to create a version of BLIS for Windows that could push data to BLIS Cloud (or a central BLIS instance) when the user initiates the action. This next peer review task involves installing C4G BLIS v3.72, the most current version of BLIS.

!!! warning

    BLIS is a Windows-based program and is most reliably accesible through the Microsoft Windows Operating System. 

### Instructions
1. [Navigate to our instructions to install BLIS on Windows](https://c4g-spr22-blis.github.io/developer_documentation/blis_on_windows/) and follow the instructions to install BLIS on Windows.

2. After running `BLIS.exe`, you should be able to log into BLIS using the bundled Firefox web browser. You can use the same credentials to log in as last time, testlab1_admin/admin123 for the username/password combination.

Our next set of instructions will step you through the process of a BLIS lab manager connecting to the BLIS Cloud server, creating a key

1. Click on the **Lab Configuration** tab, and then **Blis Online** on the left-hand side (you may need to scroll down to see the option). Please enter in the BLIS Cloud ip address 188.166.124.131 and click Save.

2. Click on the **Manage Backup Keys** tab on the lefthand side. Next, click on **Download Public Key** button in green to download the public key for encryption purposes.

![download_publickey](images/download_publickey.png)

3. After downloading the public key, click on the **Add Key Alias** button on the same page. You can put any name in the key alias, but for the purposes of this exercise, we will use "my_pubkey" as an example. Please upload the previously downloaded public key, and click **Add** to finish. A textbox prompt will say, "Key added successfully" upon a successful completion.


![successful_key](images/successful_key.png)

4. Next, navigate to the **Backup Data** tab at the top selection bar. Here, you will input the name you used previously for the key alias, "my_pubkey". Since you've already registered your key alias as the Manager of BLIS, you can proceed without inputting a key file. The type of the Backup does not matter.

(Optional) Click "Download local .ZIP backup". It will send you to a new window prompting you to download a zip folder and save it to your disk. You will see the following image if done correctly:

![download_zip](images/download_zip.png)

You do not need to download the zipped folder to your disk. 

5. Click "Send data backup to server" to send the data backup to the BLIS Cloud. A new window will pop-up and inform you that the data has been pushed to the server successfully.

6. In a new window, please log into the BLIS Cloud at [http://188.166.124.131/home.php](http://188.166.124.131/home.php). **Where would we go to verify that our data dump was pushed correctly?**