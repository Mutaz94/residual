Fri Oct  1 23:21:50 CDT 2021
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
$DATA ../../../../data/SD4/B/dat44.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m44.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1632.13219614882        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.5771E+02  3.5545E+01 -1.6370E+01  1.1177E+02  4.3350E+01  2.1356E+01  2.8636E+00 -2.3672E-01  3.0988E+01 -6.1779E+00
             3.8121E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1643.07660669304        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  9.4368E-01  1.0216E+00  9.8653E-01  9.5329E-01  9.9269E-01  1.0571E+00  1.0203E+00  1.0111E+00  8.7756E-01  1.0321E+00
             8.8341E-01
 PARAMETER:  4.2036E-02  1.2133E-01  8.6442E-02  5.2163E-02  9.2668E-02  1.5554E-01  1.2012E-01  1.1102E-01 -3.0610E-02  1.3156E-01
            -2.3964E-02
 GRADIENT:   2.5190E+01 -1.6878E+01  5.2047E-01 -1.1561E+01  7.5766E+00  3.9525E+00 -9.8845E+00 -3.8111E-01  6.2872E+00 -1.9903E+00
            -7.6133E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1645.89016939912        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      350
 NPARAMETR:  9.3609E-01  9.4400E-01  8.7935E-01  1.0015E+00  9.0851E-01  1.0307E+00  1.4279E+00  9.2231E-01  6.3330E-01  9.4278E-01
             9.0283E-01
 PARAMETER:  3.3961E-02  4.2373E-02 -2.8575E-02  1.0146E-01  4.0496E-03  1.3022E-01  4.5617E-01  1.9127E-02 -3.5680E-01  4.1081E-02
            -2.2231E-03
 GRADIENT:   8.0480E+00  9.3581E+00 -7.8031E+00  9.6014E+00  1.1153E+01 -6.1681E+00  5.9773E+00  3.1032E+00 -1.4618E+00 -3.6167E+00
             2.0935E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1646.98193195713        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      526
 NPARAMETR:  9.3269E-01  8.1506E-01  8.3912E-01  1.0787E+00  8.2672E-01  1.0476E+00  1.5037E+00  6.7043E-01  6.3924E-01  9.4343E-01
             8.8710E-01
 PARAMETER:  3.0322E-02 -1.0449E-01 -7.5406E-02  1.7576E-01 -9.0290E-02  1.4652E-01  5.0792E-01 -2.9984E-01 -3.4747E-01  4.1762E-02
            -1.9797E-02
 GRADIENT:   1.0295E+00  9.6195E+00 -1.0510E+00  2.0918E+01 -1.4086E+00  6.5835E-01 -2.7991E+00  5.7786E-01 -1.9819E+00  1.8539E+00
            -3.1298E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1647.26295907612        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      702
 NPARAMETR:  9.3275E-01  7.6126E-01  7.6770E-01  1.0938E+00  7.6792E-01  1.0460E+00  1.5881E+00  5.1146E-01  6.3926E-01  8.9355E-01
             8.9190E-01
 PARAMETER:  3.0380E-02 -1.7278E-01 -1.6435E-01  1.8962E-01 -1.6407E-01  1.4501E-01  5.6254E-01 -5.7048E-01 -3.4744E-01 -1.2549E-02
            -1.4403E-02
 GRADIENT:   9.2667E-02  8.7206E-01 -1.6316E-01  1.0748E+00  7.3569E-02 -8.9744E-02  1.4048E-01 -6.6121E-02  6.9390E-02 -2.7619E-02
            -1.5821E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1647.26395863342        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      877
 NPARAMETR:  9.3237E-01  7.4366E-01  7.8132E-01  1.1050E+00  7.6882E-01  1.0461E+00  1.6184E+00  5.2676E-01  6.3377E-01  8.9785E-01
             8.9178E-01
 PARAMETER:  2.9978E-02 -1.9617E-01 -1.4677E-01  1.9989E-01 -1.6290E-01  1.4505E-01  5.8144E-01 -5.4101E-01 -3.5607E-01 -7.7525E-03
            -1.4530E-02
 GRADIENT:  -1.2506E-01  8.9187E-01  6.7004E-01  1.1239E+00 -7.6290E-01  5.5862E-02 -1.1448E-01 -1.8475E-01 -1.1400E-01 -1.4831E-01
            -1.3820E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1647.26416543297        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1052
 NPARAMETR:  9.3213E-01  7.3269E-01  7.9478E-01  1.1124E+00  7.7241E-01  1.0459E+00  1.6397E+00  5.4916E-01  6.3012E-01  9.0223E-01
             8.9186E-01
 PARAMETER:  2.9715E-02 -2.1104E-01 -1.2969E-01  2.0653E-01 -1.5824E-01  1.4485E-01  5.9452E-01 -4.9936E-01 -3.6184E-01 -2.8888E-03
            -1.4451E-02
 GRADIENT:  -1.4239E-01  7.1484E-01  7.0751E-01  9.1076E-01 -8.1435E-01  7.8441E-02 -1.5483E-01 -1.6724E-01 -1.3257E-01 -1.2483E-01
            -1.3951E-01

0ITERATION NO.:   34    OBJECTIVE VALUE:  -1647.26728137439        NO. OF FUNC. EVALS.: 132
 CUMULATIVE NO. OF FUNC. EVALS.:     1184
 NPARAMETR:  9.3276E-01  7.3230E-01  7.9466E-01  1.1121E+00  7.7255E-01  1.0465E+00  1.6417E+00  5.5420E-01  6.3043E-01  9.0182E-01
             8.9195E-01
 PARAMETER:  3.0388E-02 -2.1156E-01 -1.2984E-01  2.0627E-01 -1.5805E-01  1.4545E-01  5.9576E-01 -4.9023E-01 -3.6136E-01 -3.3445E-03
            -1.4346E-02
 GRADIENT:   1.2249E+00  1.7197E-01  2.6796E-04 -4.6151E-02 -1.6775E-01  3.1906E-01  6.5494E-02 -3.1680E-02  7.7834E-02  3.9012E-02
            -8.3077E-03

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1184
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         6.2068E-04  1.3712E-02 -2.4276E-02 -1.9690E-02 -8.7840E-03
 SE:             2.9904E-02  2.2643E-02  1.0678E-02  2.1795E-02  2.2869E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8344E-01  5.4479E-01  2.2996E-02  3.6630E-01  7.0090E-01

 ETASHRINKSD(%)  1.0000E-10  2.4142E+01  6.4228E+01  2.6983E+01  2.3386E+01
 ETASHRINKVR(%)  1.0000E-10  4.2456E+01  8.7204E+01  4.6686E+01  4.1304E+01
 EBVSHRINKSD(%)  3.2408E-01  2.4179E+01  6.7660E+01  2.7108E+01  2.0986E+01
 EBVSHRINKVR(%)  6.4710E-01  4.2511E+01  8.9541E+01  4.6868E+01  3.7568E+01
 RELATIVEINF(%)  9.8879E+01  6.1452E+00  1.0973E+00  5.4703E+00  6.4597E+00
 EPSSHRINKSD(%)  4.5153E+01
 EPSSHRINKVR(%)  6.9918E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1647.2672813743932     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -912.11645481065500     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    14.83
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1647.267       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.33E-01  7.32E-01  7.95E-01  1.11E+00  7.73E-01  1.05E+00  1.64E+00  5.54E-01  6.30E-01  9.02E-01  8.92E-01
 


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
 #CPUT: Total CPU Time in Seconds,       14.861
Stop Time:
Fri Oct  1 23:22:07 CDT 2021
