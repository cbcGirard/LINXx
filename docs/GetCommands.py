# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import os, re

hline="|----|----|----|----|----|\n"
re1=re.compile('(\/*)case (0x\w*): \/*(LINXx)*(.*)')
reHead=re.compile('\*\- (.*) \((.*)\)')
res=re.compile('\/+\-+(0x\w* to 0x\w*)(.*)[^-]')
q=re1.findall(txt)
out="# Command Codes {#CommandCodes}\n|Implemented?|LINXx only?|Code|Description|Comments|\n"

with open("../LabVIEW/vi.lib/LINXx/Firmware/Source/core/listener/utility/LinxListener.cpp") as file:
    for line in file:
        head=reHead.search(line)
        cmd=re1.search(line)
        reser=res.search(line)
        s="|"
        if cmd!=None:
            ls=[cmd[1],cmd[3],cmd[2],cmd[4]]
            if ls[0]=="":
                ls[0]="x"
            else:
                ls[0]=""
                
            if ls[1]!="":
                ls[1]="x"
                                   
            out=out+"|" + s.join(ls)+ "||\n"
        elif head!=None:
            out=out+hline+"|||" +head[2]+"|**"+head[1]+"**||\n"+hline
        elif reser!=None:
            out=out+"|||"+reser[1]+"|"+reser[2]+"||\n"


#for m in q:
#    ls=[m[0],m[2],m[1],m[3]]
#    if ls[0]=="":
#        ls[0]="x"
#    else:
#        ls[0]=""
#        
#    if ls[1]!="":
#        ls[1]="x"
#        
#    s="|"
#            
#    out=out+"|" + s.join(ls)+ "|\n"
    
fo=open("CommandTable.md",'w')
fo.write(out)
fo.close()
#print(out)