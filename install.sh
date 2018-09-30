#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo -e "${RED}____   ____ ____   _____ _    __  __ ___ _  __   __ "
echo " | __ ) / ___/ ___| |  ___/ \  |  \/  |_ _| | \ \ / /  "
echo " |  _ \| |  | |  _  | |_ / _ \ | |\/| || || |  \ V / "
echo " | |_) | |__| |_| | |  _/ ___ \| |  | || || |___| | "
echo " |____/ \____\____| |_|/_/   \_\_|  |_|___|_____|_| "
echo -e "${RED}                                                      ~ Tools for Hacking by Mr. WPD ${NC}"
echo ""
echo -e "${YELLOW} fb.com/BangladeshCyberGho5t | github.com/ROOTED833/ ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install BCG_FAMILY, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/BCG_FAMILY"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/BCG_FAMILY"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory BCG_FAMILY Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/ROOTED833/BCG_FAMILY.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/BCG_FAMILY.py" '${1+"$@"}' > BCG_FAMILY;
chmod +x BCG_FAMILY;
sudo cp BCG_FAMILY /usr/bin/;
rm BCG_FAMILY;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing BCG FAMILY.       !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi