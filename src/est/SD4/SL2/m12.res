Sat Oct  2 02:33:33 CDT 2021
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
$DATA ../../../../data/SD4/SL2/dat12.csv ignore=@
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
Current Date:        2 OCT 2021
Days until program expires : 197
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
 RAW OUTPUT FILE (FILE): m12.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1656.93894719459        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.2632E+02 -2.4042E+01 -1.5095E+01  6.8338E+00  4.8572E+01  5.5551E+01 -1.4227E+01  2.2863E+00 -1.2748E+01 -5.9563E+00
             2.4300E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1658.28865623117        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0019E+00  1.0619E+00  1.0074E+00  1.0497E+00  9.6028E-01  1.0020E+00  1.1364E+00  9.9351E-01  1.1367E+00  1.0377E+00
             8.6937E-01
 PARAMETER:  1.0186E-01  1.6002E-01  1.0741E-01  1.4854E-01  5.9465E-02  1.0203E-01  2.2785E-01  9.3484E-02  2.2809E-01  1.3701E-01
            -3.9987E-02
 GRADIENT:   9.5722E+00  4.0566E+01  1.6985E+01  4.5845E+01 -3.9391E+01 -3.0410E-01 -1.2034E+00  7.1277E-01  1.5204E+01  3.1271E+00
            -3.2421E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1659.50022960987        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.9984E-01  9.0601E-01  9.3066E-01  1.1468E+00  8.6194E-01  9.9714E-01  1.5728E+00  7.9592E-01  9.7787E-01  9.4213E-01
             8.8815E-01
 PARAMETER:  9.9842E-02  1.2916E-03  2.8141E-02  2.3699E-01 -4.8565E-02  9.7141E-02  5.5286E-01 -1.2826E-01  7.7622E-02  4.0390E-02
            -1.8613E-02
 GRADIENT:   5.3863E+00  4.5042E+01  1.0775E+01  5.2215E+01 -2.9806E+01 -1.9282E+00  1.2315E+01 -7.5040E-02  8.5362E+00  4.7040E+00
            -2.1483E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1662.77066998666        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  9.9842E-01  9.1080E-01  8.9164E-01  1.0924E+00  8.7051E-01  1.0008E+00  1.3828E+00  7.6342E-01  9.4928E-01  9.0020E-01
             9.3665E-01
 PARAMETER:  9.8415E-02  6.5634E-03 -1.4689E-02  1.8839E-01 -3.8671E-02  1.0075E-01  4.2408E-01 -1.6994E-01  4.7949E-02 -5.1340E-03
             3.4551E-02
 GRADIENT:   1.4778E-01  4.0109E+00  7.8838E-01  2.7036E+00 -6.5502E-01 -2.4229E-01 -6.6357E-01 -2.8291E-01 -1.3472E+00 -9.1878E-02
             3.1520E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1663.26369024253        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      710
 NPARAMETR:  9.9497E-01  5.9095E-01  1.0320E+00  1.2958E+00  8.2078E-01  1.0005E+00  1.9078E+00  8.4489E-01  8.5583E-01  9.0725E-01
             9.3090E-01
 PARAMETER:  9.4959E-02 -4.2602E-01  1.3151E-01  3.5915E-01 -9.7499E-02  1.0054E-01  7.4594E-01 -6.8546E-02 -5.5684E-02  2.6672E-03
             2.8396E-02
 GRADIENT:   1.7071E+00  5.0338E+00  4.3713E+00  7.5961E+00 -5.4383E+00  1.3981E+00  1.5244E-01 -1.0897E+00  1.3045E+00 -1.0698E+00
            -2.0949E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1663.31643910516        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  9.9220E-01  4.7671E-01  1.1158E+00  1.3724E+00  8.2493E-01  9.9594E-01  2.1937E+00  9.3473E-01  8.2103E-01  9.4658E-01
             9.3189E-01
 PARAMETER:  9.2167E-02 -6.4085E-01  2.0959E-01  4.1656E-01 -9.2460E-02  9.5928E-02  8.8557E-01  3.2507E-02 -9.7198E-02  4.5099E-02
             2.9456E-02
 GRADIENT:   2.6198E-01  5.2466E+00  2.2182E+00  1.1634E+01 -5.7589E+00  4.9169E-01  2.4531E-01  1.5162E-01 -6.3413E-01  1.0964E+00
            -1.3983E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1663.42254741533        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1067
 NPARAMETR:  9.9161E-01  4.2726E-01  1.1438E+00  1.3914E+00  8.2803E-01  9.9423E-01  2.3178E+00  9.5831E-01  8.1431E-01  9.4694E-01
             9.3484E-01
 PARAMETER:  9.1573E-02 -7.5035E-01  2.3439E-01  4.3032E-01 -8.8709E-02  9.4218E-02  9.4063E-01  5.7414E-02 -1.0542E-01  4.5482E-02
             3.2620E-02
 GRADIENT:   9.6576E-01 -4.4932E-01 -5.3034E-02 -8.4980E+00  2.0580E+00  2.1453E-01 -4.6807E-01 -1.4003E-01  1.8386E-01 -1.9199E-01
            -1.8566E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1663.43019484717        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:     1254             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9196E-01  4.2791E-01  1.1422E+00  1.3912E+00  8.2603E-01  9.9424E-01  2.3371E+00  9.5977E-01  8.1289E-01  9.4571E-01
             9.3518E-01
 PARAMETER:  9.1925E-02 -7.4883E-01  2.3292E-01  4.3014E-01 -9.1124E-02  9.4219E-02  9.4891E-01  5.8935E-02 -1.0715E-01  4.4184E-02
             3.2987E-02
 GRADIENT:   4.7064E+02  6.4357E+01  8.6419E+00  6.6378E+02  9.2022E+00  5.9567E+01  4.1943E+01  3.1562E-01  9.4441E+00  9.3435E-01
             7.9366E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1663.43184238301        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1437
 NPARAMETR:  9.9196E-01  4.2746E-01  1.1405E+00  1.3913E+00  8.2522E-01  9.9423E-01  2.3390E+00  9.5787E-01  8.1290E-01  9.4446E-01
             9.3518E-01
 PARAMETER:  9.1928E-02 -7.4989E-01  2.3142E-01  4.3021E-01 -9.2106E-02  9.4216E-02  9.4974E-01  5.6954E-02 -1.0715E-01  4.2854E-02
             3.2979E-02
 GRADIENT:   1.7233E+00  3.8773E-01  9.0518E-01 -8.4859E+00 -5.7458E-02  2.1391E-01  4.4604E-01 -2.9232E-02  1.8466E-02  4.4722E-02
            -1.6691E-02

0ITERATION NO.:   41    OBJECTIVE VALUE:  -1663.43184238301        NO. OF FUNC. EVALS.:  24
 CUMULATIVE NO. OF FUNC. EVALS.:     1461
 NPARAMETR:  9.9196E-01  4.2746E-01  1.1405E+00  1.3913E+00  8.2522E-01  9.9423E-01  2.3390E+00  9.5787E-01  8.1290E-01  9.4446E-01
             9.3518E-01
 PARAMETER:  9.1928E-02 -7.4989E-01  2.3142E-01  4.3021E-01 -9.2106E-02  9.4216E-02  9.4974E-01  5.6954E-02 -1.0715E-01  4.2854E-02
             3.2979E-02
 GRADIENT:  -2.5326E-03  1.9307E-01  5.3044E-01 -8.7901E-02 -4.4798E-02 -5.5633E-04 -2.5581E-02 -2.9627E-02  2.1264E-03  4.3726E-02
            -1.6329E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1461
 NO. OF SIG. DIGITS IN FINAL EST.:  2.2

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         7.3656E-04  2.2084E-02 -3.4502E-02 -1.9432E-02 -2.3019E-02
 SE:             2.9867E-02  1.7630E-02  1.6054E-02  2.4955E-02  2.1046E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8032E-01  2.1034E-01  3.1628E-02  4.3616E-01  2.7406E-01

 ETASHRINKSD(%)  1.0000E-10  4.0937E+01  4.6216E+01  1.6399E+01  2.9494E+01
 ETASHRINKVR(%)  1.0000E-10  6.5116E+01  7.1073E+01  3.0109E+01  5.0288E+01
 EBVSHRINKSD(%)  4.0422E-01  4.5790E+01  4.9309E+01  1.3999E+01  2.5607E+01
 EBVSHRINKVR(%)  8.0681E-01  7.0613E+01  7.4304E+01  2.6038E+01  4.4657E+01
 RELATIVEINF(%)  9.8256E+01  3.4660E+00  4.6701E+00  1.0238E+01  8.7834E+00
 EPSSHRINKSD(%)  4.5705E+01
 EPSSHRINKVR(%)  7.0520E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1663.4318423830102     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -928.28101581927206     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    20.11
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1663.432       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  4.27E-01  1.14E+00  1.39E+00  8.25E-01  9.94E-01  2.34E+00  9.58E-01  8.13E-01  9.44E-01  9.35E-01
 


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
 #CPUT: Total CPU Time in Seconds,       20.139
Stop Time:
Sat Oct  2 02:33:54 CDT 2021