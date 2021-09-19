Sat Sep 18 13:06:38 CDT 2021
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
$DATA ../../../../data/spa/SL3/dat87.csv ignore=@
$SUBR ADVAN4 TRANS4
$EST MET=1 NOABORT MAX=10000 PRINT=5 INTER
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

$OMEGA  0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX 0.09 FIX
$SIGMA  1 FIX ;        [P]
$COVARIANCE UNCOND

NM-TRAN MESSAGES
  
 WARNINGS AND ERRORS (IF ANY) FOR PROBLEM    1
             
 (WARNING  2) NM-TRAN INFERS THAT THE DATA ARE POPULATION.

License Registered to: University of Minnesota
Expiration Date:    14 APR 2022
Current Date:       18 SEP 2021
Days until program expires : 211
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
 NO. OF DATA RECS IN DATA SET:      500
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      400
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
0COVARIANCE STEP OMITTED:        NO
 EIGENVLS. PRINTED:              NO
 SPECIAL COMPUTATION:            NO
 COMPRESSED FORMAT:              NO
 GRADIENT METHOD USED:     NOSLOW
 SIGDIGITS ETAHAT (SIGLO):                  -1
 SIGDIGITS GRADIENTS (SIGL):                -1
 EXCLUDE COV FOR FOCE (NOFCOV):              NO
 Cholesky Transposition of R Matrix (CHOLROFF):0
 KNUTHSUMOFF:                                -1
 RESUME COV ANALYSIS (RESUME):               NO
 SIR SAMPLE SIZE (SIRSAMPLE):
 NON-LINEARLY TRANSFORM THETAS DURING COV (THBND): 1
 PRECONDTIONING CYCLES (PRECOND):        0
 PRECONDTIONING TYPES (PRECONDS):        TOS
 FORCED PRECONDTIONING CYCLES (PFCOND):0
 PRECONDTIONING TYPE (PRETYPE):        0
 FORCED POS. DEFINITE SETTING DURING PRECONDITIONING: (FPOSDEF):0
 SIMPLE POS. DEFINITE SETTING: (POSDEF):-1
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
 NO. OF SIG. FIGURES REQUIRED:            3
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
 RAW OUTPUT FILE (FILE): m87.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1641.32301615827        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   1.8707E+00 -9.6174E+01 -5.4477E+01 -7.2327E+01  9.5668E+01 -3.7758E+00 -7.3748E+00  9.4101E+00 -7.8929E+00 -3.8102E+00
            -8.1401E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1656.02184290585        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:       89
 NPARAMETR:  1.0211E+00  1.0569E+00  1.0842E+00  1.0320E+00  9.7911E-01  1.0127E+00  1.0036E+00  9.4188E-01  1.0176E+00  9.5628E-01
             1.1867E+00
 PARAMETER:  1.2085E-01  1.5537E-01  1.8085E-01  1.3152E-01  7.8885E-02  1.1259E-01  1.0359E-01  4.0125E-02  1.1746E-01  5.5292E-02
             2.7121E-01
 GRADIENT:   3.8389E+01  2.4118E+00  2.2574E-01  2.8764E+00  5.0924E+00  1.3689E+00  1.3598E-01  3.1398E+00 -6.1219E-01 -3.1841E+00
             1.0391E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1656.70010301152        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      160
 NPARAMETR:  1.0179E+00  1.0111E+00  8.9212E-01  1.0537E+00  8.8317E-01  1.0399E+00  1.0459E+00  4.9823E-01  1.0011E+00  9.5449E-01
             1.1831E+00
 PARAMETER:  1.1773E-01  1.1103E-01 -1.4157E-02  1.5229E-01 -2.4235E-02  1.3917E-01  1.4485E-01 -5.9670E-01  1.0110E-01  5.3424E-02
             2.6810E-01
 GRADIENT:   2.7982E+01 -3.3910E+00 -1.5358E+01  1.5233E+01  1.1370E+01  1.2112E+01 -1.5284E-01  1.6964E+00  1.0851E+00  8.0575E+00
             2.8058E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1656.92251603231        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      231
 NPARAMETR:  1.0088E+00  1.0378E+00  8.8865E-01  1.0312E+00  8.8586E-01  1.0176E+00  1.0445E+00  4.8139E-01  1.0067E+00  9.1981E-01
             1.1826E+00
 PARAMETER:  1.0872E-01  1.3712E-01 -1.8055E-02  1.3076E-01 -2.1199E-02  1.1740E-01  1.4353E-01 -6.3107E-01  1.0667E-01  1.6412E-02
             2.6771E-01
 GRADIENT:   5.7076E+00  6.1167E-02 -3.8232E+00  3.5044E+00  9.2156E-01  2.6348E+00  1.4341E-01  9.8817E-01 -1.5239E-01  2.5085E+00
             9.3590E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1656.93366707560        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      301
 NPARAMETR:  1.0068E+00  1.0434E+00  8.7328E-01  1.0247E+00  8.8066E-01  1.0124E+00  1.0460E+00  4.0049E-01  1.0095E+00  9.0692E-01
             1.1830E+00
 PARAMETER:  1.0679E-01  1.4249E-01 -3.5496E-02  1.2437E-01 -2.7081E-02  1.1229E-01  1.4498E-01 -8.1506E-01  1.0948E-01  2.2942E-03
             2.6803E-01
 GRADIENT:   3.8016E-01 -2.0101E-01 -1.2341E+00  4.5616E-01  1.9495E-01  2.3646E-01  7.6524E-02  4.4649E-01 -1.6638E-01  6.8970E-01
             2.4988E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1657.07992001621        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      377
 NPARAMETR:  1.0093E+00  1.0463E+00  8.3065E-01  1.0195E+00  8.6256E-01  1.0174E+00  1.0456E+00  5.8616E-02  1.0121E+00  9.0006E-01
             1.1868E+00
 PARAMETER:  1.0921E-01  1.4527E-01 -8.5550E-02  1.1935E-01 -4.7847E-02  1.1724E-01  1.4455E-01 -2.7367E+00  1.1202E-01 -5.2938E-03
             2.7124E-01
 GRADIENT:   5.4336E+00 -1.3054E+00 -2.1331E+00  1.3041E+00  1.7656E+00  2.2596E+00 -3.1874E-01  4.5124E-03  2.8899E-01  1.1330E+00
             7.9118E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1657.34465484697        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      555
 NPARAMETR:  1.0236E+00  1.1003E+00  8.2380E-01  9.9148E-01  8.8129E-01  1.0249E+00  1.0209E+00  1.8773E-02  1.0368E+00  9.0493E-01
             1.1870E+00
 PARAMETER:  1.2335E-01  1.9562E-01 -9.3825E-02  9.1442E-02 -2.6371E-02  1.2455E-01  1.2069E-01 -3.8753E+00  1.3611E-01  9.9321E-05
             2.7144E-01
 GRADIENT:   2.5204E-01  6.4977E-01  3.8024E-02  6.5344E-01 -8.9992E-01  4.8946E-01  2.4759E-01  1.4272E-04  2.3331E-02  3.1371E-01
             1.6517E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1657.34925960668        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      733            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0236E+00  1.1242E+00  8.1880E-01  9.7598E-01  8.9017E-01  1.0237E+00  1.0028E+00  2.1270E-02  1.0492E+00  9.0737E-01
             1.1866E+00
 PARAMETER:  1.2330E-01  2.1712E-01 -9.9913E-02  7.5684E-02 -1.6338E-02  1.2340E-01  1.0283E-01 -3.7505E+00  1.4806E-01  2.7981E-03
             2.7108E-01
 GRADIENT:   3.9493E+01  7.3950E+00  1.2116E-01  4.9331E+00  7.1425E-01  4.9951E+00  3.1698E-01  3.9911E-04  9.2363E-01  4.7947E-02
             2.1234E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1657.34933144218        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      911
 NPARAMETR:  1.0236E+00  1.1243E+00  8.1882E-01  9.7600E-01  8.9019E-01  1.0237E+00  1.0028E+00  1.0000E-02  1.0493E+00  9.0753E-01
             1.1866E+00
 PARAMETER:  1.2329E-01  2.1717E-01 -9.9886E-02  7.5708E-02 -1.6324E-02  1.2342E-01  1.0280E-01 -4.6423E+00  1.4809E-01  2.9701E-03
             2.7110E-01
 GRADIENT:  -4.4444E-03  2.5524E-03 -7.3566E-03  2.2427E-02  1.3738E-02  3.9740E-03 -3.0415E-03  0.0000E+00  3.5602E-04  6.2281E-03
            -1.3497E-03

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1657.34933144218        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      933
 NPARAMETR:  1.0236E+00  1.1243E+00  8.1882E-01  9.7600E-01  8.9019E-01  1.0237E+00  1.0028E+00  1.0000E-02  1.0493E+00  9.0753E-01
             1.1866E+00
 PARAMETER:  1.2329E-01  2.1717E-01 -9.9886E-02  7.5708E-02 -1.6324E-02  1.2342E-01  1.0280E-01 -4.6423E+00  1.4809E-01  2.9701E-03
             2.7110E-01
 GRADIENT:  -4.4444E-03  2.5524E-03 -7.3566E-03  2.2427E-02  1.3738E-02  3.9740E-03 -3.0415E-03  0.0000E+00  3.5602E-04  6.2281E-03
            -1.3497E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      933
 NO. OF SIG. DIGITS IN FINAL EST.:  3.4
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:        -3.7234E-05 -1.2641E-02 -3.2736E-04  3.2583E-03 -2.1827E-02
 SE:             2.9760E-02  1.9577E-02  1.5744E-04  2.4776E-02  2.3006E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9900E-01  5.1848E-01  3.7597E-02  8.9537E-01  3.4275E-01

 ETASHRINKSD(%)  2.9934E-01  3.4415E+01  9.9473E+01  1.6996E+01  2.2926E+01
 ETASHRINKVR(%)  5.9779E-01  5.6986E+01  9.9997E+01  3.1103E+01  4.0596E+01
 EBVSHRINKSD(%)  5.8493E-01  3.3987E+01  9.9516E+01  1.7122E+01  2.1948E+01
 EBVSHRINKVR(%)  1.1664E+00  5.6422E+01  9.9998E+01  3.1312E+01  3.9078E+01
 RELATIVEINF(%)  9.8529E+01  1.8208E+00  2.6697E-04  3.7822E+00  6.0952E+00
 EPSSHRINKSD(%)  4.2237E+01
 EPSSHRINKVR(%)  6.6635E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1657.3493314421810     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -922.19850487844280     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:     9.96
0R MATRIX ALGORITHMICALLY SINGULAR
0COVARIANCE MATRIX UNOBTAINABLE
0R MATRIX IS OUTPUT
0S MATRIX ALGORITHMICALLY SINGULAR
0S MATRIX IS OUTPUT
0T MATRIX - EQUAL TO RS*RMAT, WHERE S* IS A PSEUDO INVERSE OF S - IS OUTPUT
 Elapsed covariance  time in seconds:     5.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1657.349       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.02E+00  1.12E+00  8.19E-01  9.76E-01  8.90E-01  1.02E+00  1.00E+00  1.00E-02  1.05E+00  9.08E-01  1.19E+00
 


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
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     T MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.06E+03
 
 TH 2
+        1.24E+02  4.34E+02
 
 TH 3
+        5.03E+01  2.10E+02  4.21E+02
 
 TH 4
+        1.71E+02  3.92E+02 -1.79E+02  8.15E+02
 
 TH 5
+       -8.98E+01 -4.24E+02 -5.89E+02  1.09E+02  1.04E+03
 
 TH 6
+        2.14E+01  2.63E+00  2.54E+01 -5.34E+00 -1.90E+01  1.83E+02
 
 TH 7
+        7.91E+00  1.17E+01  5.45E-01  1.47E+01 -2.55E+01  1.83E+00  3.75E+00
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        5.10E+01  1.86E+01 -2.96E+01  7.89E+01 -1.58E+01  1.45E+01  1.26E+01  0.00E+00  5.99E+01
 
 TH10
+       -8.48E+00  5.84E+00 -4.37E+01  3.04E+01 -3.24E+01 -1.28E+01  1.06E+01  0.00E+00  2.41E+01  4.93E+01
 
 TH11
+       -6.50E+01 -2.95E+01 -8.50E+01 -1.83E+01  3.73E+01 -1.84E+01  4.13E-01  0.00E+00 -3.99E+01  5.53E+01  1.67E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     R MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.00E+03
 
 TH 2
+       -7.68E+00  4.00E+02
 
 TH 3
+        1.15E+01  1.96E+02  4.22E+02
 
 TH 4
+       -1.26E+01  3.28E+02 -1.74E+02  7.33E+02
 
 TH 5
+       -3.86E+00 -3.53E+02 -5.51E+02  2.03E+02  1.04E+03
 
 TH 6
+        8.57E-01 -2.36E+00  1.81E+00 -3.67E+00 -4.14E+00  1.87E+02
 
 TH 7
+        3.56E-01  1.77E+01  6.00E+00 -6.61E+00 -1.63E+01 -3.31E-01  4.68E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        2.66E+00 -2.29E+01 -1.46E+01  2.82E+01  2.48E-01  2.30E-02  1.83E+01  0.00E+00  9.41E+01
 
 TH10
+       -2.33E+00 -7.12E+00 -4.75E+01 -1.30E+01 -5.88E+01 -2.77E-01  1.55E+01  0.00E+00  4.20E+00  9.32E+01
 
 TH11
+       -8.39E+00 -1.50E+01 -3.21E+01 -3.07E+00  8.11E+00  1.64E+00  4.94E+00  0.00E+00  7.28E+00  2.22E+01  1.59E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                                     S MATRIX                                   ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 TH 1
+        1.00E+03
 
 TH 2
+       -1.24E+02  3.83E+02
 
 TH 3
+        2.56E+01  1.77E+02  4.09E+02
 
 TH 4
+       -1.40E+02  3.20E+02 -1.93E+02  7.28E+02
 
 TH 5
+        6.90E+01 -2.97E+02 -5.46E+02  2.69E+02  1.05E+03
 
 TH 6
+       -2.04E+01  1.51E+00 -1.00E+01  9.87E+00  1.45E+01  1.92E+02
 
 TH 7
+       -1.69E+01 -1.08E+01  4.72E+00 -4.60E+01 -2.27E+01  3.05E+00  3.37E+01
 
 TH 8
+        0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00  0.00E+00
 
 TH 9
+        1.86E+01 -7.02E+01 -1.05E+01 -4.84E+01 -3.00E+01 -2.12E+00  2.32E+01  0.00E+00  1.02E+02
 
 TH10
+       -3.59E+01 -3.62E+01 -4.11E+01 -5.13E+01 -5.91E+01  1.64E-01  2.57E+01  0.00E+00  3.13E+01  7.89E+01
 
 TH11
+        7.46E+01 -1.76E+01 -1.26E+01 -3.32E+01 -4.20E+01  2.56E+01  9.23E+00  0.00E+00  1.72E+01  2.83E+01  1.31E+02
 
 OM11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM12
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         .........
 
 OM13
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... .........
 
 OM14
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... .........
 
 OM15
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... .........
 
 OM22
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... .........
 
 OM23
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... .........
 
 OM24
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... .........
 
1

            TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11      OM11  
             OM12      OM13      OM14      OM15      OM22      OM23      OM24      OM25      OM33      OM34      OM35      OM44  
            OM45      OM55      SG11  
 
 OM25
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... .........
 
 OM33
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM34
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM35
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM44
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
 
 OM45
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        .........
 
 OM55
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... .........
 
 SG11
+       ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
         ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... ......... .........
        ......... ......... .........
 
 Elapsed finaloutput time in seconds:     0.03
 #CPUT: Total CPU Time in Seconds,       15.883
Stop Time:
Sat Sep 18 13:06:56 CDT 2021