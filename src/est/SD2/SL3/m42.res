Fri Oct  1 12:57:21 CDT 2021
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
$DATA ../../../../data/SD2/SL3/dat42.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:      600
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

 TOT. NO. OF OBS RECS:      500
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
 RAW OUTPUT FILE (FILE): m42.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2068.36966378849        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.8947E+02  5.7988E+01 -3.6337E+01  1.5987E+02  1.3938E+02  4.9584E+01  4.4081E+00  3.0624E+00  1.9803E+00 -2.5980E+01
            -1.2932E+02

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2076.61149375353        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      193
 NPARAMETR:  1.1132E+00  7.8963E-01  8.5237E-01  1.0449E+00  7.1532E-01  1.0160E+00  9.0554E-01  9.0874E-01  1.0665E+00  1.0920E+00
             1.1928E+00
 PARAMETER:  2.0723E-01 -1.3620E-01 -5.9733E-02  1.4391E-01 -2.3502E-01  1.1582E-01  7.7286E-04  4.2997E-03  1.6434E-01  1.8798E-01
             2.7627E-01
 GRADIENT:   1.1599E+02  5.7741E-01  3.5027E+01 -5.4860E+01 -1.0517E+02 -8.2743E-01  3.5265E+00  1.1015E+01  2.2981E+01  3.6767E+01
             3.5841E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2082.05016261302        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      371
 NPARAMETR:  1.0963E+00  5.6768E-01  7.6037E-01  1.2045E+00  6.2934E-01  1.0573E+00  8.7490E-01  4.5921E-01  9.8486E-01  9.8498E-01
             1.1937E+00
 PARAMETER:  1.9196E-01 -4.6619E-01 -1.7395E-01  2.8604E-01 -3.6309E-01  1.5570E-01 -3.3642E-02 -6.7825E-01  8.4744E-02  8.4866E-02
             2.7703E-01
 GRADIENT:   8.0653E+01  6.3948E+00  4.6910E+00  2.9722E+01 -6.6847E+01  1.7486E+01 -1.6577E+00  1.4634E+00  2.4497E+01  2.6600E+01
             2.4016E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2092.94779676463        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      550
 NPARAMETR:  1.0561E+00  6.7721E-01  8.0119E-01  1.1360E+00  7.0679E-01  9.9647E-01  1.2882E+00  6.3431E-01  8.8976E-01  8.2351E-01
             1.1368E+00
 PARAMETER:  1.5461E-01 -2.8978E-01 -1.2165E-01  2.2752E-01 -2.4703E-01  9.6461E-02  3.5328E-01 -3.5522E-01 -1.6803E-02 -9.4179E-02
             2.2819E-01
 GRADIENT:   3.9033E+00 -2.2113E+00 -3.2268E+00  4.1222E+00  5.5756E+00 -2.5868E+00 -1.3806E+00  1.2778E+00 -4.6420E+00  1.1822E+00
            -5.1186E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2093.94609813223        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      726
 NPARAMETR:  1.0572E+00  8.4288E-01  6.5633E-01  1.0231E+00  6.8726E-01  1.0084E+00  1.1361E+00  3.2725E-01  9.7602E-01  7.8303E-01
             1.1403E+00
 PARAMETER:  1.5559E-01 -7.0932E-02 -3.2109E-01  1.2285E-01 -2.7505E-01  1.0837E-01  2.2763E-01 -1.0170E+00  7.5723E-02 -1.4459E-01
             2.3128E-01
 GRADIENT:  -8.0553E-01  3.6495E+00  1.9749E+00  2.1681E+00 -6.4252E+00  8.3664E-01  1.8928E-01  2.7517E-01  1.4827E+00  3.0030E-01
            -5.0078E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2094.00772627304        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      902
 NPARAMETR:  1.0570E+00  8.4792E-01  6.5513E-01  1.0183E+00  6.9224E-01  1.0055E+00  1.1289E+00  2.2782E-01  9.7387E-01  7.9905E-01
             1.1424E+00
 PARAMETER:  1.5541E-01 -6.4968E-02 -3.2292E-01  1.1817E-01 -2.6783E-01  1.0549E-01  2.2125E-01 -1.3792E+00  7.3525E-02 -1.2433E-01
             2.3317E-01
 GRADIENT:  -1.3179E+00 -4.0602E-01 -1.2173E+00  2.7864E-01  8.6325E-01 -2.7639E-01 -7.3472E-03  6.4165E-02  1.5777E-01  6.0195E-01
             8.3131E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2094.01878322967        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1081
 NPARAMETR:  1.0599E+00  8.5135E-01  6.5246E-01  1.0160E+00  6.9215E-01  1.0067E+00  1.1283E+00  1.7413E-01  9.7509E-01  7.9956E-01
             1.1417E+00
 PARAMETER:  1.5819E-01 -6.0930E-02 -3.2701E-01  1.1589E-01 -2.6796E-01  1.0667E-01  2.2073E-01 -1.6480E+00  7.4774E-02 -1.2370E-01
             2.3252E-01
 GRADIENT:   4.7905E+00  5.4331E-02 -1.3882E-01  1.2656E-01  9.4331E-02  1.8296E-01  5.1732E-02  4.0955E-03  6.5032E-02  7.2771E-02
             2.3401E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2094.01914731685        NO. OF FUNC. EVALS.: 171
 CUMULATIVE NO. OF FUNC. EVALS.:     1252
 NPARAMETR:  1.0593E+00  8.5125E-01  6.5244E-01  1.0159E+00  6.9212E-01  1.0065E+00  1.1281E+00  1.7434E-01  9.7496E-01  7.9939E-01
             1.1417E+00
 PARAMETER:  1.5765E-01 -6.1049E-02 -3.2703E-01  1.1574E-01 -2.6800E-01  1.0645E-01  2.2050E-01 -1.6468E+00  7.4639E-02 -1.2391E-01
             2.3252E-01
 GRADIENT:  -4.4326E-04 -8.3381E-02 -7.3884E-02 -1.5271E-03  1.7592E-01 -1.0012E-04  2.5240E-03  9.6019E-04  5.0874E-03  4.0644E-02
             2.5914E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1252
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4605E-04 -3.7449E-03 -6.1738E-03  1.4705E-04 -1.0487E-02
 SE:             2.9852E-02  1.9181E-02  3.4160E-03  2.6585E-02  2.3393E-02
 N:                     100         100         100         100         100

 P VAL.:         9.9342E-01  8.4521E-01  7.0714E-02  9.9559E-01  6.5395E-01

 ETASHRINKSD(%)  1.0000E-10  3.5740E+01  8.8556E+01  1.0937E+01  2.1630E+01
 ETASHRINKVR(%)  1.0000E-10  5.8707E+01  9.8690E+01  2.0678E+01  3.8581E+01
 EBVSHRINKSD(%)  4.1197E-01  3.5911E+01  8.9384E+01  1.0858E+01  2.1418E+01
 EBVSHRINKVR(%)  8.2225E-01  5.8926E+01  9.8873E+01  2.0537E+01  3.8249E+01
 RELATIVEINF(%)  9.8832E+01  4.2253E+00  1.5702E-01  1.1982E+01  8.2280E+00
 EPSSHRINKSD(%)  3.3465E+01
 EPSSHRINKVR(%)  5.5731E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2094.0191473168538     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1175.0806141121811     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2094.019       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.06E+00  8.51E-01  6.52E-01  1.02E+00  6.92E-01  1.01E+00  1.13E+00  1.74E-01  9.75E-01  7.99E-01  1.14E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.881
Stop Time:
Fri Oct  1 12:57:49 CDT 2021