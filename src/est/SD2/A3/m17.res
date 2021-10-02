Fri Oct  1 10:23:46 CDT 2021
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
$DATA ../../../../data/SD2/A3/dat17.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m17.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   804.652485002514        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7475E+02  1.6278E+02  3.6893E+02  2.8728E+01  4.3331E+02  4.5681E+01 -1.6162E+02 -4.8219E+02 -1.3556E+02 -3.5960E+02
            -4.6654E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1436.13812057151        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.0899E+00  9.6277E-01  8.7635E-01  1.1098E+00  8.3438E-01  9.0626E-01  1.0347E+00  1.0758E+00  1.0669E+00  1.0952E+00
             4.5433E+00
 PARAMETER:  1.8613E-01  6.2064E-02 -3.1985E-02  2.0414E-01 -8.1064E-02  1.5681E-03  1.3410E-01  1.7303E-01  1.6476E-01  1.9096E-01
             1.6137E+00
 GRADIENT:   6.6772E+01 -7.9667E+00 -5.4241E+00 -9.2539E+00 -5.0899E+00  5.9412E+00  7.9229E+00  7.5062E+00  1.3510E+01  2.5529E+01
             1.2282E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1448.67496802633        NO. OF FUNC. EVALS.:  74
 CUMULATIVE NO. OF FUNC. EVALS.:      157
 NPARAMETR:  1.0822E+00  5.4302E-01  3.2790E-01  1.3318E+00  3.3570E-01  9.6943E-01  7.9373E-01  5.9087E-01  1.1558E+00  2.7644E-01
             4.4253E+00
 PARAMETER:  1.7904E-01 -5.1061E-01 -1.0151E+00  3.8653E-01 -9.9152E-01  6.8950E-02 -1.3101E-01 -4.2616E-01  2.4478E-01 -1.1858E+00
             1.5873E+00
 GRADIENT:   1.3956E+01  1.0897E+02  6.2729E+01  2.0737E+02 -1.2926E+02  1.2855E+01 -7.0697E+00 -4.1503E+00 -3.3078E+01 -3.0368E+00
             1.4035E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1460.04411785831        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:      228
 NPARAMETR:  1.0315E+00  4.3944E-01  1.9851E-01  1.3297E+00  2.4332E-01  9.3340E-01  1.3803E+00  5.6780E-01  1.6405E+00  1.1277E-01
             3.8135E+00
 PARAMETER:  1.3101E-01 -7.2226E-01 -1.5169E+00  3.8493E-01 -1.3134E+00  3.1082E-02  4.2228E-01 -4.6598E-01  5.9499E-01 -2.0824E+00
             1.4386E+00
 GRADIENT:  -5.8903E+01  8.6173E+01  2.8672E+01  2.0344E+02 -1.1117E+02 -8.5414E+00 -7.7094E+00 -1.4254E+01 -6.3011E-01 -1.5846E+00
             8.8882E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1488.27185017712        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      407
 NPARAMETR:  1.0510E+00  4.7633E-01  2.7953E-01  1.1547E+00  3.1234E-01  9.3183E-01  1.6472E+00  2.1748E-01  1.2088E+00  2.5757E-01
             3.3803E+00
 PARAMETER:  1.4974E-01 -6.4164E-01 -1.1747E+00  2.4384E-01 -1.0637E+00  2.9391E-02  5.9905E-01 -1.4257E+00  2.8967E-01 -1.2564E+00
             1.3180E+00
 GRADIENT:  -1.3384E+01  2.7087E+01  1.1217E+01  5.6230E+01  1.1590E+01  9.8112E-02 -5.2455E+00 -2.8807E+00 -1.5598E+01 -9.4832E+00
            -5.2538E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1510.46696345805        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      582
 NPARAMETR:  1.0517E+00  3.3633E-01  2.2047E-01  1.1001E+00  2.2897E-01  9.2318E-01  1.2825E+00  1.3208E+00  1.4627E+00  2.2279E-01
             3.1385E+00
 PARAMETER:  1.5042E-01 -9.8968E-01 -1.4120E+00  1.9541E-01 -1.3742E+00  2.0067E-02  3.4881E-01  3.7821E-01  4.8030E-01 -1.4015E+00
             1.2437E+00
 GRADIENT:  -1.3696E+01  5.8068E+01  8.2930E+01  5.0637E+01 -2.1505E+02 -6.2002E+00 -2.3407E+00 -1.2350E+01 -4.6092E+00 -3.0755E+00
            -1.0182E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1520.08514762306        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      757
 NPARAMETR:  1.0529E+00  2.7731E-01  2.0956E-01  1.0636E+00  2.3100E-01  9.3458E-01  6.5787E-01  1.3432E+00  1.4499E+00  3.3667E-01
             3.1240E+00
 PARAMETER:  1.5159E-01 -1.1826E+00 -1.4628E+00  1.6165E-01 -1.3653E+00  3.2339E-02 -3.1874E-01  3.9506E-01  4.7148E-01 -9.8866E-01
             1.2391E+00
 GRADIENT:  -1.9107E-01 -1.5887E-01 -4.6186E-01  1.2826E+00  1.1495E+00  9.4315E-02  7.2331E-02 -1.3872E-02  8.8786E-02  4.8070E-02
            -7.2440E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1520.09542432188        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      934
 NPARAMETR:  1.0530E+00  2.7754E-01  2.0925E-01  1.0614E+00  2.3081E-01  9.3421E-01  4.9206E-01  1.3471E+00  1.4535E+00  3.3990E-01
             3.1234E+00
 PARAMETER:  1.5164E-01 -1.1818E+00 -1.4642E+00  1.5961E-01 -1.3661E+00  3.1945E-02 -6.0916E-01  3.9792E-01  4.7399E-01 -9.7911E-01
             1.2389E+00
 GRADIENT:   1.0062E-02  1.0028E-01  2.9355E-01  1.5154E-01  1.0284E-01 -4.1561E-02 -3.8388E-03 -1.6246E-01 -8.6173E-02 -7.0358E-02
            -3.0233E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -1520.09662148334        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1111
 NPARAMETR:  1.0530E+00  2.7745E-01  2.0862E-01  1.0604E+00  2.3048E-01  9.3429E-01  4.7402E-01  1.3475E+00  1.4553E+00  3.4485E-01
             3.1237E+00
 PARAMETER:  1.5166E-01 -1.1821E+00 -1.4672E+00  1.5860E-01 -1.3676E+00  3.2032E-02 -6.4651E-01  3.9822E-01  4.7522E-01 -9.6465E-01
             1.2390E+00
 GRADIENT:   3.1224E-02 -8.7544E-02 -1.1417E-01 -3.7261E-02  8.0561E-01  6.5210E-03  1.6868E-03  5.5715E-02  7.0497E-02  2.0793E-02
             3.5690E-02

0ITERATION NO.:   44    OBJECTIVE VALUE:  -1520.09669900430        NO. OF FUNC. EVALS.: 153
 CUMULATIVE NO. OF FUNC. EVALS.:     1264
 NPARAMETR:  1.0530E+00  2.7754E-01  2.0862E-01  1.0603E+00  2.3045E-01  9.3429E-01  4.7405E-01  1.3472E+00  1.4553E+00  3.4475E-01
             3.1236E+00
 PARAMETER:  1.5168E-01 -1.1818E+00 -1.4673E+00  1.5857E-01 -1.3677E+00  3.2032E-02 -6.4644E-01  3.9803E-01  4.7522E-01 -9.6495E-01
             1.2390E+00
 GRADIENT:   6.0048E-02  4.7383E-03  4.9358E-02  1.0218E-02  3.8364E-01  1.6322E-03 -7.4348E-05  1.3457E-02  4.2995E-02  4.2008E-03
            -1.7710E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1264
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.7170E-03 -8.9787E-03  1.0993E-02 -4.7852E-03  1.6725E-02
 SE:             2.8868E-02  3.4443E-03  2.1896E-02  2.7174E-02  1.1367E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5257E-01  9.1385E-03  6.1561E-01  8.6022E-01  1.4120E-01

 ETASHRINKSD(%)  3.2874E+00  8.8461E+01  2.6647E+01  8.9641E+00  6.1918E+01
 ETASHRINKVR(%)  6.4667E+00  9.8669E+01  4.6193E+01  1.7125E+01  8.5498E+01
 EBVSHRINKSD(%)  3.3312E+00  8.8784E+01  2.4952E+01  7.0478E+00  6.3980E+01
 EBVSHRINKVR(%)  6.5514E+00  9.8742E+01  4.3678E+01  1.3599E+01  8.7026E+01
 RELATIVEINF(%)  9.2778E+01  3.0772E-01  6.8911E+00  4.0213E+01  8.9610E-01
 EPSSHRINKSD(%)  2.6802E+01
 EPSSHRINKVR(%)  4.6420E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1520.0966990043044     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -601.15816579963166     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.37
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1520.097       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.05E+00  2.78E-01  2.09E-01  1.06E+00  2.30E-01  9.34E-01  4.74E-01  1.35E+00  1.46E+00  3.45E-01  3.12E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.410
Stop Time:
Fri Oct  1 10:24:09 CDT 2021
