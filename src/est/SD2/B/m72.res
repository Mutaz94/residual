Fri Oct  1 08:33:51 CDT 2021
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
$DATA ../../../../data/SD2/B/dat72.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m72.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2178.40203512875        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.6865E+02  2.7517E+01  1.9141E+01  4.6493E+01 -4.3005E+01  6.3688E+01  6.8401E+00  6.2939E+00  4.4053E+01  7.2489E-01
             5.2297E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2184.56034533046        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      194
 NPARAMETR:  1.0345E+00  1.0700E+00  1.0303E+00  1.0005E+00  1.1152E+00  9.5274E-01  9.9536E-01  9.3872E-01  7.1515E-01  1.0330E+00
             9.9241E-01
 PARAMETER:  1.3389E-01  1.6768E-01  1.2984E-01  1.0053E-01  2.0899E-01  5.1589E-02  9.5350E-02  3.6765E-02 -2.3527E-01  1.3246E-01
             9.2378E-02
 GRADIENT:  -2.7931E+01  1.7448E+01 -5.8611E+00  4.0012E+01  3.1735E+01 -1.1915E+01 -2.0500E+01 -1.3068E+00 -1.8527E+01 -1.1905E+01
            -7.9057E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2186.53692977912        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      370
 NPARAMETR:  1.0358E+00  9.2122E-01  1.0123E+00  1.0817E+00  1.0422E+00  9.6752E-01  1.4120E+00  7.9002E-01  5.8917E-01  1.0961E+00
             1.0118E+00
 PARAMETER:  1.3514E-01  1.7943E-02  1.1227E-01  1.7857E-01  1.4133E-01  6.6984E-02  4.4503E-01 -1.3570E-01 -4.2904E-01  1.9172E-01
             1.1176E-01
 GRADIENT:  -2.0546E+01  1.8437E+01 -1.3465E+01  3.5840E+01  2.3668E+01 -4.7277E+00  2.2622E+00 -2.0473E-01 -1.3725E+01  1.2636E+00
             1.3916E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2189.29961462604        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      546
 NPARAMETR:  1.0461E+00  7.8895E-01  9.9217E-01  1.1548E+00  9.3178E-01  9.8663E-01  1.4225E+00  7.3055E-01  6.8263E-01  9.9938E-01
             9.9185E-01
 PARAMETER:  1.4504E-01 -1.3705E-01  9.2137E-02  2.4392E-01  2.9340E-02  8.6535E-02  4.5244E-01 -2.1396E-01 -2.8180E-01  9.9376E-02
             9.1816E-02
 GRADIENT:   5.7063E+00  1.1718E+01  4.3909E+00  1.3710E+01 -1.3450E+01  3.5584E+00 -3.8182E-01  7.7978E-01 -7.9365E-01  1.0653E+00
            -6.3237E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2189.57512218631        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      721
 NPARAMETR:  1.0410E+00  6.8506E-01  1.0602E+00  1.2158E+00  9.3531E-01  9.7493E-01  1.5854E+00  7.6950E-01  6.6363E-01  1.0119E+00
             9.9234E-01
 PARAMETER:  1.4021E-01 -2.7824E-01  1.5842E-01  2.9539E-01  3.3118E-02  7.4610E-02  5.6085E-01 -1.6202E-01 -3.1002E-01  1.1187E-01
             9.2311E-02
 GRADIENT:  -1.4878E+00  4.9839E+00  1.1094E+00  8.2633E+00 -2.1026E+00 -4.2930E-01  5.9279E-01 -1.7573E-01 -1.9777E-01 -2.2866E-02
             1.9843E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2189.60438855985        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      900             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0423E+00  6.4435E-01  1.0804E+00  1.2343E+00  9.3388E-01  9.7550E-01  1.6374E+00  7.9223E-01  6.5982E-01  1.0139E+00
             9.9188E-01
 PARAMETER:  1.4139E-01 -3.3951E-01  1.7737E-01  3.1052E-01  3.1597E-02  7.5192E-02  5.9308E-01 -1.3290E-01 -3.1579E-01  1.1384E-01
             9.1847E-02
 GRADIENT:   6.6623E+02  5.6066E+01  4.0451E+00  4.3261E+02  9.2922E+00  5.1664E+01  2.2628E+01  4.1478E-01  1.8553E+01  1.0410E+00
             1.2076E+00

0ITERATION NO.:   28    OBJECTIVE VALUE:  -2189.60670196869        NO. OF FUNC. EVALS.:  95
 CUMULATIVE NO. OF FUNC. EVALS.:      995
 NPARAMETR:  1.0416E+00  6.4588E-01  1.0810E+00  1.2356E+00  9.3328E-01  9.7540E-01  1.6378E+00  7.9045E-01  6.5947E-01  1.0141E+00
             9.9181E-01
 PARAMETER:  1.4073E-01 -3.3715E-01  1.7789E-01  3.1158E-01  3.0946E-02  7.5090E-02  5.9338E-01 -1.3516E-01 -3.1632E-01  1.1401E-01
             9.1779E-02
 GRADIENT:   1.2896E+00  3.8303E-01  1.7068E-01 -1.4869E+00  8.6619E-02  2.5560E-02  2.2815E-02  1.1015E-02 -2.6483E-02 -3.8213E-02
             4.3828E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      995
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.8471E-03  1.3563E-02 -3.0518E-02 -1.6631E-02 -2.1748E-02
 SE:             2.9906E-02  1.9993E-02  1.3874E-02  2.3270E-02  2.2214E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5075E-01  4.9752E-01  2.7834E-02  4.7481E-01  3.2758E-01

 ETASHRINKSD(%)  1.0000E-10  3.3020E+01  5.3519E+01  2.2041E+01  2.5579E+01
 ETASHRINKVR(%)  1.0000E-10  5.5137E+01  7.8395E+01  3.9224E+01  4.4615E+01
 EBVSHRINKSD(%)  3.4420E-01  3.4796E+01  5.6944E+01  2.1049E+01  2.2558E+01
 EBVSHRINKVR(%)  6.8722E-01  5.7485E+01  8.1462E+01  3.7667E+01  4.0027E+01
 RELATIVEINF(%)  9.8216E+01  3.2446E+00  3.0823E+00  4.8405E+00  1.1844E+01
 EPSSHRINKSD(%)  3.3730E+01
 EPSSHRINKVR(%)  5.6083E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2189.6067019686902     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1270.6681687640175     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    15.59
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2189.607       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.04E+00  6.46E-01  1.08E+00  1.24E+00  9.33E-01  9.75E-01  1.64E+00  7.90E-01  6.59E-01  1.01E+00  9.92E-01
 


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
 #CPUT: Total CPU Time in Seconds,       15.635
Stop Time:
Fri Oct  1 08:34:08 CDT 2021
