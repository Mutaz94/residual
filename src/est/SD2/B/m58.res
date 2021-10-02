Fri Oct  1 08:28:08 CDT 2021
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
$DATA ../../../../data/SD2/B/dat58.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m58.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2041.87589192869        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   5.0605E+02  1.3154E+01  1.7376E+01  4.0501E+01 -5.8455E-01  5.3902E+01 -3.3470E+00  3.5840E+00  2.3273E+01 -1.9110E+01
            -4.1146E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2050.42722475546        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  9.4274E-01  1.1000E+00  9.5398E-01  9.6928E-01  1.0143E+00  9.2317E-01  1.0951E+00  9.2860E-01  8.2218E-01  1.1983E+00
             1.0364E+00
 PARAMETER:  4.1037E-02  1.9528E-01  5.2890E-02  6.8800E-02  1.1420E-01  2.0056E-02  1.9082E-01  2.5922E-02 -9.5799E-02  2.8088E-01
             1.3574E-01
 GRADIENT:  -1.1597E+01  2.2418E+01  1.1568E+01  1.7454E+01 -4.1538E+01 -1.7835E+01 -1.3369E+01  6.2416E+00 -2.7661E+00  7.7096E+00
            -7.9301E+00

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2052.99335817637        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      351
 NPARAMETR:  9.3928E-01  1.0382E+00  1.1201E+00  1.0090E+00  1.1529E+00  9.6373E-01  1.3330E+00  6.4730E-01  6.7662E-01  1.4232E+00
             1.0359E+00
 PARAMETER:  3.7359E-02  1.3744E-01  2.1344E-01  1.0896E-01  2.4231E-01  6.3060E-02  3.8746E-01 -3.3494E-01 -2.9064E-01  4.5289E-01
             1.3528E-01
 GRADIENT:  -1.3831E+01  2.0524E+01  8.5254E+00  2.1737E+01  5.7882E-01  4.3584E-01 -5.1166E+00 -2.5420E+00 -8.3273E+00  4.2679E+00
            -1.2784E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2054.76987894039        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.4552E-01  9.3460E-01  9.6372E-01  1.0531E+00  9.9655E-01  9.6176E-01  1.3919E+00  4.4804E-01  7.4969E-01  1.1960E+00
             1.0510E+00
 PARAMETER:  4.3977E-02  3.2360E-02  6.3041E-02  1.5171E-01  9.6544E-02  6.1010E-02  4.3069E-01 -7.0288E-01 -1.8810E-01  2.7897E-01
             1.4979E-01
 GRADIENT:   2.8381E-01  1.5440E+00 -1.0703E+00  4.2545E+00 -8.9257E-02 -4.6230E-01 -2.0866E-01  1.1439E-01  1.1909E+00  7.9893E-01
             8.5654E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2054.80895150369        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      705
 NPARAMETR:  9.4419E-01  8.4761E-01  1.0409E+00  1.1095E+00  9.9942E-01  9.6152E-01  1.5275E+00  5.1986E-01  7.0410E-01  1.2177E+00
             1.0518E+00
 PARAMETER:  4.2572E-02 -6.5330E-02  1.4007E-01  2.0395E-01  9.9419E-02  6.0764E-02  5.2366E-01 -5.5419E-01 -2.5083E-01  2.9698E-01
             1.5053E-01
 GRADIENT:  -3.3354E-03  3.8812E+00  2.0683E+00  6.1122E+00 -1.8593E+00 -6.6760E-02 -1.6136E-01 -6.3593E-01  4.3228E-03 -1.4427E-01
            -4.7444E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2054.82548575662        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  9.4295E-01  7.7424E-01  1.1230E+00  1.1625E+00  1.0068E+00  9.6165E-01  1.6603E+00  6.2778E-01  6.6944E-01  1.2407E+00
             1.0522E+00
 PARAMETER:  4.1263E-02 -1.5588E-01  2.1603E-01  2.5057E-01  1.0681E-01  6.0899E-02  6.0698E-01 -3.6557E-01 -3.0131E-01  3.1567E-01
             1.5093E-01
 GRADIENT:  -3.0543E-01  9.2398E+00  3.9343E+00  1.7279E+01 -4.9849E+00  4.2989E-01 -3.7501E-01 -1.1872E+00 -7.9532E-01 -1.0990E-01
            -1.2204E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2055.25112406020        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1062
 NPARAMETR:  9.4006E-01  5.6521E-01  1.3948E+00  1.2886E+00  1.0577E+00  9.5613E-01  2.1451E+00  1.0117E+00  5.8809E-01  1.2975E+00
             1.0537E+00
 PARAMETER:  3.8184E-02 -4.7057E-01  4.3274E-01  3.5353E-01  1.5607E-01  5.5141E-02  8.6318E-01  1.1161E-01 -4.3088E-01  3.6042E-01
             1.5234E-01
 GRADIENT:  -6.5263E-02  2.6261E+00 -7.3130E-01  4.2550E+00  1.6320E-01 -6.2203E-01 -7.8398E-02  1.0507E+00 -1.7071E+00 -1.1401E+00
             4.3046E-02

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2055.32462545187        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1238
 NPARAMETR:  9.3893E-01  4.8464E-01  1.4599E+00  1.3397E+00  1.0546E+00  9.5693E-01  2.3570E+00  1.0242E+00  5.9307E-01  1.3191E+00
             1.0540E+00
 PARAMETER:  3.6988E-02 -6.2434E-01  4.7836E-01  3.9244E-01  1.5319E-01  5.5974E-02  9.5737E-01  1.2391E-01 -4.2245E-01  3.7698E-01
             1.5263E-01
 GRADIENT:  -8.0465E-02  1.8951E+00  1.0184E+00  5.2859E+00 -1.0903E+00  1.0898E-01 -4.0434E-02 -3.2256E-01  1.3961E-01  2.8550E-01
            -3.5889E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2055.34151675824        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1421
 NPARAMETR:  9.3929E-01  4.7399E-01  1.4650E+00  1.3429E+00  1.0545E+00  9.5694E-01  2.4017E+00  1.0340E+00  5.8790E-01  1.3168E+00
             1.0542E+00
 PARAMETER:  3.7374E-02 -6.4657E-01  4.8186E-01  3.9480E-01  1.5310E-01  5.5981E-02  9.7617E-01  1.3345E-01 -4.3119E-01  3.7522E-01
             1.5279E-01
 GRADIENT:   1.1761E+00  5.0002E-01  6.6107E-01 -1.9138E+00 -2.0284E-01  1.7450E-01  5.2736E-01 -1.5024E-01  4.4437E-03 -4.6734E-02
            -1.6068E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2055.34288632829        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     1600
 NPARAMETR:  9.3930E-01  4.7372E-01  1.4633E+00  1.3422E+00  1.0540E+00  9.5693E-01  2.4055E+00  1.0345E+00  5.8774E-01  1.3164E+00
             1.0542E+00
 PARAMETER:  3.7384E-02 -6.4715E-01  4.8069E-01  3.9434E-01  1.5256E-01  5.5972E-02  9.7775E-01  1.3392E-01 -4.3147E-01  3.7494E-01
             1.5282E-01
 GRADIENT:   1.2069E+00  2.2933E-01  5.2120E-01 -3.7069E+00 -1.6887E-01  1.7251E-01  7.4361E-01 -4.5752E-02  1.3252E-01  2.1059E-02
            -5.4847E-02

0ITERATION NO.:   46    OBJECTIVE VALUE:  -2055.34288632829        NO. OF FUNC. EVALS.:  22
 CUMULATIVE NO. OF FUNC. EVALS.:     1622
 NPARAMETR:  9.3930E-01  4.7372E-01  1.4633E+00  1.3422E+00  1.0540E+00  9.5693E-01  2.4055E+00  1.0345E+00  5.8774E-01  1.3164E+00
             1.0542E+00
 PARAMETER:  3.7384E-02 -6.4715E-01  4.8069E-01  3.9434E-01  1.5256E-01  5.5972E-02  9.7775E-01  1.3392E-01 -4.3147E-01  3.7494E-01
             1.5282E-01
 GRADIENT:   1.2069E+00  2.2933E-01  5.2120E-01 -3.7069E+00 -1.6887E-01  1.7251E-01  7.4361E-01 -4.5752E-02  1.3252E-01  2.1059E-02
            -5.4847E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1622
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.6592E-03  2.8877E-02 -3.6033E-02 -3.5558E-02 -2.9199E-02
 SE:             2.9884E-02  2.1132E-02  1.4555E-02  2.0782E-02  2.1994E-02
 N:                     100         100         100         100         100

 P VAL.:         9.5572E-01  1.7178E-01  1.3297E-02  8.7086E-02  1.8432E-01

 ETASHRINKSD(%)  1.0000E-10  2.9204E+01  5.1240E+01  3.0377E+01  2.6317E+01
 ETASHRINKVR(%)  1.0000E-10  4.9879E+01  7.6225E+01  5.1527E+01  4.5708E+01
 EBVSHRINKSD(%)  4.1363E-01  3.0974E+01  5.7632E+01  2.7495E+01  2.0759E+01
 EBVSHRINKVR(%)  8.2554E-01  5.2354E+01  8.2050E+01  4.7430E+01  3.7209E+01
 RELATIVEINF(%)  9.8778E+01  7.0882E+00  4.6957E+00  7.4040E+00  1.9285E+01
 EPSSHRINKSD(%)  3.3192E+01
 EPSSHRINKVR(%)  5.5367E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2055.3428863282902     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1136.4043531236175     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    26.60
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2055.343       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.39E-01  4.74E-01  1.46E+00  1.34E+00  1.05E+00  9.57E-01  2.41E+00  1.03E+00  5.88E-01  1.32E+00  1.05E+00
 


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
 #CPUT: Total CPU Time in Seconds,       26.640
Stop Time:
Fri Oct  1 08:28:36 CDT 2021