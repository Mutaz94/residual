Fri Oct  1 18:20:15 CDT 2021
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
$DATA ../../../../data/SD3/A3/dat57.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      700
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      600
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
 RAW OUTPUT FILE (FILE): m57.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -237.879537071555        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7133E+02  6.5447E+01  1.8744E+02 -1.7435E+00  2.3480E+02  6.8646E+01 -1.4128E+02 -2.1710E+02 -2.5599E+01 -8.4224E+01
            -4.0355E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1774.45036226400        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.1277E+00  1.0480E+00  9.0172E-01  1.1267E+00  8.6637E-01  8.1139E-01  1.0282E+00  1.0599E+00  9.1078E-01  8.4995E-01
             4.4664E+00
 PARAMETER:  2.2018E-01  1.4692E-01 -3.4522E-03  2.1928E-01 -4.3448E-02 -1.0900E-01  1.2783E-01  1.5814E-01  6.5469E-03 -6.2574E-02
             1.5966E+00
 GRADIENT:   1.9329E+02  2.6325E+01 -6.0828E+00  4.0183E+01 -2.8319E+01 -1.2615E+01  1.3684E+01  1.2667E+01  2.1408E+01  3.1681E+01
             3.4782E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1792.48392575066        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      154
 NPARAMETR:  1.1077E+00  6.8165E-01  4.1633E-01  1.3190E+00  4.5488E-01  8.6461E-01  1.4738E+00  7.8772E-01  9.0464E-01  3.9843E-01
             4.0957E+00
 PARAMETER:  2.0233E-01 -2.8324E-01 -7.7629E-01  3.7688E-01 -6.8772E-01 -4.5476E-02  4.8782E-01 -1.3861E-01 -2.1646E-04 -8.2021E-01
             1.5099E+00
 GRADIENT:   1.2963E+02  9.1415E+01 -3.6387E+01  1.9253E+02 -8.5205E+00  2.0954E+00  2.5637E+01  1.5471E+01  5.3372E+00  1.1272E+01
             3.0328E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1825.66749005565        NO. OF FUNC. EVALS.: 103
 CUMULATIVE NO. OF FUNC. EVALS.:      257
 NPARAMETR:  1.0222E+00  4.1029E-01  1.7988E-01  1.3924E+00  2.3994E-01  8.3715E-01  1.2054E+00  8.5180E-01  1.6060E+00  2.0764E-01
             3.1129E+00
 PARAMETER:  1.2191E-01 -7.9089E-01 -1.6155E+00  4.3102E-01 -1.3274E+00 -7.7755E-02  2.8682E-01 -6.0406E-02  5.7377E-01 -1.4719E+00
             1.2356E+00
 GRADIENT:  -6.9443E+01  1.8028E+02 -2.3768E+01  2.0651E+02 -2.1434E+02 -1.7844E+01 -2.2036E+01 -2.4326E+00 -1.3779E+01 -2.1377E+00
             1.5836E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1893.84460167124        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      434
 NPARAMETR:  1.0124E+00  3.9022E-01  2.5302E-01  1.2020E+00  2.8900E-01  8.2956E-01  1.3353E+00  7.8275E-01  1.2007E+00  2.4027E-01
             2.6166E+00
 PARAMETER:  1.1237E-01 -8.4103E-01 -1.2743E+00  2.8402E-01 -1.1413E+00 -8.6863E-02  3.8919E-01 -1.4495E-01  2.8290E-01 -1.3260E+00
             1.0619E+00
 GRADIENT:  -8.1900E+01  3.3593E+01 -1.7524E+01  8.1494E+01  1.9356E+01 -2.3220E+01 -8.8129E+00 -3.4903E+00  1.0396E+01 -2.9824E-01
            -1.4252E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1904.13907682854        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      611
 NPARAMETR:  1.0392E+00  3.3022E-01  2.1269E-01  1.0926E+00  2.5257E-01  8.8004E-01  1.4009E+00  1.0258E+00  1.2433E+00  1.2663E-01
             2.5119E+00
 PARAMETER:  1.3849E-01 -1.0080E+00 -1.4479E+00  1.8854E-01 -1.2761E+00 -2.7789E-02  4.3710E-01  1.2551E-01  3.1775E-01 -1.9665E+00
             1.0210E+00
 GRADIENT:   2.7890E+00  6.8397E+00 -6.0012E+00 -5.2286E+00  8.2906E+00  1.2218E+00 -6.1572E+00 -1.0470E+00 -2.9029E-01 -1.6841E-01
            -9.6832E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1904.49426744839        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      787            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0388E+00  3.2101E-01  2.1488E-01  1.0991E+00  2.5142E-01  8.7653E-01  1.4736E+00  1.0264E+00  1.2390E+00  1.4931E-01
             2.5319E+00
 PARAMETER:  1.3805E-01 -1.0363E+00 -1.4377E+00  1.9445E-01 -1.2806E+00 -3.1789E-02  4.8769E-01  1.2603E-01  3.1433E-01 -1.8017E+00
             1.0290E+00
 GRADIENT:   6.8684E+01  2.4475E+01  3.9355E+01  2.4577E+01  2.0289E+02  3.1555E+00  3.5157E+00  1.3250E+00  8.5459E+00  6.3399E-01
             1.2836E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1904.50356124943        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      964
 NPARAMETR:  1.0392E+00  3.2092E-01  2.1511E-01  1.0998E+00  2.5132E-01  8.7655E-01  1.4644E+00  1.0143E+00  1.2354E+00  1.5754E-01
             2.5343E+00
 PARAMETER:  1.3849E-01 -1.0366E+00 -1.4366E+00  1.9513E-01 -1.2810E+00 -3.1762E-02  4.8143E-01  1.1420E-01  3.1143E-01 -1.7481E+00
             1.0299E+00
 GRADIENT:   9.2360E-01  5.6688E-01  8.4617E-01  3.5047E-01  1.5740E+00  4.7686E-02  4.4496E-02 -4.5843E-02  7.2539E-02  1.0738E-02
             2.7445E-01

0ITERATION NO.:   36    OBJECTIVE VALUE:  -1904.50356124943        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      986
 NPARAMETR:  1.0392E+00  3.2092E-01  2.1511E-01  1.0998E+00  2.5132E-01  8.7655E-01  1.4644E+00  1.0143E+00  1.2354E+00  1.5754E-01
             2.5343E+00
 PARAMETER:  1.3849E-01 -1.0366E+00 -1.4366E+00  1.9513E-01 -1.2810E+00 -3.1762E-02  4.8143E-01  1.1420E-01  3.1143E-01 -1.7481E+00
             1.0299E+00
 GRADIENT:   9.2360E-01  5.6688E-01  8.4617E-01  3.5047E-01  1.5740E+00  4.7686E-02  4.4496E-02 -4.5843E-02  7.2539E-02  1.0738E-02
             2.7445E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      986
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6361E-04  1.5164E-02 -1.3595E-02 -8.8673E-03  7.6372E-03
 SE:             2.9174E-02  2.3225E-02  2.1068E-02  2.7701E-02  6.5283E-03
 N:                     100         100         100         100         100

 P VAL.:         9.9553E-01  5.1380E-01  5.1873E-01  7.4889E-01  2.4206E-01

 ETASHRINKSD(%)  2.2637E+00  2.2193E+01  2.9419E+01  7.1968E+00  7.8129E+01
 ETASHRINKVR(%)  4.4762E+00  3.9460E+01  5.0184E+01  1.3876E+01  9.5217E+01
 EBVSHRINKSD(%)  2.4314E+00  2.1745E+01  2.9061E+01  6.8023E+00  7.9530E+01
 EBVSHRINKVR(%)  4.8037E+00  3.8761E+01  4.9677E+01  1.3142E+01  9.5810E+01
 RELATIVEINF(%)  9.5094E+01  1.5960E+01  6.0322E+00  5.3504E+01  2.8899E-01
 EPSSHRINKSD(%)  2.7568E+01
 EPSSHRINKVR(%)  4.7536E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1904.5035612494269     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -801.77732140381977     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.90
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1904.504       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  3.21E-01  2.15E-01  1.10E+00  2.51E-01  8.77E-01  1.46E+00  1.01E+00  1.24E+00  1.58E-01  2.53E+00
 


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
 
 Elapsed finaloutput time in seconds:     0.01
 #CPUT: Total CPU Time in Seconds,       17.950
Stop Time:
Fri Oct  1 18:20:34 CDT 2021
