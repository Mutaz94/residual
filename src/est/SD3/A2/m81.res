Fri Oct  1 17:58:12 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat81.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m81.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1247.25628819247        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   3.7564E+02  3.3811E+01  2.0502E+02 -8.4617E+00  1.7752E+02  3.1131E+01 -8.1720E+01 -3.4969E+02 -5.1452E+01 -8.2539E+01
            -1.8629E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1951.35076162505        NO. OF FUNC. EVALS.:  71
 CUMULATIVE NO. OF FUNC. EVALS.:       84
 NPARAMETR:  1.0109E+00  1.0059E+00  8.7355E-01  1.0395E+00  8.9469E-01  9.8164E-01  1.0264E+00  1.0914E+00  8.8195E-01  9.7406E-01
             2.3810E+00
 PARAMETER:  1.1085E-01  1.0587E-01 -3.5193E-02  1.3870E-01 -1.1278E-02  8.1470E-02  1.2602E-01  1.8749E-01 -2.5617E-02  7.3713E-02
             9.6752E-01
 GRADIENT:   3.6337E+01 -6.5294E-01  4.9976E+00 -4.6291E+00  1.5206E+01 -3.6721E+00 -3.7556E+00  5.4204E+00  4.5642E+00  5.1807E+00
            -6.1931E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1957.98450023274        NO. OF FUNC. EVALS.:  98
 CUMULATIVE NO. OF FUNC. EVALS.:      182
 NPARAMETR:  9.9603E-01  6.9159E-01  5.2032E-01  1.2177E+00  5.7218E-01  1.1009E+00  1.3108E+00  7.8205E-01  7.5040E-01  6.9326E-01
             2.2886E+00
 PARAMETER:  9.6021E-02 -2.6876E-01 -5.5330E-01  2.9697E-01 -4.5831E-01  1.9611E-01  3.7064E-01 -1.4584E-01 -1.8715E-01 -2.6635E-01
             9.2795E-01
 GRADIENT:  -6.9178E+01  8.9558E+00 -4.6030E+01  1.2232E+02  7.8245E+01  2.1147E+01 -7.0317E+00  2.7546E+00 -2.2497E+01  4.2648E+00
            -3.2322E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1968.77862347847        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      361
 NPARAMETR:  1.0364E+00  6.1153E-01  4.4217E-01  1.1803E+00  4.8470E-01  1.0624E+00  1.5000E+00  3.9669E-01  8.2342E-01  5.7415E-01
             2.3755E+00
 PARAMETER:  1.3571E-01 -3.9180E-01 -7.1607E-01  2.6579E-01 -6.2422E-01  1.6050E-01  5.0548E-01 -8.2460E-01 -9.4294E-02 -4.5487E-01
             9.6522E-01
 GRADIENT:   3.7420E+00  9.3295E+00 -7.6216E-01 -2.8268E+00  1.0810E+01  1.2001E+01  2.1877E-01 -9.6145E-01  1.8699E+00 -1.2133E+00
             1.8963E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1986.37681330706        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:      542
 NPARAMETR:  1.0461E+00  3.9308E-01  2.3699E-01  1.1961E+00  2.9325E-01  9.4927E-01  1.7807E+00  1.4098E+00  9.5011E-01  2.4716E-01
             2.0429E+00
 PARAMETER:  1.4503E-01 -8.3374E-01 -1.3398E+00  2.7904E-01 -1.1267E+00  4.7933E-02  6.7701E-01  4.4345E-01  4.8824E-02 -1.2977E+00
             8.1435E-01
 GRADIENT:   2.7721E+01  3.1740E+01 -1.5888E+01  1.0780E+02 -3.2884E+01 -4.4273E+01  1.5327E+01  7.4291E+00 -1.4482E+01  2.4366E+00
             6.0277E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1996.55407849750        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      718
 NPARAMETR:  1.0329E+00  3.3309E-01  2.0078E-01  1.1134E+00  2.6130E-01  1.0605E+00  1.7189E+00  1.5350E+00  1.0898E+00  2.7613E-01
             1.7970E+00
 PARAMETER:  1.3238E-01 -9.9933E-01 -1.5055E+00  2.0742E-01 -1.2421E+00  1.5869E-01  6.4170E-01  5.2851E-01  1.8602E-01 -1.1869E+00
             6.8611E-01
 GRADIENT:   7.6450E+00  1.3278E-01 -7.8161E+00  4.9364E+00  2.6374E+00  3.3272E+00  1.2540E+00  5.1007E+00  1.0683E+00  4.4390E-01
            -2.8632E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1996.75226242473        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      895
 NPARAMETR:  1.0294E+00  3.3838E-01  2.0728E-01  1.1144E+00  2.6539E-01  1.0516E+00  1.7072E+00  1.5096E+00  1.0713E+00  2.5439E-01
             1.8105E+00
 PARAMETER:  1.2893E-01 -9.8358E-01 -1.4737E+00  2.0835E-01 -1.2265E+00  1.5031E-01  6.3488E-01  5.1185E-01  1.6889E-01 -1.2689E+00
             6.9358E-01
 GRADIENT:   3.6345E-01  4.0773E-01  8.4581E-03  4.0347E-02 -2.2516E+00 -9.0218E-03 -5.0097E-01 -8.3177E-02 -1.5440E-01  2.1992E-02
            -6.0676E-01

0ITERATION NO.:   31    OBJECTIVE VALUE:  -1996.75226242473        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:      917
 NPARAMETR:  1.0294E+00  3.3838E-01  2.0728E-01  1.1144E+00  2.6539E-01  1.0516E+00  1.7072E+00  1.5096E+00  1.0713E+00  2.5439E-01
             1.8105E+00
 PARAMETER:  1.2893E-01 -9.8358E-01 -1.4737E+00  2.0835E-01 -1.2265E+00  1.5031E-01  6.3488E-01  5.1185E-01  1.6889E-01 -1.2689E+00
             6.9358E-01
 GRADIENT:   3.6345E-01  4.0773E-01  8.4581E-03  4.0347E-02 -2.2516E+00 -9.0218E-03 -5.0097E-01 -8.3177E-02 -1.5440E-01  2.1992E-02
            -6.0676E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:      917
 NO. OF SIG. DIGITS IN FINAL EST.:  2.4

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         2.4957E-04  1.7077E-02 -1.4352E-02 -6.9428E-03  6.6425E-03
 SE:             2.9668E-02  2.5145E-02  2.5650E-02  2.8078E-02  8.9532E-03
 N:                     100         100         100         100         100

 P VAL.:         9.9329E-01  4.9705E-01  5.7579E-01  8.0470E-01  4.5814E-01

 ETASHRINKSD(%)  6.0730E-01  1.5760E+01  1.4070E+01  5.9352E+00  7.0006E+01
 ETASHRINKVR(%)  1.2109E+00  2.9037E+01  2.6160E+01  1.1518E+01  9.1003E+01
 EBVSHRINKSD(%)  9.2475E-01  1.4242E+01  1.3486E+01  6.6425E+00  7.2071E+01
 EBVSHRINKVR(%)  1.8410E+00  2.6455E+01  2.5153E+01  1.2844E+01  9.2199E+01
 RELATIVEINF(%)  9.8134E+01  3.7274E+01  2.6867E+01  7.5164E+01  1.8550E+00
 EPSSHRINKSD(%)  3.3168E+01
 EPSSHRINKVR(%)  5.5335E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1996.7522624247349     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -894.02602257912781     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.67
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1996.752       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.03E+00  3.38E-01  2.07E-01  1.11E+00  2.65E-01  1.05E+00  1.71E+00  1.51E+00  1.07E+00  2.54E-01  1.81E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.724
Stop Time:
Fri Oct  1 17:58:30 CDT 2021
