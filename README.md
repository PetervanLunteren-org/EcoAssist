<p align="center">
  <img src="https://github.com/PetervanLunteren/EcoAssist/blob/main/imgs/banner.png" width=100% height="auto" />
</p>
EcoAssist is an application designed to make life easier for wildlife ecologists who work with cameratrap data. I know how time consuming it can be to analyse every image. Thanks to the good people at <a href="https://github.com/microsoft/CameraTraps/blob/main/megadetector.md">MegaDetector</a>, there is a pre-trained model which can recognise animals in camera trap images in a variety of terrestrial ecosystems. The only problem is that you need to know a bit of coding before you can use it. EcoAssist is a small program which makes it easy for everybody. With a simple user interface you can filter out the empties, visualise the detections and crop out the animals.<br/>
<br/>

Help me to keep improving EcoAssist and let me know about any improvements, bugs, or new features so that I can continue to keep it up-to-date. Also, I would very much like to know who uses the tool and for what reason. You can contact me at [contact@pvanlunteren.com](mailto:contact@pvanlunteren.com).

<p align="center">
  <img src="https://github.com/PetervanLunteren/EcoAssist/blob/main/imgs/parameters.png" width=60% height="auto" />
</p>

## How to download?
For now it is only available for OSX users. If you would like EcoAssist on your Windows of Linux computer, let me know! I'll see what I can do.

### Prerequisites
1. First of all you'll need to install [Anaconda](https://www.anaconda.com/products/individual). Need help? Follow [these steps](https://docs.anaconda.com/anaconda/install/mac-os/).
2. If Anaconda is installed you can create a directory in your root folder and download this repository. You can do that by opening a new window in the Terminal.app and entering the following commands.
```batch
mkdir ~/EcoAssist_files
cd ~/EcoAssist_files
git clone https://github.com/PetervanLunteren/EcoAssist.git
```

### Easy download
You can now continue to download the rest of the files. I've tried to make it easy for you by creating a bash script which will do this for you. You can simply double-click on the file `EcoAssist_files/EcoAssist/install_EcoAssist.command`. It downloads the MegaDetector repo and it's model file, then creates an anaconda environment in which the correct python version and all the neccesary packages are installed. If you prefer to do it your self, see the manual download below. It might take a few minutes before the installation is completed. 

### Manual download
You do not need to enter these commands if you executed `install_EcoAssist.command`.
```batch
cd EcoAssist_files
git clone https://github.com/Microsoft/cameratraps
curl --output md_v4.1.0.pb https://lilablobssc.blob.core.windows.net/models/camera_traps/megadetector/md_v4.1.0/md_v4.1.0.pb
conda create --name imsepcondaenv python=3.7 -y
conda activate imsepcondaenv
pip install -r EcoAssist/requirements.txt
```

## How to start the application?
The file `EcoAssist_files/EcoAssist/open_EcoAssist.command` will open the application when double-clicked. You are free to move this file to a more convenient location. Just keep in mind that the folderstructure and location of `EcoAssist_files` should not change.

## Example detections
<p float="center">
  <img src="https://github.com/PetervanLunteren/EcoAssist/blob/main/imgs/example_1.jpg" width=49.7% height="auto" />
  <img src="https://github.com/PetervanLunteren/EcoAssist/blob/main/imgs/example_2.jpg" width=49.7% height="auto" />
  <img src="https://github.com/PetervanLunteren/EcoAssist/blob/main/imgs/example_3.jpg" width=49.7% height="auto" /> 
  <img src="https://github.com/PetervanLunteren/EcoAssist/blob/main/imgs/example_4.jpg" width=49.7% height="auto" /> 
</p>

Camera trap images taken [Missouri camera trap database](https://lila.science/datasets/missouricameratraps). Photo of dogs on street taken from [pixabay](https://pixabay.com/photos/dog-classics-stray-pup-team-6135495/).

## GPU Support
It is possible to run EcoAssist on your GPU for faster processing. See [this page](https://github.com/petargyurov/megadetector-gui/blob/master/GPU_SUPPORT.md) for more information. Just place this repo in a directory with the `cameratraps` repo and the `md_v4.1.0.pb` file. It should work, I just never tested it...

## How to uninstall EcoAssist?
You only have to do two things if you are fed up with EcoAssist and want to get rid of it.
1. Delete the `EcoAssist_files` folder;
2. Either i) [uninstall Anaconda](https://docs.anaconda.com/anaconda/install/uninstall/) as a whole with the command `rm -rf ~/anaconda3` or ii) keep the Anaconda instalation and only delete the virtual environment with the command `conda env remove -n imsepcondaenv`.
