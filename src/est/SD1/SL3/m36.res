Fri Oct  1 03:46:24 CDT 2021
$PROB template control stream
;-----------------------------------------------------------------------
; Project: 	Investigating the contribution of residual unexplained
; 	   	variability in nonlinear mixed-effect approach
; Model: 	Two-compartment model with linear elimination
; Estim:	First-order conditional est. with interaction
; Author: 	Mutaz M. Jaber <jaber038@umn.edu>
; Date created: 9/7/2021
; Date modified: 9/7/2021
;-----------------------------------------------------------------------
$INPUT ID TIME DV AMT MDV EVID
$DATA ../../../../data/SD1/SL3/dat36.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER NSIG=2
$PK
ET1 = EXP(ETA(1)*THETA(6))
ET2 = EXP(ETA(2)*THETA(7))
ET3 = EXP(ETA(3)*THETA(8))
ET4 = EXP(ETA(4)*THETA(9))
ET5 = EXP(ETA(5)*THETA(10))

CL = 5.0 * THETA(1) * ET1
V2 = 35  * THETA(2) * ET2
Q  = 50  * THETA(3) * ET3
V3 = 50  * THETA(4) * ET4
KA = 0.7 * THETA(5) * ET5
SC = V2
$ERROR
CVERR = 0.05
W = THETA(11)*F*CVERR

Y 	= F + W*ERR(1)

$THETA
(0,1) ; CL
(0,1) ; V2
(0,1) ; Q
(0,1) ; V3
(0,1) ; KA
(0,1) ; IIVCL
(0,1) ; IIVV2
(0,1) ; IIVQ
(0,1) ; IIVV3
(0,1) ; IIVKA
(0,1) ; CVPropErr

$OMEGA  (0.09 FIX)x5
$SIGMA  1 FIX ;        [P]

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:        1 OCT 2021
Days until program expires : 198
1NONLINEAR MIXED EFFECTS MODEL PROGRAM (NONMEM) VERSION 7.5.0
 ORIGINALLY DEVELOPED BY STUART BEAL, LEWIS SHEINER, AND ALISON BOECKMANN
 CURRENT DEVELOPERS ARE ROBERT BAUER, ICON DEVELOPMENT SOLUTIONS,
 AND ALISON BOECKMANN. IMPLEMENTATION, EFFICIENCY, AND STANDARDIZATION
 PERFORMED BY NOUS INFOSYSTEMS.

 PROBLEM NO.:         1
 template control stream
0DATA CHECKOUT RUN:              NO
 DATA SET LOCATED ON UNIT NO.:    2
 THIS UNIT TO BE REWOUND:        NO
 NO. OF DATA RECS IN DATA SET:      980
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      880
 TOT. NO. OF INDIVIDUALS:      100
0LENGTH OF THETA:  11
0DEFAULT THETA BOUNDARY TEST OMITTED:    NO
0OMEGA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   5
0DEFAULT OMEGA BOUNDARY TEST OMITTED:    NO
0SIGMA HAS SIMPLE DIAGONAL FORM WITH DIMENSION:   1
0DEFAULT SIGMA BOUNDARY TEST OMITTED:    NO
0INITIAL ESTIMATE OF THETA:
 LOWER BOUND    INITIAL EST    UPPER BOUND
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
  0.0000E+00     0.1000E+01     0.1000E+07
0INITIAL ESTIMATE OF OMEGA:
 0.9000E-01
 0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
 0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.9000E-01
0OMEGA CONSTRAINED TO BE THIS INITIAL ESTIMATE
0INITIAL ESTIMATE OF SIGMA:
 0.1000E+01
0SIGMA CONSTRAINED TO BE THIS INITIAL ESTIMATE
1DOUBLE PRECISION PREDPP VERSION 7.5.0

 TWO COMPARTMENT MODEL WITH FIRST-ORDER ABSORPTION (ADVAN4)
0MAXIMUM NO. OF BASIC PK PARAMETERS:   5
0BASIC PK PARAMETERS (AFTER TRANSLATION):
   BASIC PK PARAMETER NO.  1: ELIMINATION RATE (K)
   BASIC PK PARAMETER NO.  2: CENTRAL-TO-PERIPH. RATE (K23)
   BASIC PK PARAMETER NO.  3: PERIPH.-TO-CENTRAL RATE (K32)
   BASIC PK PARAMETER NO.  5: ABSORPTION RATE (KA)
 TRANSLATOR WILL CONVERT PARAMETERS
 CL, V2, Q, V3 TO K, K23, K32 (TRANS4)
0COMPARTMENT ATTRIBUTES
 COMPT. NO.   FUNCTION   INITIAL    ON/OFF      DOSE      DEFAULT    DEFAULT
                         STATUS     ALLOWED    ALLOWED    FOR DOSE   FOR OBS.
    1         DEPOT        OFF        YES        YES        YES        NO
    2         CENTRAL      ON         NO         YES        NO         YES
    3         PERIPH.      ON         NO         YES        NO         NO
    4         OUTPUT       OFF        YES        NO         NO         NO
1
 ADDITIONAL PK PARAMETERS - ASSIGNMENT OF ROWS IN GG
 COMPT. NO.                             INDICES
              SCALE      BIOAVAIL.   ZERO-ORDER  ZERO-ORDER  ABSORB
                         FRACTION    RATE        DURATION    LAG
    1            *           *           *           *           *
    2            6           *           *           *           *
    3            *           *           *           *           *
    4            *           -           -           -           -
             - PARAMETER IS NOT ALLOWED FOR THIS MODEL
             * PARAMETER IS NOT SUPPLIED BY PK SUBROUTINE;
               WILL DEFAULT TO ONE IF APPLICABLE
0DATA ITEM INDICES USED BY PRED ARE:
   EVENT ID DATA ITEM IS DATA ITEM NO.:      6
   TIME DATA ITEM IS DATA ITEM NO.:          2
   DOSE AMOUNT DATA ITEM IS DATA ITEM NO.:   4

0PK SUBROUTINE CALLED WITH EVERY EVENT RECORD.
 PK SUBROUTINE NOT CALLED AT NONEVENT (ADDITIONAL OR LAGGED) DOSE TIMES.
0ERROR SUBROUTINE CALLED WITH EVERY EVENT RECORD.
1


 #TBLN:      1
 #METH: First Order Conditional Estimation with Interaction

 ESTIMATION STEP OMITTED:                 NO
 ANALYSIS TYPE:                           POPULATION
 NUMBER OF SADDLE POINT RESET ITERATIONS:      0
 GRADIENT METHOD USED:               NOSLOW
 CONDITIONAL ESTIMATES USED:              YES
 CENTERED ETA:                            NO
 EPS-ETA INTERACTION:                     YES
 LAPLACIAN OBJ. FUNC.:                    NO
 NO. OF FUNCT. EVALS. ALLOWED:            10000
 NO. OF SIG. FIGURES REQUIRED:            2
 INTERMEDIATE PRINTOUT:                   YES
 ESTIMATE OUTPUT TO MSF:                  NO
 ABORT WITH PRED EXIT CODE 1:             NO
 IND. OBJ. FUNC. VALUES SORTED:           NO
 NUMERICAL DERIVATIVE
       FILE REQUEST (NUMDER):               NONE
 MAP (ETAHAT) ESTIMATION METHOD (OPTMAP):   0
 ETA HESSIAN EVALUATION METHOD (ETADER):    0
 INITIAL ETA FOR MAP ESTIMATION (MCETA):    0
 SIGDIGITS FOR MAP ESTIMATION (SIGLO):      100
 GRADIENT SIGDIGITS OF
       FIXED EFFECTS PARAMETERS (SIGL):     100
 NOPRIOR SETTING (NOPRIOR):                 0
 NOCOV SETTING (NOCOV):                     OFF
 DERCONT SETTING (DERCONT):                 OFF
 FINAL ETA RE-EVALUATION (FNLETA):          1
 EXCLUDE NON-INFLUENTIAL (NON-INFL.) ETAS
       IN SHRINKAGE (ETASTYPE):             NO
 NON-INFL. ETA CORRECTION (NONINFETA):      0
 RAW OUTPUT FILE (FILE): m36.ext
 EXCLUDE TITLE (NOTITLE):                   NO
 EXCLUDE COLUMN LABELS (NOLABEL):           NO
 FORMAT FOR ADDITIONAL FILES (FORMAT):      S1PE12.5
 PARAMETER ORDER FOR OUTPUTS (ORDER):       TSOL
 KNUTHSUMOFF:                               0
 INCLUDE LNTWOPI:                           NO
 INCLUDE CONSTANT TERM TO PRIOR (PRIORC):   NO
 INCLUDE CONSTANT TERM TO OMEGA (ETA) (OLNTWOPI):NO
 ADDITIONAL CONVERGENCE TEST (CTYPE=4)?:    NO
 EM OR BAYESIAN METHOD USED:                 NONE


 THE FOLLOWING LABELS ARE EQUIVALENT
 PRED=PREDI
 RES=RESI
 WRES=WRESI
 IWRS=IWRESI
 IPRD=IPREDI
 IRS=IRESI

 MONITORING OF SEARCH:


0ITERATION NO.:    0    OBJECTIVE VALUE:  -797.757889010201        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3498E+02  9.0647E+01  1.1470E+02  1.3860E+02  2.3070E+02  4.1763E+01 -1.4198E+02 -2.2730E+02 -5.5944E+01 -7.3177E+01
            -5.4985E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2733.25504318883        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0407E+00  1.1472E+00  9.6666E-01  9.1276E-01  1.0138E+00  1.1301E+00  1.2867E+00  9.7609E-01  7.7827E-01  1.2388E+00
             2.5047E+00
 PARAMETER:  1.3986E-01  2.3734E-01  6.6096E-02  8.7129E-03  1.1371E-01  2.2233E-01  3.5208E-01  7.5801E-02 -1.5068E-01  3.1414E-01
             1.0182E+00
 GRADIENT:   1.3059E+02 -6.4991E+00 -6.5536E+00 -4.7260E+01 -9.2928E+00  4.3809E+01  2.4565E+01  3.1153E+00  6.9008E-01  3.0211E+00
            -6.1212E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2738.57859706502        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      155
 NPARAMETR:  1.0384E+00  1.1901E+00  1.1836E+00  9.1822E-01  1.1533E+00  1.0716E+00  1.2207E+00  5.3843E-01  6.8466E-01  1.3509E+00
             2.5668E+00
 PARAMETER:  1.3768E-01  2.7400E-01  2.6858E-01  1.4685E-02  2.4263E-01  1.6915E-01  2.9945E-01 -5.1909E-01 -2.7884E-01  4.0076E-01
             1.0427E+00
 GRADIENT:   1.2049E+02 -1.3370E+00 -3.1998E+00  9.5459E+00  3.4805E+01  1.7506E+01  1.5691E+01  1.6069E-01 -2.7170E+00  3.6804E+00
            -2.1569E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2745.57978686024        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      312
 NPARAMETR:  1.0328E+00  1.5379E+00  1.1870E+00  7.5203E-01  1.3501E+00  1.0763E+00  9.0002E-01  4.1019E-01  8.8477E-01  1.5063E+00
             2.6067E+00
 PARAMETER:  1.3232E-01  5.3039E-01  2.7147E-01 -1.8498E-01  4.0020E-01  1.7354E-01 -5.3418E-03 -7.9113E-01 -2.2430E-02  5.0965E-01
             1.0581E+00
 GRADIENT:   7.8802E+00  2.3909E+01 -3.3333E+00  3.7317E+01  3.3093E-01 -1.1842E+00 -3.4382E+00  2.9228E-02  4.6297E-01 -2.4998E+00
             2.6150E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2752.48952529949        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      489
 NPARAMETR:  1.0343E+00  2.0537E+00  2.7531E+00  4.2016E-01  1.9470E+00  1.0637E+00  7.6935E-01  3.0643E+00  9.6514E-01  1.9293E+00
             2.5475E+00
 PARAMETER:  1.3375E-01  8.1966E-01  1.1127E+00 -7.6711E-01  7.6628E-01  1.6174E-01 -1.6220E-01  1.2198E+00  6.4516E-02  7.5713E-01
             1.0351E+00
 GRADIENT:   1.3204E+01  3.0109E+01  3.2410E+00  5.0864E+00  9.9815E+00 -6.1852E+00  1.2540E+00 -8.9816E+00  1.4706E+00  2.7864E+00
            -2.5286E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2755.37382491435        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      666
 NPARAMETR:  1.0322E+00  1.9503E+00  2.3822E+00  4.6380E-01  1.8043E+00  1.0679E+00  7.9520E-01  4.5261E+00  8.2330E-01  1.8026E+00
             2.5548E+00
 PARAMETER:  1.3166E-01  7.6799E-01  9.6802E-01 -6.6830E-01  6.9015E-01  1.6570E-01 -1.2916E-01  1.6099E+00 -9.4434E-02  6.8924E-01
             1.0380E+00
 GRADIENT:   9.4192E+00 -2.0859E+01  9.4921E-01 -8.7434E+00 -3.9578E+00 -4.2556E+00 -8.4267E-02 -4.7831E-01  3.0132E+00 -2.5911E-02
            -3.4591E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2755.80982403023        NO. OF FUNC. EVALS.: 121
 CUMULATIVE NO. OF FUNC. EVALS.:      787
 NPARAMETR:  1.0325E+00  1.9448E+00  2.3890E+00  4.6291E-01  1.8083E+00  1.0613E+00  8.0237E-01  4.5040E+00  5.6482E-01  1.8066E+00
             2.5634E+00
 PARAMETER:  1.3201E-01  7.6518E-01  9.7086E-01 -6.7022E-01  6.9236E-01  1.5945E-01 -1.2018E-01  1.6050E+00 -4.7124E-01  6.9142E-01
             1.0413E+00
 GRADIENT:   1.0779E+02  2.0881E+02  2.1233E+00  1.4444E+01  2.6552E+01  1.3513E+01 -3.4280E+00  1.3864E-01  8.7670E-01  1.0183E+01
             2.1283E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2756.01957193562        NO. OF FUNC. EVALS.: 137
 CUMULATIVE NO. OF FUNC. EVALS.:      924
 NPARAMETR:  1.0325E+00  1.9458E+00  2.3889E+00  4.6297E-01  1.8084E+00  1.0848E+00  8.3448E-01  4.5046E+00  4.3300E-01  1.8065E+00
             2.5633E+00
 PARAMETER:  1.3201E-01  7.6566E-01  9.7082E-01 -6.7010E-01  6.9244E-01  1.8142E-01 -8.0952E-02  1.6051E+00 -7.3701E-01  6.9141E-01
             1.0413E+00
 GRADIENT:   9.8100E+00 -2.0939E+01  1.2305E+00 -1.2102E+01 -3.7801E+00  1.8495E+00  2.3796E+00 -2.4078E+00  2.3171E-01 -4.5816E-01
             3.5391E+00

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2756.08048815093        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1100
 NPARAMETR:  1.0325E+00  1.9514E+00  2.3889E+00  4.6346E-01  1.8104E+00  1.0810E+00  8.3650E-01  4.5101E+00  2.3967E-01  1.8070E+00
             2.5621E+00
 PARAMETER:  1.3200E-01  7.6854E-01  9.7081E-01 -6.6903E-01  6.9357E-01  1.7790E-01 -7.8525E-02  1.6063E+00 -1.3285E+00  6.9168E-01
             1.0408E+00
 GRADIENT:   9.6244E+00 -9.2405E+00  1.0491E+00 -6.8295E+00 -3.6914E+00  4.9178E-01 -6.9312E-01 -2.7679E+00 -7.3256E-02 -7.9853E-01
             1.0128E+00

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2756.13170200853        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1280
 NPARAMETR:  1.0325E+00  1.9608E+00  2.3888E+00  4.6401E-01  1.8138E+00  1.0796E+00  8.3034E-01  4.5180E+00  3.8797E-01  1.8078E+00
             2.5623E+00
 PARAMETER:  1.3203E-01  7.7334E-01  9.7081E-01 -6.6785E-01  6.9540E-01  1.7663E-01 -8.5916E-02  1.6081E+00 -8.4682E-01  6.9209E-01
             1.0409E+00
 GRADIENT:   9.4327E+00  2.7940E+00  9.4323E-01 -2.5398E+00 -2.8418E+00 -9.7543E-02 -4.2970E-02 -2.4161E+00 -9.1105E-04 -4.2336E-01
             1.1533E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -2756.17257695964        NO. OF FUNC. EVALS.: 173
 CUMULATIVE NO. OF FUNC. EVALS.:     1453
 NPARAMETR:  1.0271E+00  1.9543E+00  2.3397E+00  4.6801E-01  1.8174E+00  1.0803E+00  8.3216E-01  4.4691E+00  3.9743E-01  1.8087E+00
             2.5604E+00
 PARAMETER:  1.2656E-01  7.7037E-01  9.5058E-01 -6.6055E-01  6.9750E-01  1.7714E-01 -8.3572E-02  1.5994E+00 -8.1459E-01  6.9261E-01
             1.0402E+00
 GRADIENT:  -6.4413E-01  3.3229E+00  6.2241E-02 -9.9504E-01  2.1788E-01 -1.2220E-01  8.1404E-02  6.6546E+02  1.4980E-02 -2.2902E-02
             2.0807E-01
 NUMSIGDIG:         2.3         2.8         2.7         2.2         3.2         2.7         2.3         2.3         1.4         3.9
                    4.1

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     1453
 NO. OF SIG. DIGITS IN FINAL EST.:  1.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.8808E-03 -8.2323E-03 -2.8437E-02 -1.8864E-03 -2.0894E-02
 SE:             2.9506E-02  2.7774E-02  1.3157E-02  5.7816E-03  2.5802E-02
 N:                     100         100         100         100         100

 P VAL.:         9.4917E-01  7.6692E-01  3.0670E-02  7.4422E-01  4.1807E-01

 ETASHRINKSD(%)  1.1524E+00  6.9544E+00  5.5922E+01  8.0631E+01  1.3560E+01
 ETASHRINKVR(%)  2.2914E+00  1.3425E+01  8.0571E+01  9.6248E+01  2.5280E+01
 EBVSHRINKSD(%)  1.2930E+00  7.1940E+00  6.4397E+01  8.2382E+01  1.0134E+01
 EBVSHRINKVR(%)  2.5693E+00  1.3870E+01  8.7324E+01  9.6896E+01  1.9241E+01
 RELATIVEINF(%)  9.7376E+01  6.2924E+00  4.1193E+00  1.9828E-01  4.9576E+01
 EPSSHRINKSD(%)  1.6761E+01
 EPSSHRINKVR(%)  3.0712E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          880
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1617.3318184402240     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2756.1725769596392     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1138.8407585194152     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    37.19
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2756.173       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  1.95E+00  2.34E+00  4.67E-01  1.82E+00  1.08E+00  8.32E-01  4.48E+00  4.01E-01  1.81E+00  2.56E+00
 


 OMEGA - COV MATRIX FOR RANDOM EFFECTS - ETAS  ********


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        9.00E-02
 
 ETA2
+        0.00E+00  9.00E-02
 
 ETA3
+        0.00E+00  0.00E+00  9.00E-02
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  9.00E-02
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  9.00E-02
 


 SIGMA - COV MATRIX FOR RANDOM EFFECTS - EPSILONS  ****


         EPS1     
 
 EPS1
+        1.00E+00
 
1


 OMEGA - CORR MATRIX FOR RANDOM EFFECTS - ETAS  *******


         ETA1      ETA2      ETA3      ETA4      ETA5     
 
 ETA1
+        3.00E-01
 
 ETA2
+        0.00E+00  3.00E-01
 
 ETA3
+        0.00E+00  0.00E+00  3.00E-01
 
 ETA4
+        0.00E+00  0.00E+00  0.00E+00  3.00E-01
 
 ETA5
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  3.00E-01
 


 SIGMA - CORR MATRIX FOR RANDOM EFFECTS - EPSILONS  ***


         EPS1     
 
 EPS1
+        1.00E+00
 
 Elapsed finaloutput time in seconds:     0.00
 #CPUT: Total CPU Time in Seconds,       37.257
Stop Time:
Fri Oct  1 03:47:03 CDT 2021