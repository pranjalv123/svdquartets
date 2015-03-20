__author__ = 'shashank'

import os.path

def getInput(inp_file,out_file):
    inpf= open(inp_file, 'r')
    outf=open(out_file,'w')
    found=False
    while(not(found)):
        line=inpf.readline()
        if(line=='SVD scores for each quartet\n'):
            found=True
    line=inpf.readline()
    line=inpf.readline()
    line=inpf.readline()
    line=inpf.readline()
    while(not(line=='\n')):
        parts=line.split()
        a=parts[1]
        b=parts[2]
        c=parts[4]
        d=parts[5]
        weight=parts[6]
        quartet=a+','+b+'|'+c+','+d+':'+weight+' '
        outf.write(quartet)
        for i in range(2):
            line=inpf.readline()
            parts=line.split()
            a=parts[0]
            b=parts[1]
            c=parts[3]
            d=parts[4]
            weight=parts[5]
            quartet=a+','+b+'|'+c+','+d+':'+weight+' '
            outf.write(quartet)
        line=inpf.readline()

if __name__ == "__main__":
   getInput('log.txt','out.txt')
