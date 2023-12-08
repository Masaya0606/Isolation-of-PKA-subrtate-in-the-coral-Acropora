#!/bin/bash

grep ">" *orthologues|sed "s/>//g" >orthologues_OTU
grep "Acropora" *orthologues|sed "s/>//g" >orthologues_Acropora_OTU
grep -B 1 "RR.S" *orthologues >orthologues_RRXS
grep -B 1 "RR.T" *orthologues >orthologues_RRXT
grep -B 1 "RR.S" *orthologues |grep ">"|sed "s/>//g" >orthologues_RRXS_OTU
grep -B 1 "RR.T" *orthologues |grep ">"|sed "s/>//g" >orthologues_RRXT_OTU
grep -B 1 "RR.S" *orthologues |grep ">Acropora"|sed "s/>//g" >orthologues_RRXS_Acropora_OTU
grep -B 1 "RR.T" *orthologues |grep ">Acropora"|sed "s/>//g" >orthologues_RRXT_Acropora_OTU
wc -l orthologues_RRXS_OTU|awk '{print $1}' >RRXS 
wc -l orthologues_RRXT_OTU|awk '{print $1}' >RRXT
wc -l orthologues_OTU |awk '{print $1}'>OTU
wc -l orthologues_Acropora_OTU |awk '{print $1}'>Acropora_OTU
wc -l orthologues_RRXS_Acropora_OTU|awk '{print $1}' >RRXS_Acropora
wc -l orthologues_RRXT_Acropora_OTU|awk '{print $1}' >RRXT_Acropora
RRXS_site=`cat RRXS`
RRXT_site=`cat RRXT`
OTU_site=`cat OTU`
Acropora_OTU_site=`cat Acropora_OTU`
RRXT_Acropora_site=`cat RRXT_Acropora`
RRXS_Acropora_site=`cat RRXS_Acropora`

echo RRXT =$RRXT_site/$OTU_site RRXS =$RRXS_site/$OTU_site,  Acropora RRXT =$RRXT_Acropora_site/$Acropora_OTU_site, RRXS =$RRXS_Acropora_site/$Acropora_OTU_site

rm *site 
