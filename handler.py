import os

import matplotlib,math
import matplotlib.pyplot as plt
import sys
from distutils.util import strtobool
from os import listdir

class Data:
    def __init__(self):
        self.name=''
        self.before_size=0
        self.after_size=0
        self.before_depth=0
        self.after_depth=0
        self.before_cycle=0
        self.after_cycle=0
        self.reduced_cycle=0
        self.reduced_depth=0
        self.reduced_size=0
        self.time=0.0
        self.opt=0
        self.metric=''
        self.before_single=0
        self.after_single=0
        self.before_two=0
        self.after_two=0
        self.space=0


def readQiskit(path):
    crfile = open(path, 'r')
    result = []
    while True:
        crline = crfile.readline().strip()
        if (not crline) :
            break
        str = crline.split(' ')
        # print(str)
        data=Data()
        data.name=str[0]
        data.before_size=int(str[1])
        data.after_size=int(str[2])
        data.reduced_size=(data.before_size-data.after_size)/data.before_size
        data.before_depth=int(str[3])
        data.after_depth=int(str[4])
        data.before_single=int(str[5])
        data.after_single=int(str[6])
        data.before_two=int(str[7])
        data.after_two=int(str[8])
        data.time=float(str[9])
        data.space=float(str[10])
        result.append(data)
    return result

circuit_path = 'benchmark/test_after.qasm'
def readBest(path):
    crfile = open(path, 'r')
    result = []
    while True:
        crline = crfile.readline().strip()
        if (not crline) :
            break
        str = crline.split(' ')
        # print(str)
        data=Data()
        data.name=str[0]
        data.before_size=int(str[1])
        data.after_size=int(str[2])
        data.reduced_size=int(str[3])
        data.time=float(str[4])
        data.before_single=int(str[5])
        data.after_single=int(str[6])
        data.before_two=int(str[7])
        data.after_two=int(str[8])
        data.before_depth=int(str[9])
        data.after_depth=int(str[10])
        result.append(data)
    return result

def readCSV(path,type:str):
    './benchmark/BIGD/20QBT_45CYC_.1D1_.4D2_6.qasm,270,193,77(28.52%),,45,37,8(17.78%),,90(x),52(x),38(42.22%),,180(cx),141(cx),39(21.67%),,5.008305788040161'
    './handle/adder_8.qasm,  216,882,-666(-308.33%),,55,189,-134(-243.64%),,"92(h,x)","491(h,x,t,tdg)",-399(-433.70%),,"124(ccz,cx)",391(cx),-267(-215.32%),,6.718142032623291'
    crfile = open(path, 'r')
    result = []
    crfile.readline().strip()
    crfile.readline().strip()
    while True:
        crline = crfile.readline().strip()
        if (not crline) :
            break
        str = crline.split(',')
        i=0
        if str[0].__eq__('') :
            break
        while i < len(str):

            if str[i].__contains__('(') and not str[i].__contains__(")"):
                j = i + 1
                while j<len(str):
                    if str[j].__contains__(')'):
                        del str[j]
                        break
                    del str[j]
                i=j-1
            i+=1

        data = Data()
        data.name=str[0].split('/')[len(str[0].split('/'))-1]
        data.before_size=int(str[1])
        data.after_size=int(str[2])
        data.reduced_size=int(str[1])-int(str[2])
        if type.__eq__('depth'):
            data.before_depth = int(str[5])
            data.after_depth = int(str[6])
            data.reduced_depth=int(str[5])-int(str[6])
        else:
            data.before_cycle = int(str[5])
            data.after_cycle=int(str[6])
            data.reduced_cycle=int(str[5])-int(str[6])
        l=str[9].split('(')[0].split('"')
        l9=l[len(l)-1]
        data.before_single=int(l9)
        l = str[10].split('(')[0].split('"')
        l9=l[len(l)-1]
        data.after_single = int(l9)
        l = str[13].split('(')[0].split('"')
        l9 = l[len(l) - 1]
        data.before_two=int(l9)

        l = str[14].split('(')[0].split('"')
        l9 = l[len(l) - 1]
        data.after_two = int(l9)
        data.time=float(str[17])
        if len(str)>18:
            data.space = float(str[18])
        result.append(data)
    reduced_size = 0
    after_size = 0
    before_size = 0
    reduced_depth=0
    before_depth=0
    time=0
    for i in result:
        before_size += i.before_size
        after_size += i.after_size
        reduced_size += i.reduced_size
        reduced_depth+=i.reduced_depth
        before_depth+=i.before_depth
        reduced_depth+=i.reduced_cycle
        before_depth+=i.before_cycle
        time+=i.time
    # print(path,before_size,after_size,reduced_size,reduced_size/before_size,before_depth,reduced_depth,(reduced_depth)/before_depth,time)
    return result

def dealQCPM(reslut:list):
    res={}
    res1=[]
    for i in reslut:
         if res.get(i.name)==None or res[i.name].after_size>i.after_size:
            res[i.name]=i
    for i in res.values():
        res1.append(i)
    return res1

def readCircuitRewrite(cr_path):
    crfile=open(cr_path,'r')
    result=[]
    '20QBT_45CYC_.0D1_.1D2_0.qasm, before: 45, after: 27, reduced: 18(40.00%)  4.072238445281982'
    while True:
        crline = crfile.readline().strip()
        if (not crline):
            break
        crstr=crline.split(',')
        data=Data()
        data.name=crstr[0]
        data.before_size=int(crstr[1].split(':')[1])
        data.after_size=int(crstr[2].split(':')[1])
        data.reduced_size=int(crstr[3].split(':')[1].split('(')[0])

        data.time=float(crstr[3].split(' ')[4])
        result.append(data)
    return  result
def readQcpm(qc_path):
    qcfile=open(qc_path,'r')
    result=[]
    '20QBT_45CYC_.0D1_.1D2_0.qasm, optimizer=False, metric=depth, [before size:45 depth:44 cycle:90][after size:23 depth:18 cycle:46][reduced size: 22(48.89%) depth: 26(59.09%)]'
    while True:
        qcline1=qcfile.readline().strip()
        if (not qcline1) :
            break
        qcstr1=qcline1.split(',')
        data=Data()
        data.name=qcstr1[0]
        data.opt=strtobool(qcstr1[1].split('=')[1])
        data.metric=qcstr1[2].split('=')[1]
        data.before_size=int(qcstr1[3].strip().split(' ')[1].split(':')[1])
        data.before_depth=int(qcstr1[3].strip().split(' ')[2].split(':')[1])
        data.before_cycle=int(qcstr1[3].strip().split(' ')[3].split(':')[1].split(']')[0])

        data.after_size=int(qcstr1[3].strip().split(' ')[4].split(':')[1])
        data.after_depth=int(qcstr1[3].strip().split(' ')[5].split(':')[1])
        data.after_cycle=int(qcstr1[3].strip().split(' ')[6].split(':')[1].split(']')[0])

        data.reduced_size=int(qcstr1[3].strip().split(' ')[8].split('(')[0])
        data.reduced_depth=int(qcstr1[3].strip().split(' ')[10].split('(')[0])
        data.time=int(qcstr1[3].split(' ')[2])
        result.append(data)
    return result
def compare_CR_best_QC(cr_path,qc_path,type):
    cr=readCSV(cr_path,type)
    qc=readBest(qc_path)
    qc=dealQCPM(qc)

    before_cr_depth=0
    after_cr_depth=0
    reduce_cr = 0
    reduce_qr = 0
    reduce_depth_cr = 0
    reduce_depth_qr = 0
    reduce_cr_1 = 0
    reduce_qr_1 = 0
    reduce_cr_2 = 0
    reduce_qr_2 = 0
    reduce=0


    compare_reduce_t=0
    compare_reduce_1=0
    compare_reduce_2=0
    compare_reduce_d=0

    before_qc_depth=0
    after_qc_depth=0
    before_cr_size=0
    after_cr_size=0
    before_qc_size=0
    after_qc_size=0
    single_qc_before=0
    two_qc_before=0
    single_qc_after=0
    two_qc_after=0
    single_cr_before=0
    two_cr_before=0
    single_cr_after=0
    two_cr_after=0
    time_cr=0
    time_qr=0
    count=0
    for i in cr:
        for j in qc:
            if i.name.__eq__(j.name):
                count += 1
                before_cr_size += i.before_size
                after_cr_size += i.after_size
                before_qc_size += j.before_size
                after_qc_size += j.after_size
                if type.__eq__('depth'):
                    before_cr_depth += i.before_depth
                    after_cr_depth += i.after_depth
                else:
                    before_cr_depth += i.before_cycle
                    after_cr_depth += i.after_cycle

                before_qc_depth += j.before_depth
                after_qc_depth += j.after_depth

                single_qc_before += j.before_single
                two_qc_before += j.before_two
                single_qc_after += j.after_single
                two_qc_after += j.after_two

                single_cr_before += i.before_single
                two_cr_before += i.before_two
                single_cr_after += i.after_single
                two_cr_after += i.after_two
                time_cr += i.time
                time_qr += j.time
                reduce += (i.after_size - j.after_size) / i.after_size
                if i.before_single != 0:
                    reduce_cr_1 += (i.before_single - i.after_single) / i.before_single
                    reduce_qr_1 += (j.before_single - j.after_single) / j.before_single
                    compare_reduce_1+=abs((reduce_cr_1 -reduce_qr_1))
                reduce_cr_2 += (i.before_two - i.after_two) / i.before_two
                reduce_qr_2 += (j.before_two - j.after_two) / j.before_two
                reduce_cr += (i.before_size - i.after_size) / i.before_size
                reduce_qr += (j.before_size - j.after_size) / j.before_size
                reduce_depth_cr += (i.before_depth - i.after_depth) / i.before_depth
                reduce_depth_qr += (j.before_depth - j.after_depth) / j.before_depth

                compare_reduce_t+=abs((reduce_qr - reduce_cr))
                compare_reduce_2 += abs((reduce_qr_2 - reduce_cr_2))
                compare_reduce_d+=abs((reduce_depth_qr - reduce_depth_cr))
                if i.after_size<j.after_size:
                    print(i.name,' ',j.opt,i.after_size,j.after_size)
                break
    print(f'count: {count} reduce: {reduce / 360}')
    print(f'cr:size: {before_cr_size}  {after_cr_size}   {before_cr_size - after_cr_size}')
    print(f'cr:depth: {before_cr_depth} {after_cr_depth} {before_cr_depth - after_cr_depth} time:{time_cr}')

    print(f'qc:size: {before_qc_size} {after_qc_size} {before_qc_size - after_qc_size}')
    print(f'qc:depth: {before_qc_depth} {after_qc_depth} {before_qc_depth - after_qc_depth} time:{time_qr}')
    print(
        f'size_reduce: {(reduce_cr - reduce_qr) / reduce_cr} depth_reduce: {(reduce_depth_cr - reduce_depth_qr) / reduce_depth_cr}')
    print(f'cr: 1-qubit:{single_cr_before} {single_cr_after}, 2-qubit:{two_cr_before} {two_cr_after}')
    print(f'qr: 1-qubit:{single_qc_before} {single_qc_after}, 2-qubit:{two_qc_before} {two_qc_after}')
    print(f'qc/cr reduced: 1-qubit:  {reduce_cr_1} {reduce_qr_1} {(reduce_cr_1-reduce_qr_1)/reduce_cr_1}, 2-qubit: {reduce_cr_2} {reduce_qr_2} {(reduce_cr_2-reduce_qr_2)/reduce_cr_2}, total: {(reduce_cr - reduce_qr) / reduce_cr} depth: {(reduce_depth_cr - reduce_depth_qr) / reduce_depth_cr}')
    print(f'qc/cr reduced: 1-qubit:  {reduce_cr_1} {reduce_qr_1} {(single_cr_after-single_qc_after)/single_cr_after}, 2-qubit: {reduce_cr_2} {reduce_qr_2} {(two_cr_after-two_qc_after)/two_cr_after}, total: {(after_cr_size-after_qc_size)/after_cr_size} depth: {(after_cr_depth-after_qc_depth)/after_cr_depth }')


def compare_CR_QC(cr_path,qc_path,type):
    cr=readCSV(cr_path,type)
    qc=readCSV(qc_path,type)
    qc=dealQCPM(qc)
    before_cr_size=0
    after_cr_size=0
    before_qc_size=0
    after_qc_size=0
    before_cr_depth = 0
    after_cr_depth = 0
    reduce_cr = 0
    reduce_qr = 0
    reduce_depth_cr = 0
    reduce_depth_qr = 0
    reduce_cr_1 = 0
    reduce_qr_1 = 0
    reduce_cr_2 = 0
    reduce_qr_2 = 0
    compare_reduce_t=0
    compare_reduce_1=0
    compare_reduce_2=0
    compare_reduce_d=0
    reduce=0

    single_qc_before=0
    two_qc_before=0
    single_qc_after=0
    two_qc_after=0
    single_cr_before=0
    two_cr_before=0
    single_cr_after=0
    two_cr_after=0

    before_qc_depth = 0
    after_qc_depth = 0

    time_cr=0
    time_qr=0
    count=0
    for i in cr:
        for j in qc:
            if i.name.__eq__(j.name):
                if i.before_size!=j.before_size:
                    print('00000000000',i.name)
                count += 1
                before_cr_size += i.before_size
                after_cr_size += i.after_size
                before_qc_size += j.before_size
                after_qc_size += j.after_size


                if type.__eq__('cycle'):
                    before_cr_depth += i.before_cycle
                    after_cr_depth += i.after_cycle
                    before_qc_depth += j.before_cycle
                    after_qc_depth += j.after_cycle
                else:
                    before_cr_depth += i.before_depth
                    after_cr_depth += i.after_depth
                    before_qc_depth += j.before_depth
                    after_qc_depth += j.after_depth

                single_qc_before += j.before_single
                two_qc_before += j.before_two
                single_qc_after += j.after_single
                two_qc_after += j.after_two

                single_cr_before += i.before_single
                two_cr_before += i.before_two
                single_cr_after += i.after_single
                two_cr_after += i.after_two
                time_cr+=i.time
                time_qr+=j.time
                if (i.before_size - i.after_size):
                    reduce+=((i.before_size - i.after_size)-(j.before_size - j.after_size))/(i.before_size - i.after_size)
                if  (i.before_two-i.after_two)!=0:
                    compare_reduce_2 += ((i.before_two-i.after_two)- (j.before_two-j.after_two))/(i.before_two-i.after_two)
                if (i.before_depth-i.after_depth):
                   compare_reduce_d += ( (i.before_depth-i.after_depth)-(j.before_depth-j.after_depth))/ (i.before_depth-i.after_depth)
                if i.before_single!=0:
                    compare_reduce_1 += ((i.before_single-i.after_single)-(j.before_single-j.after_single))/(i.before_single-i.after_single)
                    reduce_cr_1 += (i.before_single-i.after_single)/i.before_single
                    reduce_qr_1 += (j.before_single-j.after_single)/j.before_single
                reduce_cr_2 += (i.before_two-i.after_two)/i.before_two
                reduce_qr_2 += (j.before_two-j.after_two)/j.before_two
                reduce_cr += (i.before_size - i.after_size)/i.before_size
                reduce_qr += (j.before_size - j.after_size)/j.before_size
                reduce_depth_cr += (i.before_depth-i.after_depth)/i.before_depth
                reduce_depth_qr += (j.before_depth-j.after_depth)/j.before_depth
                # print(j.time)
                if i.after_size<j.after_size:
                    print(i.name,' ',j.opt,i.after_size,j.after_size)
                break
    print(f'count: {count} 1-qubit: {compare_reduce_1/360} 2-qubit: {compare_reduce_2/360} reduce total: {reduce/360}  depth: {compare_reduce_d/360}')
    print(f'cr:size: {before_cr_size}  {after_cr_size}   { before_cr_size - after_cr_size}')
    print(f'cr:depth: {before_cr_depth} {after_cr_depth} {before_cr_depth - after_cr_depth} time:{time_cr}')

    print(f'qc:size: {before_qc_size} {after_qc_size} {before_qc_size - after_qc_size}')
    print(f'qc:depth: {before_qc_depth} {after_qc_depth} {before_qc_depth - after_qc_depth} time:{time_qr}')
    print(f'size_reduce: {(reduce_cr-reduce_qr)/reduce_cr} depth_reduce: {(reduce_depth_cr-reduce_depth_qr)/reduce_depth_cr}')
    print(f'cr: 1-qubit:{single_cr_before} {single_cr_after} , 2-qubit:{two_cr_before} {two_cr_after}')
    print(f'qr: 1-qubit:{single_qc_before} {single_qc_after}, 2-qubit:{two_qc_before} {two_qc_after}')

    print(f'qc/cr reduced: 1-qubit:  {reduce_cr_1} {reduce_qr_1} {(reduce_cr_1-reduce_qr_1)/reduce_cr_1}, 2-qubit: {reduce_cr_2} {reduce_qr_2} {(reduce_cr_2-reduce_qr_2)/reduce_cr_2}, total: {(reduce_cr - reduce_qr) / reduce_cr} depth: {(reduce_depth_cr - reduce_depth_qr) / reduce_depth_cr}')
    print(f'qc/cr reduced: 1-qubit:  {reduce_cr_1} {reduce_qr_1} {(single_cr_after-single_qc_after)/single_cr_after}, 2-qubit: {reduce_cr_2} {reduce_qr_2} {(two_cr_after-two_qc_after)/two_cr_after}, total: {(after_cr_size-after_qc_size)/after_cr_size} depth: {(after_cr_depth-after_qc_depth)/after_cr_depth }')

    pass

def compare_QC_QC(cr_path,qc_path,flag1,flag2,type):
    cr=readCSV(cr_path,type)
    qc=readCSV(qc_path,type)
    before_cr_size=0
    after_cr_size=0
    before_opt_qc_size=0
    after_opt_qc_size=0
    before_qc_size=0
    after_qc_size=0
    count=0
    for i in cr:
        for j in qc:
            if i.opt==flag1 and i.name.__eq__(j.name) and j.opt==flag2:
                count+=1
                before_cr_size += i.before_size
                after_cr_size+=i.after_size
                before_qc_size+=j.before_size
                after_qc_size+=j.after_size
    print('count:%s'%count)
    print('mct_qc:%s   %s'%(before_cr_size, after_cr_size))
    print('qc:%s   %s'%(before_qc_size,after_qc_size))
    print('%s'%((after_cr_size-after_qc_size)/after_qc_size))
    pass
def getMinigate(dir:str,type):
    files= os.listdir(dir)
    exa=readCSV('results/example.csv', type)
    res=dict()
    for i in exa:
        res[i.name]=i
    count=0
    for file in files:
        if file.startswith('.DS_Store'):
            continue
        print('The %sth file %s%s'%(count,dir,file))
        count+=1
        f=readCSV('%s%s'%(dir,file),type)
        its=res.keys()
        for i in its:
            for j in f:
                if i.__eq__(j.name):
                    if (type.__eq__('cycle') and res.get(i).after_size > j.after_size) or (type.__eq__('depth') and res.get(i).after_size>j.after_size):
                    # if res.get(i).after_depth>j.after_depth:
                        res[i] =j
                        break
    reduced_size=0
    after_size=0
    before_size=0
    its=res.keys()
    time=0
    for i in its:
        before_size+=res.get(i).before_size
        after_size+=res.get(i).after_size
        reduced_size+=res.get(i).reduced_size
        time+=res.get(i).time
    print(before_size,after_size,reduced_size,time)
    return res


def getAvegate(dir:str,type):
    files= os.listdir(dir)
    exa=readCSV('results/data/202306221146.csv', type)
    res=dict()
    for i in exa:
        res[i.name]=i
    count=0
    for file in files:
        if file.startswith('.DS_Store'):
            continue
        print('The %sth file %s%s'%(count,dir,file))
        count+=1
        f=readCSV('%s%s'%(dir,file),type)
        its=res.keys()
        for i in its:
            for j in f:
                if i.__eq__(j.name):
                    res[i].after_size +=j.after_size
                    break
    reduced_size=0
    after_size=0
    before_size=0
    its=res.keys()
    time=0
    for i in its:
        before_size+=res.get(i).before_size
        after_size+=res.get(i).after_size
        reduced_size+=res.get(i).reduced_size
        time+=res.get(i).time
        res[i].after_size=res[i].after_size/5
    print(before_size,after_size,reduced_size,time)
    return res



def getAVEgate(dir:str,type):
    files= os.listdir(dir)
    count=0
    exa=readCSV('results/example.csv', type)
    res=dict()
    for i in exa:
        res[i.name] = Data()
    count=0
    for file in files:
        if file.startswith('.DS_Store'):
            continue
        print('The %sth file %s%s'%(count,dir,file))
        f=readCSV('%s%s'%(dir,file),type)
        if len(f)!=360:
            continue
        its=res.keys()
        count+=1
        for i in its:
            for j in f:
                if i.__eq__(j.name):
                    res.get(i).name=j.name
                    res.get(i).after_size+=j.after_size
                    res.get(i).after_depth+=j.after_depth
                    res.get(i).before_size=j.before_size
                    res.get(i).before_cycle=j.before_cycle
                    res.get(i).before_two=j.before_two
                    res.get(i).before_single=j.before_single

                    res.get(i).before_depth=j.before_depth
                    res.get(i).after_cycle+=j.after_cycle
                    res.get(i).after_two+=j.after_two
                    res.get(i).after_single+=j.after_single
                    res.get(i).reduced_size+=j.reduced_size
                    res.get(i).reduced_depth+=j.reduced_depth
                    res.get(i).reduced_cycle+=j.reduced_cycle
                    res.get(i).time+=j.time
                    res.get(i).space+=j.space

                    # if res.get(i).after_size > j.after_size:
                    # # if res.get(i).after_depth>j.after_depth:
                    #     res[i] =j
                    break
    reduced_size=0
    after_size=0
    before_size=0
    its=res.keys()
    time=0
    for i in its:
        res.get(i).after_size /= count
        res.get(i).after_depth /= count
        res.get(i).after_cycle /= count
        res.get(i).after_two /= count
        res.get(i).after_single /= count
        res.get(i).time /= count

        res.get(i).reduced_size /= count
        res.get(i).reduced_depth /= count
        res.get(i).reduced_cycle /= count
    #     before_size+=res.get(i).before_size
    #     after_size+=res.get(i).after_size
    #     reduced_size+=res.get(i).reduced_size
    #     time+=res.get(i).time
    # print(before_size,after_size,reduced_size,time)
    return res


def bigd_new():
    random_mini = './results/random_mini.txt'
    random_ave = './results/random_ave.txt'
    greedy_path = './results/greedy_ubuntu.csv'
    spin_ubuntu = './results/spin_ubuntu.csv'

    BIGD = getCSVData(spin_ubuntu, 'depth', [], 3)
    BIGD_random = getTXTData(random_mini, 'depth', [], 2)
    BIGD_random_ave = getTXTData(random_ave, 'depth', [], 2)
    # BIGD_MCM=getTXTData('./results/BIGD_MCM.txt', 'depth', [], 2)
    BIGD_greedy = getCSVData(greedy_path, 'depth', [], 2)
    BIGD_spin = getCSVData(spin_ubuntu, 'depth', [], 2)
    BIGD_qiskit = getQiskitData('./results/qiskit.txt', 'depth', [], 2)
    d_r = getTXTData(random_mini, 'depth', [], 7)
    # d_m = getTXTData('./results/BIGD_MCM.txt', 'depth', [], 7)
    d_g = getCSVData(greedy_path, 'depth', [], 7)
    d_before = getCSVData(spin_ubuntu, 'depth', [], 6)
    d_s = getCSVData(spin_ubuntu, 'depth', [], 7)
    BIGD_qiskit_depth = getQiskitData('./results/qiskit.txt', 'depth', [], 7)
    d_r_ave = getTXTData(random_ave, 'depth', [], 7)
    b_r_time = getTXTData(random_ave, 'depth', [], 5)
    b_g_time = getCSVData(greedy_path, 'depth', [], 5)
    b_s_time = getCSVData(spin_ubuntu, 'depth', [], 5)
    BIGD_qiskit_time = getQiskitData('./results/qiskit.txt', 'depth', [], 5)
    draw(BIGD,BIGD_random,BIGD_random_ave, BIGD_greedy,BIGD_spin,b_s_time,b_r_time,b_g_time,d_before,d_r,d_g,d_s,d_r_ave,BIGD_qiskit,BIGD_qiskit_depth,BIGD_qiskit_time)
    # single
    # BIGD = getCSVData(spin_ubuntu, 'depth', [], 8)
    # BIGD_random = getTXTData(random_mini, 'depth', [], 9)
    # BIGD_random_ave=getTXTData(random_ave, 'depth', [], 9)
    # BIGD_greedy = getCSVData(greedy_path, 'depth', [], 9)
    # BIGD_spin = getCSVData(spin_ubuntu, 'depth', [], 9)
    # BIGD_spin_win = getCSVData(spin_ubuntu, 'depth', [], 9)
    # BIGD_qiskit=getQiskitData('./results/qiskit.txt','depth',[],9)
    # draw(BIGD, BIGD_random, BIGD_random_ave, BIGD_greedy, BIGD_spin, b_s_time, b_r_time, b_g_time, d_before, d_r, d_g,
    #   d_s, d_r_ave, BIGD_qiskit, BIGD_qiskit_depth, BIGD_qiskit_time)
    # two
    # BIGD = getCSVData(spin_ubuntu, 'depth', [], 10)
    # BIGD_random = getTXTData(random_mini, 'depth', [], 11)
    # BIGD_random_ave = getTXTData(random_ave, 'depth', [], 11)
    # # BIGD_MCM = getTXTData('./results/BIGD_MCM.txt', 'depth', [], 10)
    # BIGD_greedy = getCSVData(greedy_path, 'depth', [], 11)
    # BIGD_spin = getCSVData(spin_ubuntu, 'depth', [], 11)
    # BIGD_spin_win = getCSVData(spin_ubuntu, 'depth', [], 11)
    # BIGD_qiskit = getQiskitData('./results/qiskit.txt', 'depth', [], 11)
    '''  x b c v d e q f g h i 
       b-ini 
       c-random_mini d_r
       v_random_ave d_r_ave
       d-greedy d_g
       e-spin d_s
       q-qiskit 
       f-spin_time
       g-random_time
       h_greedy_time
       i_qiskit_time
         '''
    # draw(BIGD, BIGD_random, BIGD_random_ave, BIGD_greedy, BIGD_spin, b_s_time, b_r_time, b_g_time, d_before, d_r, d_g,
    #      d_s, d_r_ave, BIGD_qiskit, BIGD_qiskit_depth, BIGD_qiskit_time)
    '''  x b c v d e q f g h i 
    b-ini
    c-random_mini
    v_random_ave
    d-greedy
    e-spin
    q-qiskit
    f-spin_time
    g-random_time
    h_greedy_time
    i_qiskit_time
      '''
def bigd_depth():
    spin_ubuntu_old='./results/23031346_BIGD_depth.csv'
    spin_win='./results/spin_win.csv'
    random_path='./results/qct/'
    greedy_path='./results/greedy_ubuntu.csv'
    spin_ubuntu='./results/spin_ubuntu.csv'
    spin=spin_ubuntu


    BIGD= getCSVData(spin_win, 'depth', [], 3)
    BIGD_random=getTXTData('./results/BIGD_random.txt', 'depth', [], 2)
    BIGD_random_ave=getTXTData('./results/random_ave.txt', 'depth', [], 2)
    # BIGD_MCM=getTXTData('./results/BIGD_MCM.txt', 'depth', [], 2)
    BIGD_greedy=getCSVData('./results/BIGD_True_greedy_IBM_depth.csv','depth',[],2)
    BIGD_spin = getCSVData(spin_win, 'depth', [], 2)
    BIGD_qiskit=getQiskitData('./results/qiskit.txt','depth',[],2)
    d_r = getTXTData('./results/BIGD_random.txt', 'depth', [], 7)
    # d_m = getTXTData('./results/BIGD_MCM.txt', 'depth', [], 7)
    d_g = getCSVData('./results/BIGD_True_greedy_IBM_depth.csv', 'depth', [], 7)
    d_before = getCSVData(spin_win, 'depth', [], 6)
    d_s=getCSVData(spin_win, 'depth', [], 7)
    BIGD_qiskit_depth=getQiskitData('./results/qiskit.txt','depth',[],7)
    d_r_ave=getTXTData('./results/random_ave.txt', 'depth', [], 7)
    b_r_time = getTXTData('./results/random_ave.txt', 'depth', [], 5)
    b_g_time =  getCSVData('./results/BIGD_True_greedy_IBM_depth.csv', 'depth', [], 5)
    b_s_time = getCSVData(spin_win, 'depth', [], 5)
    BIGD_qiskit_time=getQiskitData('./results/qiskit.txt','depth',[],5)
    # draw(BIGD,BIGD_random,BIGD_random_ave, BIGD_greedy,BIGD_spin,b_s_time,b_r_time,b_g_time,d_before,d_r,d_g,d_s,d_r_ave,BIGD_qiskit,BIGD_qiskit_depth,BIGD_qiskit_time)
    # single
    # BIGD = getCSVData(spin_win, 'depth', [], 8)
    # BIGD_random = getTXTData('./results/BIGD_random.txt', 'depth', [], 9)
    # BIGD_random_ave=getTXTData('./results/random_ave.txt', 'depth', [], 9)
    # BIGD_greedy = getCSVData('./results/BIGD_True_greedy_IBM_depth.csv', 'depth', [], 9)
    # BIGD_spin = getCSVData(spin_win, 'depth', [], 9)
    # BIGD_spin_win = getCSVData(spin_win, 'depth', [], 9)
    # BIGD_qiskit=getQiskitData('./results/qiskit.txt','depth',[],9)
    # draw(BIGD,BIGD_random,BIGD_random_ave, BIGD_greedy,BIGD_spin,b_r_time,b_r_time,b_s_time,d_before,d_r,d_g,d_s,BIGD_qiskit,BIGD_qiskit_depth,BIGD_qiskit_time)
    #two
    BIGD = getCSVData(spin_win, 'depth', [], 10)
    BIGD_random = getTXTData('./results/BIGD_random.txt', 'depth', [], 11)
    BIGD_random_ave=getTXTData('./results/random_ave.txt', 'depth', [], 11)
    # BIGD_MCM = getTXTData('./results/BIGD_MCM.txt', 'depth', [], 10)
    BIGD_greedy = getCSVData('./results/BIGD_True_greedy_IBM_depth.csv', 'depth', [], 11)
    BIGD_spin = getCSVData(spin_win, 'depth', [], 11)
    BIGD_spin_win = getCSVData(spin_win, 'depth', [], 11)
    BIGD_qiskit=getQiskitData('./results/qiskit.txt','depth',[],11)
    draw(BIGD, BIGD_random, BIGD_random_ave, BIGD_greedy, BIGD_spin, b_s_time, b_r_time, b_g_time, d_before, d_r, d_g,
         d_s, d_r_ave, BIGD_qiskit, BIGD_qiskit_depth, BIGD_qiskit_time)

def handle_depth():
    h_before = getCSVData('handle_expand.csv', 'depth', sort, 6)
    h_expand_false_time = getCSVData('handle_expand.csv', 'depth', sort, 5)
    h_expand_false = getCSVData('handle_expand.csv', 'depth', sort, 7)

    h_optimize = getCSVData('handle_optimize.csv', 'depth', sort, 7)
    h_optimize_time = getCSVData('handle_optimize.csv', 'depth', sort, 5)
    h_migrate = getCSVData('results/handle_surface_False_random_IBM_depth.csv', 'depth', sort, 7)
    h_migrate_time = getCSVData('results/handle_surface_False_random_IBM_depth.csv', 'depth', sort, 5)
    h_migrate_false = getCSVData('handle_surface_False.csv', 'depth', sort, 7)
    h_migrate_false_time = getCSVData('handle_surface_False.csv', 'depth', sort, 5)

    h_migrate_greedy = getCSVData('results/nam.csv', 'depth', sort, 7)
    h_migrate_greedy_time = getCSVData('results/handle_surface_False_greedy_IBM_depth.csv', 'depth', sort, 5)
    drawHandle(h_before, h_expand_false, h_optimize, h_migrate, h_index, sort, h_expand_false_time, h_optimize_time, h_migrate_time,
               h_migrate_false, h_migrate_false_time, h_migrate_greedy,h_migrate_greedy_time)
def getCSVData(dir:str,type,sort,index):
    print(dir)
    exa=readCSV(dir, type)
    results=[]
    res=[]
    nl=45*20
    for i in exa:
        d1=i.before_single/nl
        d2=2*i.before_two/nl
        l=[]
        l.append(d1)
        l.append(d2)
        l.append(i.after_size)
        l.append(i.before_size)
        l.append(i.name)
        l.append(i.time) #5
        l.append(i.before_depth)
        l.append(i.after_depth)
        l.append(i.before_single)#8
        l.append(i.after_single)
        l.append(i.before_two)#10
        l.append(i.after_two)
        if i.before_depth<i.after_depth:
            print('depth ',i.name,i.before_depth,i.after_depth)
        res.append(l)
    if len(sort)!=0:
        for i in sort:
            for j in res:
                print(j[4], i)
                if j[4].startswith(i.split('.')[0]):
                    # if j[2] == j[3]:
                    #     print(j[4])
                    # else:
                    #     print(j[4], j[3] - j[2])
                    if index==3:
                        # print(j[index], end=', ')
                        results.append(j[index])
                        continue
                    else:
                        # print(j[index], end=', ')
                        results.append(j[index])
                        continue
        print()
        return  results
    else:
        # res = sorted(res, key=lambda x: x[6])
        res=sorted(res,key=lambda x:(x[0],x[1]))
        for i in res:
            # print('(%s,%s)'%(i[0],i[1]),end=', ')
            print('\'%s \'' % (i[4]), end=', ')
            # print('%s'%i[index], end=', ')
            # results.append('%s' %i[index])
            results.append(i[index])
        print()
        return results

def getQiskitData(dir:str,type,sort,index):
    exa=readQiskit(dir)
    res=[]
    nl=45*20
    results=[]
    for i in exa:
        d1=i.before_single/nl
        d2=2*i.before_two/nl
        l=[]
        l.append(d1)
        l.append(d2)
        l.append(i.after_size)
        l.append(i.before_size)
        l.append(i.name)
        l.append(i.time)
        l.append(i.before_depth)
        l.append(i.after_depth)
        l.append(i.before_single)#8
        l.append(i.after_single)
        l.append(i.before_two)#10
        l.append(i.after_two)
        if i.before_depth<i.after_depth:
            print('depth ',i.name,i.before_depth,i.after_depth,i.before_size ,i.after_size)
        res.append(l)

    if len(sort)>0:
        for i in sort:
            for j in res:
                if j[4].startswith(i.split('before')[0]):
                    results.append(j[index])
                    if j[2] == j[3]:
                        print(j[4])
                    else:
                        print(j[4], j[3] - j[2])
        return results
    else:
        # res = sorted(res, key=lambda x: x[3])
        res=sorted(res, key=lambda x:(x[0],x[1]))
        for j in res:
            results.append(j[index])
        return results
def getTXTData(dir:str,type,sort,index):
    print(dir)
    exa=readBest(dir)
    res=[]
    nl=45*20
    results=[]
    for i in exa:
        d1=i.before_single/nl
        d2=2*i.before_two/nl
        l=[]
        l.append(d1)
        l.append(d2)
        l.append(i.after_size)
        l.append(i.before_size)
        l.append(i.name)
        l.append(i.time)
        l.append(i.before_depth)
        l.append(i.after_depth)
        l.append(i.before_single)#8
        l.append(i.after_single)
        l.append(i.before_two)#10
        l.append(i.after_two)
        if i.before_depth<i.after_depth:
            print('depth ',i.name,i.before_depth,i.after_depth,i.before_size ,i.after_size)
        res.append(l)

    if len(sort)>0:
        for i in sort:
            for j in res:
                if j[4].startswith(i.split('before')[0]):
                    results.append(j[index])
                    if j[2] == j[3]:
                        print(j[4])
                    else:
                        print(j[4], j[3] - j[2])
        return results
    else:
        # res = sorted(res, key=lambda x: x[3])
        res=sorted(res, key=lambda x:(x[0],x[1]))
        for j in res:
            results.append(j[index])
        return results
def handler(path, output):
    print(path)
    layers = []
    ngates = 0
    n2gates = 0
    if os.path.isdir(path):
        return
    # Open file
    f = open(path, "r")
    line = f.readline()
    line = line.strip()
    qubits=0
    if line.startswith("Inputs"):
        qubits=len(line.split(','))
    file = open(output, mode='w+')
    file.write('OPENQASM 2.0;\ninclude "qelib1.inc";\nqreg q[%s];\n' %(qubits))
    while True:
        line = f.readline().strip()
        # print(line)
        content=''
        if not line:
            break
        if line.__eq__('') or line.startswith('Outputs'):
            break
        if line.startswith('QGate["H"]'):
            content = 'h q[%s];\n' % (line.split(' ')[0].split('(')[1].split(')')[0])
        elif line.startswith('QGate["not"]'):
            str=line.split(' ')
            if len(str)==3:
                content = 'x q[%s];\n' % (str[0].split('(')[1].split(')')[0])
            elif len(line.split(','))>1:
                content = 'cx q[%s],q[%s],q[%s];\n' % (
                int(str[2].split('[')[1].split(',')[0]),int(str[3].split(']')[0]), str[0].split('(')[1].split(')')[0])
            else:
                content='cx q[%s],q[%s];\n'%( int(str[2].split('[')[1].split(']')[0]), str[0].split('(')[1].split(')')[0])
        elif line.startswith('QGate["Z"]'):
            'QGate["Z"](3) with controls=[+0,+1] with nocontrol'
            str=line.split(' ')
            if len(str)==3:
                content = 'z q[%s];\n' % (str[0].split('(')[1].split(')')[0])
            elif len(line.split(','))>1:
                content = 'ccz q[%s],q[%s],q[%s];\n' % (
                int(str[2].split('[')[1].split(',')[0]),int(str[2].split(',')[1].split(']')[0]), str[0].split('(')[1].split(')')[0])
            else:
                content='cx q[%s],q[%s];\n'%( int(str[2].split('[')[1].split(']')[0]), str[0].split('(')[1].split(')')[0])
        elif line.startswith('QRot["exp(-i%Z)"'):
            str=line.split(',')
            content='rz(-i%s) q[%s];\n'%(str[1].split(']')[0],str[1].split('(')[1].split(')')[0])
        elif line.startswith('QGate["S"]*'):
            content = 'sdg q[%s];\n' % (line.split(' ')[0].split('(')[1].split(')')[0])
        elif line.startswith('QGate["S"]'):
            content = 's q[%s];\n' % (line.split(' ')[0].split('(')[1].split(')')[0])
        elif line.startswith('QGate["T"]*'):
            content = 'tdg q[%s];\n' % (line.split(' ')[0].split('(')[1].split(')')[0])
        elif line.startswith('QGate["T"]'):
            content = 't q[%s];\n' % (line.split(' ')[0].split('(')[1].split(')')[0])
        else:
            continue
        file.write(content)
    file.close()
def draw(y1,y2,y3,y4,y5,t1,t2,t3,y6,y7,y8,y9,y10,y11,y12,t4):
    matplotlib.rcParams['font.sans-serif'] = ['Times New Roman']

    x = []
    rs = set()
    r2 = []
    c = 0
    res = [(0.0, 0.1), (0.0, 0.1), (0.0, 0.1), (0.0, 0.1), (0.0, 0.1), (0.0, 0.1), (0.0, 0.1), (0.0, 0.1), (0.0, 0.1),
           (0.0, 0.1), (0.0, 0.2), (0.0, 0.2), (0.0, 0.2), (0.0, 0.2), (0.0, 0.2), (0.0, 0.2), (0.0, 0.2), (0.0, 0.2),
           (0.0, 0.2), (0.0, 0.2), (0.0, 0.3), (0.0, 0.3), (0.0, 0.3), (0.0, 0.3), (0.0, 0.3), (0.0, 0.3), (0.0, 0.3),
           (0.0, 0.3), (0.0, 0.3), (0.0, 0.3), (0.0, 0.4), (0.0, 0.4), (0.0, 0.4), (0.0, 0.4), (0.0, 0.4), (0.0, 0.4),
           (0.0, 0.4), (0.0, 0.4), (0.0, 0.4), (0.0, 0.4), (0.0, 0.5), (0.0, 0.5), (0.0, 0.5), (0.0, 0.5), (0.0, 0.5),
           (0.0, 0.5), (0.0, 0.5), (0.0, 0.5), (0.0, 0.5), (0.0, 0.5), (0.0, 0.6), (0.0, 0.6), (0.0, 0.6), (0.0, 0.6),
           (0.0, 0.6), (0.0, 0.6), (0.0, 0.6), (0.0, 0.6), (0.0, 0.6), (0.0, 0.6), (0.0, 0.7), (0.0, 0.7), (0.0, 0.7),
           (0.0, 0.7), (0.0, 0.7), (0.0, 0.7), (0.0, 0.7), (0.0, 0.7), (0.0, 0.7), (0.0, 0.7), (0.0, 0.8), (0.0, 0.8),
           (0.0, 0.8), (0.0, 0.8), (0.0, 0.8), (0.0, 0.8), (0.0, 0.8), (0.0, 0.8), (0.0, 0.8), (0.0, 0.8), (0.1, 0.1),
           (0.1, 0.1), (0.1, 0.1), (0.1, 0.1), (0.1, 0.1), (0.1, 0.1), (0.1, 0.1), (0.1, 0.1), (0.1, 0.1), (0.1, 0.1),
           (0.1, 0.2), (0.1, 0.2), (0.1, 0.2), (0.1, 0.2), (0.1, 0.2), (0.1, 0.2), (0.1, 0.2), (0.1, 0.2), (0.1, 0.2),
           (0.1, 0.2), (0.1, 0.3), (0.1, 0.3), (0.1, 0.3), (0.1, 0.3), (0.1, 0.3), (0.1, 0.3), (0.1, 0.3), (0.1, 0.3),
           (0.1, 0.3), (0.1, 0.3), (0.1, 0.4), (0.1, 0.4), (0.1, 0.4), (0.1, 0.4), (0.1, 0.4), (0.1, 0.4), (0.1, 0.4),
           (0.1, 0.4), (0.1, 0.4), (0.1, 0.4), (0.1, 0.5), (0.1, 0.5), (0.1, 0.5), (0.1, 0.5), (0.1, 0.5), (0.1, 0.5),
           (0.1, 0.5), (0.1, 0.5), (0.1, 0.5), (0.1, 0.5), (0.1, 0.6), (0.1, 0.6), (0.1, 0.6), (0.1, 0.6), (0.1, 0.6),
           (0.1, 0.6), (0.1, 0.6), (0.1, 0.6), (0.1, 0.6), (0.1, 0.6), (0.1, 0.7), (0.1, 0.7), (0.1, 0.7), (0.1, 0.7),
           (0.1, 0.7), (0.1, 0.7), (0.1, 0.7), (0.1, 0.7), (0.1, 0.7), (0.1, 0.7), (0.2, 0.1), (0.2, 0.1), (0.2, 0.1),
           (0.2, 0.1), (0.2, 0.1), (0.2, 0.1), (0.2, 0.1), (0.2, 0.1), (0.2, 0.1), (0.2, 0.1), (0.2, 0.2), (0.2, 0.2),
           (0.2, 0.2), (0.2, 0.2), (0.2, 0.2), (0.2, 0.2), (0.2, 0.2), (0.2, 0.2), (0.2, 0.2), (0.2, 0.2), (0.2, 0.3),
           (0.2, 0.3), (0.2, 0.3), (0.2, 0.3), (0.2, 0.3), (0.2, 0.3), (0.2, 0.3), (0.2, 0.3), (0.2, 0.3), (0.2, 0.3),
           (0.2, 0.4), (0.2, 0.4), (0.2, 0.4), (0.2, 0.4), (0.2, 0.4), (0.2, 0.4), (0.2, 0.4), (0.2, 0.4), (0.2, 0.4),
           (0.2, 0.4), (0.2, 0.5), (0.2, 0.5), (0.2, 0.5), (0.2, 0.5), (0.2, 0.5), (0.2, 0.5), (0.2, 0.5), (0.2, 0.5),
           (0.2, 0.5), (0.2, 0.5), (0.2, 0.6), (0.2, 0.6), (0.2, 0.6), (0.2, 0.6), (0.2, 0.6), (0.2, 0.6), (0.2, 0.6),
           (0.2, 0.6), (0.2, 0.6), (0.2, 0.6), (0.3, 0.1), (0.3, 0.1), (0.3, 0.1), (0.3, 0.1), (0.3, 0.1), (0.3, 0.1),
           (0.3, 0.1), (0.3, 0.1), (0.3, 0.1), (0.3, 0.1), (0.3, 0.2), (0.3, 0.2), (0.3, 0.2), (0.3, 0.2), (0.3, 0.2),
           (0.3, 0.2), (0.3, 0.2), (0.3, 0.2), (0.3, 0.2), (0.3, 0.2), (0.3, 0.3), (0.3, 0.3), (0.3, 0.3), (0.3, 0.3),
           (0.3, 0.3), (0.3, 0.3), (0.3, 0.3), (0.3, 0.3), (0.3, 0.3), (0.3, 0.3), (0.3, 0.4), (0.3, 0.4), (0.3, 0.4),
           (0.3, 0.4), (0.3, 0.4), (0.3, 0.4), (0.3, 0.4), (0.3, 0.4), (0.3, 0.4), (0.3, 0.4), (0.3, 0.5), (0.3, 0.5),
           (0.3, 0.5), (0.3, 0.5), (0.3, 0.5), (0.3, 0.5), (0.3, 0.5), (0.3, 0.5), (0.3, 0.5), (0.3, 0.5), (0.4, 0.1),
           (0.4, 0.1), (0.4, 0.1), (0.4, 0.1), (0.4, 0.1), (0.4, 0.1), (0.4, 0.1), (0.4, 0.1), (0.4, 0.1), (0.4, 0.1),
           (0.4, 0.2), (0.4, 0.2), (0.4, 0.2), (0.4, 0.2), (0.4, 0.2), (0.4, 0.2), (0.4, 0.2), (0.4, 0.2), (0.4, 0.2),
           (0.4, 0.2), (0.4, 0.3), (0.4, 0.3), (0.4, 0.3), (0.4, 0.3), (0.4, 0.3), (0.4, 0.3), (0.4, 0.3), (0.4, 0.3),
           (0.4, 0.3), (0.4, 0.3), (0.4, 0.4), (0.4, 0.4), (0.4, 0.4), (0.4, 0.4), (0.4, 0.4), (0.4, 0.4), (0.4, 0.4),
           (0.4, 0.4), (0.4, 0.4), (0.4, 0.4), (0.5, 0.1), (0.5, 0.1), (0.5, 0.1), (0.5, 0.1), (0.5, 0.1), (0.5, 0.1),
           (0.5, 0.1), (0.5, 0.1), (0.5, 0.1), (0.5, 0.1), (0.5, 0.2), (0.5, 0.2), (0.5, 0.2), (0.5, 0.2), (0.5, 0.2),
           (0.5, 0.2), (0.5, 0.2), (0.5, 0.2), (0.5, 0.2), (0.5, 0.2), (0.5, 0.3), (0.5, 0.3), (0.5, 0.3), (0.5, 0.3),
           (0.5, 0.3), (0.5, 0.3), (0.5, 0.3), (0.5, 0.3), (0.5, 0.3), (0.5, 0.3), (0.6, 0.1), (0.6, 0.1), (0.6, 0.1),
           (0.6, 0.1), (0.6, 0.1), (0.6, 0.1), (0.6, 0.1), (0.6, 0.1), (0.6, 0.1), (0.6, 0.1), (0.6, 0.2), (0.6, 0.2),
           (0.6, 0.2), (0.6, 0.2), (0.6, 0.2), (0.6, 0.2), (0.6, 0.2), (0.6, 0.2), (0.6, 0.2), (0.6, 0.2), (0.7, 0.1),
           (0.7, 0.1), (0.7, 0.1), (0.7, 0.1), (0.7, 0.1), (0.7, 0.1), (0.7, 0.1), (0.7, 0.1), (0.7, 0.1), (0.7, 0.1)]
    for r in res:
        rs.add(r)
    rr = list(rs)
    rr = sorted(rr, key=lambda s: (s[0], s[1]))
    for r in range(0,len(rr), 5):
        r2.append(rr[r])

    l = int(len(res))
    for i in range(0, l*6,6):
        x.append(i)


    plt.ylim((0.00, 700))
    '''  x b c v d e q f g h i 
    b-ini
    c-random_mini
    v_random_ave
    d-greedy
    e-spin
    q-qiskit
    f-spin_time
    g-random_time
    h_greedy_time
    i_qiskit_time
      '''
    print('x b c v d e q f g h i j k l m')
    count=0
    reduce=0
    # for i in range(0, len(x),1):
    #     if y3[i]>y4[i]:
    #         count+=1
    #         print(x[i], y3[i], y4[i]-y3[i],abs((y3[i]-y4[i])/y4[i]) )
    #         # reduce += abs((y2[i] - y4[i]) / y4[i])
    #         if abs((y3[i]-y4[i])/y4[i])>reduce:
    #             reduce=abs((y3[i]-y4[i])/y4[i])
    # print(reduce)
    # print(count)

    for i in range(0, len(x),1):
        if y10[i]>y7[i]:
            count+=1
            print(x[i], y7[i], y10[i]-y7[i],abs((y7[i]-y10[i])/y10[i]) )
            # reduce += abs((y2[i] - y4[i]) / y4[i])
            if abs((y7[i]-y10[i])/y10[i])>reduce:
                reduce=abs((y7[i]-y10[i])/y10[i])
    # print(reduce)
    # print(count)
    #     print(f'{x[i]} {y1[i]} {y2[i]} {y3[i]} {y4[i]} {y5[i]} {y11[i]} {t1[i]:.2f} {t2[i]:.2f} {t3[i]:.2f}')

    # for i in range(len(x)):
    #     print(f'{x[i]} {y6[i]} {y7[i]} {y10[i]} {y8[i]} {y9[i]} {y12[i]} {t1[i]:.2f} {t2[i]:.2f} {t3[i]:.2f} {t4[i]:.2f}')

    plt.bar(x, y1, width=0.2, color="cyan")
    plt.plot(x, y2, marker='p', ms=0.2, label="a", color="yellow")
    plt.plot(x, y4, marker='p', ms=0.2, label="a", color='#e70dba')
    plt.plot(x, y5, marker='p', ms=0.2,  label="a", color='blue')
    # plt.bar(x, y6, width=0.2, color="cyan")
    # plt.plot(x, y7, marker='p', ms=0.2, label="a", color="yellow")
    # plt.plot(x, y8, marker='p', ms=0.2, label="a", color='#e70dba')
    # plt.plot(x, y9, marker='p', ms=0.2,  label="a", color='blue')


    # plt.plot(x, y6, marker='^', ms=0.5, label="a",color='black')
    # plt.plot(x, y7, marker='.', ms=0.5, label="a",color="red")
    # plt.plot(x, y8, marker='^', ms=0.5, label="a",color='green')
    # plt.plot(x, y9, marker='^', ms=0.5, label="a",color='purple')

    # plt.plot(x, t1, marker='^', ms=2, label="a")
    # plt.plot(x, t2, marker='.', ms=2, label="a")
    # plt.plot(x, t3, marker='^', ms=2, label="a")

    # plt.plot([1, 2, 3, 4], [20, 30, 80, 40], label="b")
    # plt.xticks(rotation=45)
    plt.xlabel("(d1, d2)", fontsize=10)
    plt.ylabel("depth", fontsize=10)
    # plt.title("Activity")
    plt.xticks(range(0, l, 50))
    plt.gca().set_xticklabels(r2, fontsize=10)
    plt.legend([ 'QSRewriting','QGRewriting', 'PaF','depth'], fontsize=10, loc="upper right",ncol=4,handlelength=1, markerscale=0.1)

    # 在折线图上显示具体数值, ha参数控制水平对齐方式, va控制垂直对齐方式
    # for x1, y1 in zip(x, y):
    #     # x,y 代表位置
    #     plt.text(x1, y1 + 1, str(y1), ha='center', va='bottom', fontsize=20, rotation=0)

    plt.savefig(fname="./para_bolt_granularity.eps", figsize=(8.3, 6), dpi=600, bbox_inches='tight',pad_inches=-0.01)
    plt.show()

def drawHandle(y1,y2,y3,y4,labels,names,t1,t2,t3,y5,t4,y6,t5):
    matplotlib.rcParams['font.sans-serif'] = ['Times New Roman']
    name=['Toff-NC$_{3}$','Toff-Barenco$_{3}$','Mod 5$_{4}$','Toff-NC$_{4}$','Toff-Barenco$_{4}$','Toff-NC$_{5}$','Toff-Barenco$_{5}$','VBE-Adder$_{3}$', 'GF($2^{4}$)-Mult', 'Mod-Mult$_{55}$', 'GF($2^{5}$)-Mult', 'CSLA-MUX$_{3}$','Toff-NC$_{10}$', 'GF($2^{6}$)-Mult', 'Toff-Barenco$_{10}$','RC-Adder$_{6}$',  'Mod-Red$_{21}$','GF($2^{7}$)-Mult ', 'CSUM-MUX$_{9}$',  'QCLA-Com$_{7}$','QCLA-Adder$_{10}$','GF($2^{8}$)-Mult','GF($2^{9}$)-Mult', 'GF($2^{10}$)-Mult','QCLA-Mod$_{7}$','Adder$_{8}$', 'GF($2^{16}$)-Mult','Mod-Adder$_{1024}$','GF($2^{32}$)-Mult','GF($2^{64}$)-Mult', 'GF($2^{128}$)-Mult','GF($2^{131}$)-Mult', 'GF($2^{163}$)-Mult']
    # name=['Toff-NC$_{3}$','Toff-Barenco$_{3}$','Toff-NC$_{4}$', 'Mod-Mult$_{55}$', 'CSUM-MUX$_{9}$','Mod 5$_{4}$','QCLA-Adder$_{10}$','QCLA-Com$_{7}$','Toff-NC$_{5}$', 'Toff-Barenco$_{4}$', 'CSLA-MUX$_{3}$','GF($2^{4}$)-Mult', 'GF($2^{5}$)-Mult','VBE-Adder$_{3}$', 'Toff-Barenco$_{5}$','GF($2^{6}$)-Mult', 'RC-Adder$_{6}$', 'GF($2^{7}$)-Mult ', 'Toff-NC$_{10}$',  'GF($2^{9}$)-Mult', 'GF($2^{8}$)-Mult','QCLA-Mod$_{7}$',   'GF($2^{10}$)-Mult', 'Mod-Red$_{21}$', 'Adder$_{8}$','Toff-Barenco$_{10}$', 'GF($2^{16}$)-Mult','GF($2^{32}$)-Mult','GF($2^{64}$)-Mult', 'GF($2^{128}$)-Mult','Mod-Adder$_{1024}$', 'GF($2^{131}$)-Mult', 'GF($2^{163}$)-Mult']

    x = []
    rs = set()
    c = 0
    res =labels
    s1=0
    s2=0
    s3=0
    s4=0
    s5=0
    s6=0
    s7=0
    s8=0
    s9=0
    s10=0
    s11=0

    l = int(len(res))
    for i in range(0, l):
        x.append(i)
        f=open('./nam-benchmarks/%s'%names[i],'r')
        f.readline()
        f.readline()
        str=f.readline()
        s=names[i].split('_')
    #
    #     for si in range(len(s)):
    #         if si<len(s)-1:
    #             kk=s[si].split('^')
    #             for sii in range(len(kk)):
    #                 if sii < len(kk) - 1:
    #                     print('%s' % kk[sii], end='\^{}')
    #                 else:
    #                     print('%s' % kk[sii], end='')
    #             print('',end='\_')
    #         else:
    #             kk=s[si].split('^')
    #             for sii in range(len(kk)):
    #                 if sii < len(kk) - 1:
    #                     print('%s' % kk[sii], end='\^{}')
    #                 else:
    #                     print('%s' % kk[sii], end='')
    #             print('', end=' ')
        s1+=y1[i]
        s2+=y2[i]
        s3+=t1[i]
        s4+=y3[i]
        s5+=t2[i]
        s6+=y4[i]
        s7+=t3[i]
        s8+=y5[i]
        s9+=t4[i]
        s10+=y6[i]
        s11+=t5[i]
        # print('&%s&%s&%s&%s&%s&%s&%.2f##&%.2f## \\\\' % (
        # str.split(' ')[1].split('[')[1].split(']')[0], y1[i], y2[i], y5[i], y4[i], y6[i], (y5[i] - y4[i]) * 100 / y5[i],
        # (y5[i] - y6[i]) * 100 / y5[i]))
        print('%s&%s&%s&%s&%.2f &%s&%.2f &%s&%.2f&%.2f## \\\\'%(name[i],str.split(' ')[1].split('[')[1].split(']')[0],y1[i],y2[i],t1[i],y5[i],t2[i],y6[i],t5[i],(y5[i]-y6[i])*100/y5[i]))
    print('\\hline')
    print('&&%s&%s&%.2f&%s&%.2f&%s&%.2f&%s&%.2f&%.2f## \\\\' %(s1, s2, s3, s8, s9, s6, s7, s10, s11,(s8-s10)*100/s8))

    plt.ylim((0.00, 10000.0))

    plt.plot(x, y1, marker='*', ms=1, label="a",color="green")
    plt.plot(x, y2, marker='.', ms=1, label="a",color="pink")
    plt.plot(x, y3, marker='.', ms=1, label="a",color="blue")
    plt.plot(x, y4, marker='^', ms=1, label="a",color='yellow')
    # plt.plot(x, y5, marker='^', ms=2, label="a",color='red')
    # plt.plot(x, y3, marker='^', ms=10, label="a")

    # plt.plot([1, 2, 3, 4], [20, 30, 80, 40], label="b")
    plt.xticks(rotation=-90)
    plt.xlabel("#circuit", fontsize=10)
    plt.ylabel("gate count", fontsize=10)
    # plt.title("Activity")
    plt.xticks(range(0, l))
    plt.gca().set_xticklabels(res,fontsize=6)
    plt.legend(['gate_count_before', 'gate_count_after_transforming','gate_count_after_migrating'], loc="upper right")

    # 在折线图上显示具体数值, ha参数控制水平对齐方式, va控制垂直对齐方式
    # for x1, y1 in zip(x, y):
    #     # x,y 代表位置
    #     plt.text(x1, y1 + 1, str(y1), ha='center', va='bottom', fontsize=20, rotation=0)

    plt.savefig(fname="./para_bolt_granularity.jpg", dpi=300, bbox_inches='tight')
    plt.show()
# inpath='./benchmark/test_after.qasm'
# outpath='./benchmark/test_after_out.qasm'
#
# gates=getMinigate('results/qct/', 'depth')
# gates=getAVEgate('results/qct/', 'depth')
# f=open('./results/test.txt', 'w')
# keys=gates.keys()
# for k in keys:
#     f.write('%s %s %.0f %.0f %.2f %.0f %.0f %.0f %.0f %.0f %.0f %.0f\n'%(gates.get(k).name,gates.get(k).before_size,gates.get(k).after_size,gates.get(k).reduced_size,gates.get(k).time, gates.get(k).before_single,gates.get(k).after_single,gates.get(k).before_two,gates.get(k).after_two,gates.get(k).before_depth,gates.get(k).after_depth,gates.get(k).space))
# f.flush()
# f.close()

cr_path='./results/23031346_BIGD_depth.csv'
mct_qc_path='./results/BIGD_MCM.txt'
mct_qc_cycle_path='./results/BIGD_MCM_cycle.txt'
greedy_qc_depth_path='./results/BIGD_True_greedy_IBM_depth.csv'
greedy_qc_cycle_path='./results/BIGD_True_greedy_IBM_cycle.csv'
qc_path='./results/03231749_BIGD_True_random_IBM_depth.csv'
random_qc_path='./results/03231842_BIGD_True_random_IBM_depth.csv'

random_mini = './results/random_mini.txt'
random_ave = './results/random_ave.txt'
greedy_path = './results/greedy_ubuntu.csv'
spin_ubuntu = './results/spin_ubuntu.csv'

print('*************************************')
# print('----------------MCM-----depth-------------')
# compare_CR_best_QC(cr_path,mct_qc_path,'depth')
# print('----------------MCM---cycle---------------')
# compare_CR_best_QC(cr_path,mct_qc_cycle_path,'depth')
# print('--------------greedy--cycle---------------')
# compare_CR_QC(cr_path, greedy_qc_cycle_path,'cycle')
print('--------------greedy--depth---------------')
compare_CR_QC(spin_ubuntu, greedy_path,'depth')
print('--------------random_depth-----------------')
compare_CR_best_QC(spin_ubuntu, random_ave,'depth')
# print('--------------random_cycle----------------')
# compare_CR_best_QC(cr_path,'./results/BIGD_random_cycle.txt','depth')

# inpath='./benchmark/test.qasm'
# outpath='./benchmark/test_out.qasm'
# data_path='./benchmark/QFT_and_Adders/'
# out_path='./benchmark/QFT_and_Adders_handle/'
# for file_path in listdir(data_path):
#     handler(data_path+file_path, out_path+file_path+'.qasm')
# sort=['tof_3_before.qasm', 'barenco_tof_3_before.qasm', 'tof_4_before.qasm', 'mod5_4_before.qasm', 'barenco_tof_4_before.qasm', 'tof_5_before.qasm', 'barenco_tof_5_before.qasm', 'vbe_adder_3_before.qasm', 'mod_mult_55_before.qasm', 'csla_mux_3_before_original.qasm', 'tof_10_before.qasm', 'gf2^4_mult_before.qasm', 'csum_mux_9_before_corrected.qasm', 'barenco_tof_10_before.qasm', 'rc_adder_6_before.qasm', 'mod_red_21_before.qasm', 'gf2^5_mult_before.qasm', 'qcla_com_7_before.qasm', 'gf2^6_mult_before.qasm', 'qcla_adder_10_before.qasm', 'gf2^7_mult_before.qasm', 'qcla_mod_7_before.qasm', 'gf2^8_mult_before.qasm', 'adder_8_before.qasm', 'gf2^9_mult_before.qasm', 'gf2^10_mult_before.qasm', 'gf2^16_mult_before.qasm', 'mod_adder_1024_before.qasm', 'gf2^32_mult_before.qasm', 'gf2^64_mult_before.qasm', 'gf2^128_mult_before.qasm', 'gf2^131_mult_before.qasm', 'gf2^163_mult_before.qasm']
# getTXTData('results/handle_output_random.txt','depth',sort)
# print()
sort=['tof_3.qasm ', 'barenco_tof_3.qasm ', 'mod5_4.qasm ', 'tof_4.qasm ', 'barenco_tof_4.qasm ', 'tof_5.qasm ', 'barenco_tof_5.qasm ', 'vbe_adder_3.qasm ', 'gf2^4_mult.qasm ', 'mod_mult_55.qasm ', 'gf2^5_mult.qasm ', 'csla_mux_3.qasm ', 'tof_10.qasm ', 'gf2^6_mult.qasm ', 'barenco_tof_10.qasm ', 'rc_adder_6.qasm ', 'mod_red_21.qasm ', 'gf2^7_mult.qasm ', 'csum_mux_9.qasm ', 'qcla_com_7.qasm ', 'qcla_adder_10.qasm ', 'gf2^8_mult.qasm ', 'gf2^9_mult.qasm ', 'gf2^10_mult.qasm ', 'qcla_mod_7.qasm ', 'adder_8.qasm ', 'gf2^16_mult.qasm ', 'mod_adder_1024.qasm ', 'gf2^32_mult.qasm ', 'gf2^64_mult.qasm ', 'gf2^128_mult.qasm ', 'gf2^131_mult.qasm ', 'gf2^163_mult.qasm '
]
# sort=['tof_3.qasm ', 'barenco_tof_3.qasm ', 'tof_4.qasm ', 'mod_mult_55.qasm ', 'csum_mux_9.qasm ', 'mod5_4.qasm ', 'qcla_adder_10.qasm ', 'qcla_com_7.qasm ', 'tof_5.qasm ', 'barenco_tof_4.qasm ', 'csla_mux_3.qasm ', 'gf2^4_mult.qasm ', 'gf2^5_mult.qasm ', 'vbe_adder_3.qasm ', 'barenco_tof_5.qasm ', 'gf2^6_mult.qasm ', 'rc_adder_6.qasm ', 'gf2^7_mult.qasm ', 'tof_10.qasm ', 'gf2^9_mult.qasm ', 'gf2^8_mult.qasm ', 'qcla_mod_7.qasm ', 'gf2^10_mult.qasm ', 'mod_red_21.qasm ', 'adder_8.qasm ', 'barenco_tof_10.qasm ', 'gf2^16_mult.qasm ', 'gf2^32_mult.qasm ', 'gf2^64_mult.qasm ', 'gf2^128_mult.qasm ', 'mod_adder_1024.qasm ', 'gf2^131_mult.qasm ', 'gf2^163_mult.qasm '
# ]
# sort=['tof_3_before.qasm ', 'barenco_tof_3_before.qasm ', 'tof_4_before.qasm ', 'mod5_4_before.qasm ', 'barenco_tof_4_before.qasm ', 'tof_5_before.qasm ', 'barenco_tof_5_before.qasm ', 'vbe_adder_3_before.qasm ', 'mod_mult_55_before.qasm ', 'csla_mux_3_before_original.qasm ', 'tof_10_before.qasm ', 'gf2^4_mult_before.qasm ', 'csum_mux_9_before_corrected.qasm ', 'barenco_tof_10_before.qasm ', 'rc_adder_6_before.qasm ', 'mod_red_21_before.qasm ', 'gf2^5_mult_before.qasm ', 'qcla_com_7_before.qasm ', 'gf2^6_mult_before.qasm ', 'qcla_adder_10_before.qasm ', 'gf2^7_mult_before.qasm ', 'qcla_mod_7_before.qasm ', 'gf2^8_mult_before.qasm ', 'adder_8_before.qasm ', 'gf2^9_mult_before.qasm ', 'gf2^10_mult_before.qasm ', 'gf2^16_mult_before.qasm ', 'mod_adder_1024_before.qasm ', 'gf2^32_mult_before.qasm ', 'gf2^64_mult_before.qasm ', 'gf2^128_mult_before.qasm ', 'gf2^131_mult_before.qasm ', 'gf2^163_mult_before.qasm ']
# # sort=getCSVData('results/data/03241522_handle_True_random_IBM_cycle.csv','depth',sort,4)
handle=[7.754887502163468, 6.044394119358453, 3.321928094887362, 4.169925001442312, 4.700439718141092, 5.643856189774724, 5.807354922057604, 8.271463027904375, 15.596102380979142, 15.669909261938587, 16.291188689720475, 9.667111542075027, 11.655977862486942, 5.672425341971495, 6.303780748177103, 13.606983470367512, 6.820178962415188, 7.257387842692652, 7.734709620225838, 7.971543553950772, 3.9068905956085187, 9.756556322524087, 5.129283016944966, 6.20945336562895, 6.820178962415188, 6.569855608330948, 7.459431618637297, 6.087462841250339, 5.672425341971495, 3.169925001442312, 3.9068905956085187, 4.392317422778761, 4.906890595608519]
handle_random=[9.813781191217037, 8.813781191217037, 5.857980995127572, 6.832890014164741, 7.409390936137702, 7.409390936137702, 5.807354922057604, 10.559377090526683, 17.90912546368359, 17.977374963987966, 18.60610515020425, 11.923698883295073, 13.921376076416081, 7.924812503605781, 8.566054038171092, 15.911321761492488, 9.090112419664289, 9.533329732305834, 9.938109326219239, 10.256208688527387, 5.977279923499917, 12.065079488999862, 6.894817763307944, 8.118941072723507, 9.025139562278508, 8.791162888555018, 9.787902559391432, 7.643856189774724, 7.994353436858858, 5.491853096329675, 6.22881869049588, 6.714245517666122, 7.22881869049588]
handle_output_random=[9.784634845557521, 8.813781191217037, 5.857980995127572, 6.832890014164741, 7.409390936137702, 7.409390936137702, 4.807354922057604, 10.395534135462302, 17.70646229218821, 17.77484495769455, 18.402633219784587, 11.746094383705463, 13.730576276234546, 7.813781191217037, 8.43879185257826, 15.712392655030982, 8.951284714966972, 9.38586240064146, 9.786269627648466, 10.096715154488535, 5.977279923499917, 12.065079488999862, 6.894817763307944, 8.076815597050832, 9.025139562278508, 8.791162888555018, 9.787902559391432, 7.6293566200796095, 7.994353436858858, 5.491853096329675, 6.22881869049588, 6.714245517666122, 7.22881869049588]
handle_surface=[11.311748315004959, 10.361943773735241, 7.392317422778761, 8.375039431346925, 8.954196310386875, 8.936637939002571, 6.392317422778761, 11.966865900387539, 19.290277643872084, 19.358687683282923, 19.98669340619099, 13.322350697548458, 15.311074199879828, 9.368506461507693, 9.99859042974533, 17.2950783385809, 10.514714054138487, 10.952013164889486, 11.354800344350597, 11.666667840690355, 7.499845887083206, 13.584610237249526, 8.353146825498083, 9.546894459887637, 10.563196272216738, 10.29920801838728, 11.319672120946995, 9.118941072723507, 9.513727595952437, 7.011227255423254, 7.7481928495894605, 8.233619676759702, 8.78135971352466]
handle_names=['adder_8', 'barenco_tof_10', 'barenco_tof_3', 'barenco_tof_4', 'barenco_tof_5', 'csla_mux_3_original', 'csum_mux_9_corrected', 'gf2^10_mult', 'gf2^128_mult', 'gf2^131_mult', 'gf2^163_mult', 'gf2^16_mult', 'gf2^32_mult', 'gf2^4_mult', 'gf2^5_mult', 'gf2^64_mult', 'gf2^6_mult', 'gf2^7_mult', 'gf2^8_mult', 'gf2^9_mult', 'mod5_4', 'mod_adder_1024', 'mod_mult_55', 'mod_red_21', 'qcla_adder_10', 'qcla_com_7', 'qcla_mod_7', 'rc_adder_6', 'tof_10', 'tof_3', 'tof_4', 'tof_5', 'vbe_adder_3']
BIGD=[45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 225, 225, 225, 225, 225, 225, 225, 225, 225, 225, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 315, 315, 315, 315, 315, 315, 315, 315, 315, 315, 360, 360, 360, 360, 360, 360, 360, 360, 360, 360, 135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 180, 180, 180, 180, 180, 180, 180, 180, 180, 180, 225, 225, 225, 225, 225, 225, 225, 225, 225, 225, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 315, 315, 315, 315, 315, 315, 315, 315, 315, 315, 360, 360, 360, 360, 360, 360, 360, 360, 360, 360, 405, 405, 405, 405, 405, 405, 405, 405, 405, 405, 225, 225, 225, 225, 225, 225, 225, 225, 225, 225, 270, 270, 270, 270, 270, 270, 270, 270, 270, 270, 315, 315, 315, 315, 315, 315, 315, 315, 315, 315, 360, 360, 360, 360, 360, 360, 360, 360, 360, 360, 405, 405, 405, 405, 405, 405, 405, 405, 405, 405, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 315, 315, 315, 315, 315, 315, 315, 315, 315, 315, 360, 360, 360, 360, 360, 360, 360, 360, 360, 360, 405, 405, 405, 405, 405, 405, 405, 405, 405, 405, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 495, 495, 495, 495, 495, 495, 495, 495, 495, 495, 405, 405, 405, 405, 405, 405, 405, 405, 405, 405, 450, 450, 450, 450, 450, 450, 450, 450, 450, 450, 495, 495, 495, 495, 495, 495, 495, 495, 495, 495, 540, 540, 540, 540, 540, 540, 540, 540, 540, 540, 495, 495, 495, 495, 495, 495, 495, 495, 495, 495, 540, 540, 540, 540, 540, 540, 540, 540, 540, 540, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 585, 630, 630, 630, 630, 630, 630, 630, 630, 630, 630, 675, 675, 675, 675, 675, 675, 675, 675, 675, 675]
BIGD_MCM = [26, 15, 22, 22, 19, 23, 13, 21, 22, 28, 54, 55, 62, 55, 54, 55, 52, 51, 40, 59, 82, 87, 45, 80, 82, 77, 78, 87, 86, 80, 104, 104, 117, 107, 110, 95, 94, 123, 108, 90, 125, 139, 121, 142, 156, 150, 142, 122, 128, 129, 180, 161, 153, 168, 179, 175, 145, 147, 165, 161, 185, 179, 201, 181, 185, 192, 189, 180, 171, 182, 200, 202, 203, 220, 202, 207, 197, 204, 202, 195, 67, 56, 58, 55, 68, 66, 59, 81, 57, 53, 128, 122, 111, 104, 89, 105, 100, 105, 106, 91, 160, 130, 142, 145, 149, 136, 149, 143, 148, 140, 193, 191, 160, 169, 177, 190, 164, 168, 167, 171, 213, 210, 223, 221, 190, 207, 226, 200, 208, 201, 243, 239, 226, 227, 239, 233, 233, 242, 218, 220, 264, 244, 266, 254, 278, 296, 296, 257, 274, 235, 67, 59, 79, 71, 73, 54, 75, 72, 77, 63, 139, 121, 116, 128, 105, 120, 117, 96, 130, 120, 168, 169, 166, 165, 144, 164, 159, 186, 164, 148, 216, 204, 230, 204, 208, 218, 226, 207, 179, 220, 268, 249, 258, 219, 267, 239, 243, 243, 250, 249, 284, 281, 263, 258, 273, 269, 280, 254, 269, 268, 72, 67, 68, 75, 70, 79, 79, 55, 82, 72, 132, 117, 137, 139, 143, 145, 140, 121, 114, 133, 198, 203, 194, 186, 180, 184, 199, 200, 174, 189, 256, 233, 224, 213, 249, 232, 197, 237, 225, 204, 274, 243, 266, 244, 275, 264, 282, 261, 256, 266, 69, 73, 63, 71, 66, 72, 81, 73, 51, 63, 140, 146, 125, 121, 144, 126, 154, 124, 151, 141, 189, 189, 155, 172, 174, 191, 180, 189, 187, 190, 246, 221, 221, 241, 242, 235, 222, 239, 239, 231, 77, 68, 45, 65, 65, 87, 59, 75, 65, 84, 149, 160, 143, 143, 133, 146, 142, 134, 132, 123, 187, 195, 182, 179, 196, 184, 183, 191, 211, 182, 74, 85, 48, 72, 71, 75, 64, 65, 79, 70, 132, 107, 144, 153, 145, 138, 133, 138, 136, 139, 83, 76, 71, 71, 62, 60, 77, 64, 69, 65]
BIGD_random = [26, 15, 22, 22, 19, 23, 13, 21, 22, 28, 52, 53, 62, 54, 54, 53, 52, 50, 39, 59, 81, 85, 41, 78, 82, 76, 78, 85, 86, 79, 101, 104, 113, 107, 109, 95, 92, 123, 108, 89, 122, 138, 121, 140, 155, 147, 141, 120, 127, 129, 180, 157, 152, 168, 179, 175, 140, 140, 164, 160, 181, 175, 199, 179, 182, 192, 188, 178, 171, 179, 192, 201, 203, 218, 201, 202, 197, 202, 197, 192, 66, 56, 58, 55, 68, 66, 59, 81, 57, 53, 128, 122, 111, 104, 89, 105, 100, 105, 106, 91, 160, 126, 142, 145, 149, 134, 149, 143, 148, 140, 193, 191, 160, 169, 175, 190, 162, 168, 164, 171, 213, 208, 223, 220, 190, 205, 224, 199, 208, 201, 241, 237, 226, 226, 239, 232, 232, 241, 217, 220, 263, 243, 265, 250, 278, 295, 295, 257, 273, 235, 64, 59, 77, 64, 73, 52, 75, 72, 69, 62, 136, 121, 113, 128, 101, 118, 115, 93, 130, 120, 167, 168, 166, 162, 144, 164, 159, 186, 160, 148, 212, 204, 230, 201, 207, 218, 226, 205, 179, 220, 266, 249, 258, 219, 263, 236, 240, 242, 250, 243, 284, 279, 263, 257, 273, 269, 280, 249, 265, 267, 72, 67, 66, 75, 68, 77, 79, 51, 69, 72, 130, 113, 139, 137, 139, 139, 135, 121, 110, 133, 198, 201, 191, 184, 178, 182, 199, 196, 170, 189, 252, 231, 220, 213, 247, 230, 197, 235, 225, 202, 274, 239, 266, 243, 275, 263, 280, 253, 258, 260, 67, 71, 63, 65, 62, 70, 79, 70, 51, 61, 134, 139, 127, 115, 140, 126, 145, 118, 147, 140, 186, 188, 157, 160, 172, 189, 172, 183, 184, 182, 244, 221, 211, 232, 238, 231, 223, 234, 238, 225, 71, 63, 45, 65, 62, 84, 59, 75, 63, 77, 143, 158, 141, 141, 130, 148, 134, 131, 130, 119, 186, 193, 180, 174, 196, 180, 182, 191, 207, 178, 71, 73, 45, 71, 71, 73, 60, 58, 77, 66, 129, 101, 146, 149, 142, 132, 127, 134, 132, 134, 77, 74, 69, 69, 55, 58, 70, 61, 62, 60]
BIGD_greedy=[26, 15, 22, 24, 19, 23, 13, 21, 22, 28, 58, 55, 62, 55, 54, 54, 52, 55, 40, 60, 83, 88, 48, 80, 82, 77, 80, 88, 86, 80, 104, 104, 118, 107, 115, 96, 98, 126, 108, 92, 125, 140, 122, 142, 158, 150, 144, 122, 128, 129, 183, 161, 153, 168, 179, 175, 145, 147, 165, 161, 185, 179, 203, 181, 185, 192, 189, 180, 171, 182, 200, 202, 205, 220, 204, 211, 197, 207, 203, 195, 67, 56, 58, 55, 68, 66, 59, 83, 57, 53, 130, 122, 111, 104, 89, 107, 104, 105, 106, 95, 160, 130, 143, 145, 149, 136, 149, 143, 149, 140, 193, 191, 160, 169, 177, 194, 164, 170, 168, 171, 213, 210, 223, 221, 190, 207, 226, 200, 212, 201, 245, 239, 228, 231, 241, 234, 233, 242, 218, 221, 265, 244, 266, 254, 281, 298, 296, 257, 274, 235, 67, 66, 81, 73, 73, 54, 75, 72, 77, 63, 141, 121, 116, 128, 105, 124, 117, 98, 130, 120, 168, 169, 166, 165, 144, 168, 159, 186, 164, 150, 216, 206, 232, 204, 208, 218, 232, 207, 183, 220, 270, 249, 258, 220, 268, 239, 244, 245, 251, 254, 287, 283, 263, 258, 277, 269, 280, 254, 269, 268, 72, 67, 68, 81, 70, 81, 79, 55, 82, 72, 132, 117, 137, 140, 145, 145, 140, 121, 114, 135, 200, 203, 194, 186, 180, 186, 199, 200, 174, 189, 256, 233, 226, 215, 249, 235, 197, 237, 225, 204, 274, 243, 266, 244, 275, 264, 282, 261, 256, 266, 73, 73, 63, 71, 66, 72, 81, 73, 56, 63, 140, 148, 125, 121, 144, 128, 154, 124, 154, 141, 189, 190, 155, 175, 174, 193, 184, 189, 188, 190, 246, 221, 221, 241, 246, 237, 224, 239, 239, 231, 77, 72, 45, 65, 65, 89, 59, 83, 65, 84, 149, 163, 143, 143, 133, 148, 142, 134, 132, 123, 187, 195, 188, 179, 196, 184, 183, 191, 211, 182, 75, 85, 48, 72, 71, 75, 63, 65, 81, 70, 132, 107, 144, 153, 145, 138, 133, 138, 136, 139, 83, 76, 71, 71, 64, 60, 77, 64, 69, 67]
BIGD_spin=[32, 29, 30, 37, 25, 27, 21, 27, 23, 35, 66, 67, 72, 73, 65, 66, 64, 60, 66, 69, 99, 103, 87, 103, 101, 109, 99, 100, 103, 109, 134, 131, 144, 139, 143, 141, 137, 141, 135, 124, 156, 172, 170, 173, 180, 170, 173, 167, 160, 170, 204, 202, 194, 209, 205, 214, 200, 195, 192, 195, 238, 224, 234, 229, 223, 231, 233, 226, 217, 224, 244, 243, 256, 273, 261, 246, 249, 250, 244, 248, 71, 72, 58, 65, 78, 69, 66, 81, 62, 65, 132, 125, 115, 114, 115, 113, 108, 118, 119, 119, 160, 143, 156, 159, 164, 148, 162, 158, 157, 154, 207, 199, 188, 190, 202, 207, 182, 182, 197, 191, 238, 229, 251, 239, 217, 226, 237, 219, 227, 228, 269, 267, 260, 264, 273, 261, 265, 275, 247, 249, 297, 288, 298, 292, 311, 305, 314, 293, 290, 284, 77, 79, 85, 81, 93, 69, 89, 83, 73, 73, 147, 139, 135, 140, 107, 130, 131, 122, 144, 139, 193, 190, 195, 178, 170, 186, 187, 195, 165, 175, 232, 225, 227, 230, 227, 235, 243, 227, 222, 250, 296, 272, 273, 253, 282, 272, 274, 276, 280, 276, 300, 310, 300, 292, 289, 298, 304, 284, 295, 297, 91, 99, 93, 94, 94, 99, 87, 83, 98, 87, 152, 138, 165, 154, 147, 158, 155, 132, 134, 154, 216, 197, 199, 200, 199, 195, 207, 208, 194, 206, 260, 253, 249, 245, 270, 266, 237, 259, 241, 229, 293, 268, 295, 290, 289, 292, 299, 302, 282, 289, 87, 101, 93, 97, 103, 104, 103, 101, 95, 99, 161, 153, 164, 142, 158, 158, 172, 144, 173, 168, 222, 212, 182, 193, 205, 219, 203, 199, 215, 208, 258, 251, 236, 265, 262, 263, 254, 257, 264, 259, 103, 107, 90, 113, 101, 117, 103, 99, 95, 111, 182, 185, 154, 177, 168, 154, 163, 162, 172, 157, 219, 209, 222, 217, 223, 219, 227, 215, 222, 215, 109, 117, 93, 105, 117, 110, 101, 105, 127, 113, 170, 159, 178, 176, 187, 168, 160, 164, 182, 176, 121, 132, 109, 127, 113, 95, 121, 135, 125, 121]
h_index=[9, 10, 15, 15, 18, 21, 26, 30, 35, 50, 51, 51, 56, 66, 68, 74, 79, 95, 113, 113, 153, 176, 213, 216, 251, 309, 813, 865, 3227, 12477, 49533, 52133, 80193]
# h_before=getCSVData('handle_expand.csv','depth',sort,3)
# h_before_time=getCSVData('handle_expand.csv','depth',sort,5)
# h_after=getCSVData('handle_expand.csv','depth', sort, 2)
#
# h_optimize=getCSVData('handle_optimize.csv','depth',sort,2)
# h_optimize_time=getCSVData('handle_optimize.csv','depth',sort,5)
# h_migrate=getCSVData('results/handle_surface_False_random_IBM_depth.csv','depth',sort,2)
# h_migrate_time=getCSVData('results/handle_surface_False_random_IBM_depth.csv','depth',sort,5)
# h_migrate_false=getCSVData('handle_surface_False.csv','depth',sort,2)
# h_migrate_false_time=getCSVData('handle_surface_False.csv','depth',sort,5)
#
# h_migrate_greedy = getCSVData('results/nam.csv', 'depth', sort, 2)
# h_migrate_greedy_time = getCSVData('results/handle_surface_False_greedy_IBM_depth.csv', 'depth', sort, 5)
# drawHandle(h_before, h_after, h_optimize, h_migrate, h_index, sort, h_before_time, h_optimize_time, h_migrate_time,
#            h_migrate_false, h_migrate_false_time, h_migrate_greedy, h_migrate_greedy_time)
# handle_depth()
bigd_new()

# drawHandle(handle, handle_random,handle_output_random,handle_surface,handle_names)

# b_r_time=getTXTData('./results/BIGD_random.txt','depth',sort,5)
# b_g_time=getTXTData('./results/BIGD_MCM.txt','depth',sort,5)
# b_s_time=getCSVData('./results/23031346_BIGD_depth.csv','depth',sort,5)
# draw(BIGD,BIGD_random,BIGD_MCM, BIGD_greedy, BIGD_spin, b_g_time,b_r_time,b_s_time)





# print('*************************************')
# print('----------------MCM------------------')
# compare_CR_best_QC(cr_path,mct_qc_path,'depth')
# print('--------------greedy-----------------')
# compare_CR_QC(cr_path,greedy_qc_depth_path,'depth')
# print('--------------random-----------------')
# compare_CR_best_QC(cr_path,'./results/BIGD_random.txt','depth')
# print('**************************************')
# mct_qc_path='./results/handle_output_MCM.txt'
# greedy_qc_depth_path='./results/data/03282356_handle_output_True_greedy_IBM_depth.csv'
# random_qc_path='./results/handle_output_random.txt'
# print('----------------MCM------------------')
# # compare_CR_best_QC(cr_path, mct_qc_path, 'depth')
# print('--------------greedy-----------------')
# compare_CR_QC(cr_path, greedy_qc_depth_path, 'depth')
# print('--------------random-----------------')
# compare_CR_best_QC(cr_path, random_qc_path, 'depth')
# print('-----------------------------')
# compare_QC_QC(random_qc_path,qc_path,True,True,'depth')
# compare_QC_QC(mct_qc_path,qc_path,True,False)
# compare_QC_QC(mct_qc_path,qc_path,False,True)
# compare_QC_QC(mct_qc_path,qc_path,False,False)
#
# compare_QC_QC(mct_qc_path,random_qc_path,True,True)
# print('-----------------------')
# compare_QC_QC(qc_path,qc_path,True,False)
# compare_QC_QC(mct_qc_path,mct_qc_path,True,False)
# compare_QC_QC(random_qc_path,random_qc_path,True,False)


