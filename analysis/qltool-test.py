import os, subprocess
import logging
import re

bindir = '/bin'
logger = logging.getLogger()
logger.setLevel(logging.DEBUG)
log_format = '%(asctime)s: %(message)s'
logging.basicConfig(filename="test.log", format=log_format,
                    datefmt='%Y-%m-%d %H:%M:%S')

def istext(path):
    msg = subprocess.Popen(["file", "--mime", path], stdout=subprocess.PIPE).communicate()[0]
    return re.search('binary', msg.decode()) != None

for binfile in os.listdir(bindir):
    fpath = bindir + '/' + binfile
    if istext(fpath) is True:
        print("Processing file :" + fpath)
        proc = subprocess.Popen(["qltool", "run", "--multithread", "--rootfs", "/", "-f", fpath], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        try:
            (out, err) = proc.communicate(timeout=5)
            logging.info("\n")
            logging.info("\n")
            logging.info("Processing binary file: " + fpath)
            logging.info("The qltool output:")
            logging.info(out.decode())
        except:
            proc.kill()
