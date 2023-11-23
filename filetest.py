def cutfile(path):
    f=open(path,'r')
    count=0
    j=1
    out=open('%s_%s.qasm'%(path.split('.')[0],j),'w')
    header = []
    for o in range(3):
        line=f.readline()
        print(line)
        header.append(line)
    for o in header:
        out.write(o)
    for line in f:
        if count<10000:
            out.write(line)
            count+=1
        else:
            count=0
            j+=1
            out.flush()
            out.close()
            out=open('%s_%s.qasm'%(path.split('.')[0],j),'w')
            for o in header:
                out.write(o)

    out.flush()
    out.close()
cutfile('results/data/gf2^E64_mult_before_output.qasm')

