
"""
Project: Investigating the contribution of residual unexplaind variability components in NLME approach
Program: invoke nonmem models 
Author: Mutaz M. Jaber <jaber038@umn.edu>
Date created: 9/18/21
Date modified: 9/18/21
"""



def GetExt(design, model, comp):
    Final = []
    if comp == 2:
        names = ['CL', 'V', 'Ka', 'Q', 'Vp', 'BCL', 'BV', 'BKa', 'BQ', 'BVp', 'RUV']
    else:
        names = ['CL', 'V', 'Ka','BCL', 'BV', 'BKa','RUV']
        
    for file in glob.glob(f'{design}/{model}/*.ext'):
        dat = pandas.read_table(file, skiprows=1, delim_whitespace=True)
        dat = dat[dat['ITERATION'] == -1E9]
        thetaNames = [col for col in dat.columns if 'THETA' in col]
        EST = dat[thetaNames]
        EST.columns = names
        Final.append(EST)
    ESTi = pandas.concat(Final)
    return ESTi

def GetValues(value):
    Med= []
    Max = []
    Min = []
    up95, lo95 = [], []
    for nam in value.columns:
        Med.append(statistics.median(value[nam]))
        Max.append(max(value[nam]))
        Min.append(min(value[nam]))
        up95.append(statistics.mean(value[nam] + stats.norm.ppf(0.975) * statistics.stdev(value[nam])/math.sqrt(len(value[nam]))))
        lo95.append(statistics.mean(value[nam] - stats.norm.ppf(0.975) * statistics.stdev(value[nam])/math.sqrt(len(value[nam]))))
    Data = pandas.DataFrame({'Median': Med, 'Min': Min, 'Max': Max, '95CIlo': lo95, '95CIup': up95},value.columns)
    return Data