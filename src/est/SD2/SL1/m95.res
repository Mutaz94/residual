Fri Oct  1 12:03:33 CDT 2021
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
$DATA ../../../../data/SD2/SL1/dat95.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m95.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2095.70023539509        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.0153E+02 -2.2386E+01 -1.2637E+01 -4.3406E+01  3.6204E+01  3.9682E+01 -1.2488E+01  1.3199E+01 -5.8219E+01 -2.2885E+00
             3.8428E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2105.63137274846        NO. OF FUNC. EVALS.: 159
 CUMULATIVE NO. OF FUNC. EVALS.:      172
 NPARAMETR:  1.0112E+00  9.0912E-01  1.0493E+00  1.1007E+00  9.6978E-01  9.8337E-01  1.0824E+00  9.0342E-01  1.3623E+00  1.0169E+00
             9.4010E-01
 PARAMETER:  1.1117E-01  4.7191E-03  1.4811E-01  1.9595E-01  6.9309E-02  8.3228E-02  1.7922E-01 -1.5645E-03  4.0918E-01  1.1679E-01
             3.8233E-02
 GRADIENT:   2.9851E+01 -1.9585E+01 -9.8875E+00 -1.6466E+01  1.3221E+01 -2.4294E+00  3.8333E+00  1.0057E+01  3.8532E+01 -1.9452E+00
            -6.4595E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2111.17824085376        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      354
 NPARAMETR:  1.0068E+00  7.2943E-01  9.8628E-01  1.2586E+00  8.7087E-01  9.9511E-01  1.5128E+00  4.5482E-01  1.1664E+00  1.0341E+00
             9.3420E-01
 PARAMETER:  1.0681E-01 -2.1549E-01  8.6184E-02  3.3004E-01 -3.8258E-02  9.5101E-02  5.1396E-01 -6.8784E-01  2.5391E-01  1.3352E-01
             3.1934E-02
 GRADIENT:   2.3786E+01  8.9820E+00 -2.0115E+01  3.6085E+01  1.6992E+01  3.3124E+00  5.7387E+00  8.9235E-01  2.5178E+01  5.0621E+00
            -1.0555E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2113.62976150052        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      533
 NPARAMETR:  9.9431E-01  6.6247E-01  9.7721E-01  1.2758E+00  8.3318E-01  9.9116E-01  1.5367E+00  3.8680E-01  1.0205E+00  1.0066E+00
             9.5012E-01
 PARAMETER:  9.4292E-02 -3.1178E-01  7.6942E-02  3.4355E-01 -8.2501E-02  9.1119E-02  5.2966E-01 -8.4986E-01  1.2027E-01  1.0659E-01
             4.8828E-02
 GRADIENT:  -3.2210E+00  7.2486E+00 -6.6507E+00  1.1036E+01  1.9710E+00  2.4184E+00 -2.7004E-01 -1.0052E-01 -5.1470E+00  1.3087E+00
             6.7731E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2114.09246507757        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      709
 NPARAMETR:  9.9166E-01  4.7531E-01  1.0306E+00  1.3806E+00  8.0646E-01  9.8240E-01  1.9034E+00  3.6755E-01  9.7549E-01  1.0401E+00
             9.5168E-01
 PARAMETER:  9.1620E-02 -6.4380E-01  1.3016E-01  4.2249E-01 -1.1511E-01  8.2247E-02  7.4366E-01 -9.0091E-01  7.5186E-02  1.3927E-01
             5.0471E-02
 GRADIENT:  -1.3675E+00  5.0089E-01 -2.1581E+00  1.6524E+00  3.1083E+00  6.6383E-01 -1.8028E-01 -8.3309E-01 -6.3173E-01  2.4481E-02
             3.3361E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2114.15171636889        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:      891
 NPARAMETR:  9.9246E-01  3.8526E-01  1.0738E+00  1.4242E+00  7.9326E-01  9.7622E-01  2.1952E+00  5.2855E-01  9.5448E-01  1.0312E+00
             9.4811E-01
 PARAMETER:  9.2427E-02 -8.5384E-01  1.7124E-01  4.5361E-01 -1.3160E-01  7.5932E-02  8.8628E-01 -5.3761E-01  5.3413E-02  1.3070E-01
             4.6711E-02
 GRADIENT:   4.8948E+00 -5.4059E-01  9.3929E+00 -1.8531E+01 -1.1604E+01 -1.0047E+00  4.5853E-01 -4.6459E-01  1.7622E+00  6.2831E-01
            -2.1399E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2114.23606007597        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1071
 NPARAMETR:  9.9104E-01  3.8636E-01  1.0699E+00  1.4308E+00  7.9807E-01  9.7933E-01  2.1907E+00  5.4756E-01  9.4795E-01  1.0251E+00
             9.4805E-01
 PARAMETER:  9.1000E-02 -8.5100E-01  1.6759E-01  4.5821E-01 -1.2556E-01  7.9113E-02  8.8421E-01 -5.0228E-01  4.6548E-02  1.2478E-01
             4.6655E-02
 GRADIENT:   1.4884E+00 -3.5821E-01 -2.6905E+00 -6.8346E+00  2.2197E+00  2.1468E-01  3.5129E-01  1.2067E-01 -4.5419E-01  1.3933E-01
             2.9136E-01

0ITERATION NO.:   32    OBJECTIVE VALUE:  -2114.23785942135        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1130
 NPARAMETR:  9.9086E-01  3.8676E-01  1.0707E+00  1.4320E+00  7.9740E-01  9.7903E-01  2.1873E+00  5.4482E-01  9.4870E-01  1.0246E+00
             9.4796E-01
 PARAMETER:  9.0822E-02 -8.4996E-01  1.6832E-01  4.5909E-01 -1.2639E-01  7.8812E-02  8.8267E-01 -5.0730E-01  4.7338E-02  1.2435E-01
             4.6555E-02
 GRADIENT:  -4.5996E-01 -1.1604E-01 -4.4134E-01  2.6350E+00  1.2408E-01  1.2438E-02 -1.7771E-02 -2.7602E-02 -1.2781E-01 -6.5353E-02
             2.9953E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1130
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         9.5579E-04  9.3641E-03 -2.1004E-02 -7.7600E-03 -1.8937E-02
 SE:             2.9893E-02  1.3584E-02  1.1397E-02  2.7720E-02  2.3746E-02
 N:                     100         100         100         100         100

 P VAL.:         9.7449E-01  4.9061E-01  6.5328E-02  7.7952E-01  4.2517E-01

 ETASHRINKSD(%)  1.0000E-10  5.4491E+01  6.1820E+01  7.1356E+00  2.0449E+01
 ETASHRINKVR(%)  1.0000E-10  7.9289E+01  8.5423E+01  1.3762E+01  3.6717E+01
 EBVSHRINKSD(%)  3.3356E-01  5.7788E+01  6.4405E+01  6.9074E+00  1.6889E+01
 EBVSHRINKVR(%)  6.6601E-01  8.2182E+01  8.7330E+01  1.3338E+01  3.0926E+01
 RELATIVEINF(%)  9.7969E+01  2.4467E+00  3.0497E+00  1.5461E+01  1.3345E+01
 EPSSHRINKSD(%)  3.3924E+01
 EPSSHRINKVR(%)  5.6340E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2114.2378594213455     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1195.2993262166729     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    17.62
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2114.238       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.91E-01  3.87E-01  1.07E+00  1.43E+00  7.97E-01  9.79E-01  2.19E+00  5.45E-01  9.49E-01  1.02E+00  9.48E-01
 


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
 #CPUT: Total CPU Time in Seconds,       17.674
Stop Time:
Fri Oct  1 12:03:52 CDT 2021
