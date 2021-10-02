Fri Oct  1 23:14:07 CDT 2021
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
$DATA ../../../../data/SD4/B/dat19.csv ignore=@
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
 (E4.0,E3.0,E20.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m19.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1719.28936396139        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8024E+02 -8.9215E+00  1.5858E+01  9.0589E+00 -1.2252E+01  6.1342E+01  4.1146E+00  2.1651E+00  3.9444E+01 -3.1946E+00
             7.5637E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1724.43061247667        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.0277E+00  1.1292E+00  9.4711E-01  9.9008E-01  1.0561E+00  9.2146E-01  1.0074E+00  9.7490E-01  7.1345E-01  1.0685E+00
             9.6999E-01
 PARAMETER:  1.2728E-01  2.2150E-01  4.5659E-02  9.0026E-02  1.5461E-01  1.8209E-02  1.0741E-01  7.4583E-02 -2.3764E-01  1.6622E-01
             6.9533E-02
 GRADIENT:  -1.8193E+01  3.3223E+01 -2.7221E+00  4.9899E+01  9.8203E+00 -2.0173E+01 -1.4437E+01  7.0546E-01 -1.9633E+01 -2.1465E+00
            -1.1239E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1725.17766408257        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      368
 NPARAMETR:  1.0293E+00  9.3519E-01  8.8368E-01  1.1002E+00  9.3074E-01  9.3583E-01  1.3553E+00  6.4746E-01  6.1244E-01  9.9414E-01
             1.0153E+00
 PARAMETER:  1.2892E-01  3.2999E-02 -2.3660E-02  1.9548E-01  2.8226E-02  3.3681E-02  4.0404E-01 -3.3469E-01 -3.9031E-01  9.4121E-02
             1.1516E-01
 GRADIENT:  -1.2959E+01  3.0481E+01 -1.1339E+01  5.4647E+01  1.7222E+01 -1.2384E+01  1.5920E+00 -3.8331E-01 -2.1667E+01 -1.5175E+00
             8.0377E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1728.68427071447        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      547
 NPARAMETR:  1.0358E+00  9.9767E-01  7.4232E-01  1.0267E+00  8.6514E-01  9.6988E-01  1.1744E+00  3.8432E-01  7.6597E-01  9.2161E-01
             9.8555E-01
 PARAMETER:  1.3517E-01  9.7664E-02 -1.9797E-01  1.2638E-01 -4.4867E-02  6.9418E-02  2.6078E-01 -8.5629E-01 -1.6661E-01  1.8366E-02
             8.5446E-02
 GRADIENT:  -2.0937E-01 -6.9020E-01  6.1221E-01 -2.5436E+00 -1.3600E+00  9.4972E-01 -2.0861E-01  2.6688E-01  2.0322E-01  8.0373E-01
            -2.8770E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1728.73543427529        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      723
 NPARAMETR:  1.0367E+00  9.6189E-01  7.1716E-01  1.0439E+00  8.3239E-01  9.6791E-01  1.2123E+00  2.6188E-01  7.5304E-01  8.9518E-01
             9.8752E-01
 PARAMETER:  1.3607E-01  6.1148E-02 -2.3246E-01  1.4300E-01 -8.3454E-02  6.7381E-02  2.9252E-01 -1.2399E+00 -1.8363E-01 -1.0727E-02
             8.7443E-02
 GRADIENT:   1.5036E+00 -1.5623E+00 -1.4098E-01 -1.7826E+00 -2.1116E-01  1.7723E-01 -3.6528E-01  5.8932E-02 -1.2585E-01  2.4727E-01
             3.2278E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1728.77633004408        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      899
 NPARAMETR:  1.0365E+00  1.0451E+00  6.7869E-01  9.9244E-01  8.4722E-01  9.6844E-01  1.1305E+00  1.1829E-01  7.8442E-01  8.9279E-01
             9.8668E-01
 PARAMETER:  1.3581E-01  1.4415E-01 -2.8759E-01  9.2416E-02 -6.5793E-02  6.7927E-02  2.2263E-01 -2.0346E+00 -1.4281E-01 -1.3399E-02
             8.6592E-02
 GRADIENT:  -7.0010E-01 -6.5549E-01 -5.1507E-01 -4.9710E-01  8.1657E-01 -1.2179E-01  1.5940E-01  1.6124E-02  1.2245E-01 -1.9978E-02
            -3.7473E-02

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1728.78300130339        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1074
 NPARAMETR:  1.0368E+00  1.0442E+00  6.7447E-01  9.9293E-01  8.4341E-01  9.6878E-01  1.1303E+00  4.3466E-02  7.8374E-01  8.9073E-01
             9.8695E-01
 PARAMETER:  1.3613E-01  1.4327E-01 -2.9383E-01  9.2906E-02 -7.0308E-02  6.8287E-02  2.2252E-01 -3.0358E+00 -1.4367E-01 -1.5709E-02
             8.6859E-02
 GRADIENT:  -5.6437E-02  8.8055E-02 -1.5285E-01  2.3083E-01 -1.3390E-02  2.9114E-04  1.6343E-02  2.0329E-03  1.7833E-02  6.7649E-02
             2.6372E-02

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1728.78408899102        NO. OF FUNC. EVALS.: 128
 CUMULATIVE NO. OF FUNC. EVALS.:     1202
 NPARAMETR:  1.0369E+00  1.0474E+00  6.7351E-01  9.9077E-01  8.4453E-01  9.6883E-01  1.1272E+00  1.0000E-02  7.8508E-01  8.9128E-01
             9.8698E-01
 PARAMETER:  1.3619E-01  1.4633E-01 -2.9526E-01  9.0724E-02 -6.8973E-02  6.8336E-02  2.1970E-01 -5.0608E+00 -1.4197E-01 -1.5100E-02
             8.6896E-02
 GRADIENT:   5.5692E-02 -2.1591E-01 -1.5675E-01 -1.6794E-01  1.4623E-01  6.4896E-03  1.0477E-02  0.0000E+00  2.1812E-02  5.8017E-02
             3.8555E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1202
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.2804E-03 -3.2404E-03 -4.7184E-04 -1.5558E-03 -1.3905E-02
 SE:             2.9842E-02  2.2341E-02  1.9683E-04  2.3522E-02  2.3096E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6578E-01  8.8468E-01  1.6524E-02  9.4727E-01  5.4713E-01

 ETASHRINKSD(%)  2.4190E-02  2.5155E+01  9.9341E+01  2.1199E+01  2.2626E+01
 ETASHRINKVR(%)  4.8374E-02  4.3983E+01  9.9996E+01  3.7904E+01  4.0133E+01
 EBVSHRINKSD(%)  4.4476E-01  2.4909E+01  9.9423E+01  2.1745E+01  2.1348E+01
 EBVSHRINKVR(%)  8.8754E-01  4.3613E+01  9.9997E+01  3.8761E+01  3.8139E+01
 RELATIVEINF(%)  9.8822E+01  3.4771E+00  3.6940E-04  4.0549E+00  5.7564E+00
 EPSSHRINKSD(%)  4.3822E+01
 EPSSHRINKVR(%)  6.8440E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1728.7840889910217     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -993.63326242728351     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.26
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1728.784       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  1.05E+00  6.74E-01  9.91E-01  8.45E-01  9.69E-01  1.13E+00  1.00E-02  7.85E-01  8.91E-01  9.87E-01
 


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
 #CPUT: Total CPU Time in Seconds,       15.295
Stop Time:
Fri Oct  1 23:14:24 CDT 2021
