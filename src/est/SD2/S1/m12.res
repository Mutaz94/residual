Fri Oct  1 10:56:01 CDT 2021
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
$DATA ../../../../data/SD2/S1/dat12.csv ignore=@
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2108.20677606028        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.3196E+02 -2.5742E+01 -3.2097E+01  2.6058E+01  2.6854E+01  5.4041E+01 -9.9243E+00  1.1622E+01  3.8716E+00  4.6926E+00
            -1.4731E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2113.44125672613        NO. OF FUNC. EVALS.: 166
 CUMULATIVE NO. OF FUNC. EVALS.:      179
 NPARAMETR:  9.9670E-01  1.1019E+00  1.1284E+00  9.9568E-01  1.0884E+00  1.0082E+00  1.0820E+00  9.3557E-01  1.0076E+00  9.7901E-01
             1.0424E+00
 PARAMETER:  9.6698E-02  1.9703E-01  2.2077E-01  9.5673E-02  1.8474E-01  1.0813E-01  1.7882E-01  3.3396E-02  1.0760E-01  7.8787E-02
             1.4150E-01
 GRADIENT:  -4.3330E+00  2.6296E+00 -4.4904E+00  1.7189E+01  1.3473E+01  1.6437E+00 -6.1619E+00  1.0247E+00  2.8537E-02 -1.0715E+01
             1.3173E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2113.99540606428        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      358
 NPARAMETR:  9.9338E-01  1.1267E+00  1.1606E+00  9.7806E-01  1.1151E+00  9.9757E-01  1.1598E+00  8.8130E-01  1.0003E+00  1.0952E+00
             1.0282E+00
 PARAMETER:  9.3361E-02  2.1927E-01  2.4898E-01  7.7814E-02  2.0898E-01  9.7570E-02  2.4826E-01 -2.6362E-02  1.0030E-01  1.9093E-01
             1.2785E-01
 GRADIENT:  -1.1044E+01  8.3410E+00  3.4291E+00  6.0056E+00 -5.6375E-01 -2.4871E+00  3.1426E+00 -1.1811E+00 -1.7614E-01  3.3087E+00
             4.0410E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2114.31344147573        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      534
 NPARAMETR:  9.9906E-01  1.1408E+00  1.0420E+00  9.5930E-01  1.0677E+00  1.0043E+00  1.1279E+00  7.6438E-01  1.0104E+00  1.0265E+00
             1.0230E+00
 PARAMETER:  9.9059E-02  2.3177E-01  1.4110E-01  5.8453E-02  1.6555E-01  1.0426E-01  2.2040E-01 -1.6869E-01  1.1035E-01  1.2615E-01
             1.2273E-01
 GRADIENT:   3.6682E-01  2.1882E+00  2.2744E-01  2.8057E+00 -1.4644E+00 -3.9392E-02 -6.3144E-02  9.2571E-02  7.0118E-02  6.4709E-02
            -1.7599E-01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2114.34415983480        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      710
 NPARAMETR:  9.9980E-01  1.2894E+00  9.6241E-01  8.6451E-01  1.1090E+00  1.0056E+00  1.0208E+00  7.1632E-01  1.0955E+00  1.0476E+00
             1.0236E+00
 PARAMETER:  9.9803E-02  3.5415E-01  6.1684E-02 -4.5598E-02  2.0344E-01  1.0555E-01  1.2061E-01 -2.3362E-01  1.9121E-01  1.4649E-01
             1.2336E-01
 GRADIENT:  -3.0511E-01  3.1041E+00  4.1690E-02  3.5111E+00 -6.2925E-01  1.0599E-02 -6.2344E-02 -5.6508E-02 -2.6458E-01 -7.3851E-02
            -8.3391E-02

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2114.34666645781        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      885
 NPARAMETR:  1.0002E+00  1.3552E+00  9.3306E-01  8.2260E-01  1.1315E+00  1.0060E+00  9.7907E-01  7.0613E-01  1.1395E+00  1.0608E+00
             1.0239E+00
 PARAMETER:  1.0022E-01  4.0397E-01  3.0712E-02 -9.5281E-02  2.2358E-01  1.0599E-01  7.8847E-02 -2.4796E-01  2.3060E-01  1.5901E-01
             1.2366E-01
 GRADIENT:  -2.0088E-01  3.8817E+00  4.3652E-01  3.7037E+00 -7.7711E-01  2.2157E-02 -1.8091E-01 -1.6175E-01 -4.2942E-01 -1.9112E-01
            -1.7156E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2114.34688208347        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:     1063
 NPARAMETR:  1.0004E+00  1.3852E+00  9.1970E-01  8.0315E-01  1.1424E+00  1.0062E+00  9.6145E-01  7.0338E-01  1.1613E+00  1.0673E+00
             1.0241E+00
 PARAMETER:  1.0039E-01  4.2586E-01  1.6288E-02 -1.1921E-01  2.3317E-01  1.0617E-01  6.0691E-02 -2.5185E-01  2.4955E-01  1.6516E-01
             1.2383E-01
 GRADIENT:  -1.5270E-01  3.7871E+00  5.2960E-01  3.4540E+00 -7.4537E-01  2.4350E-02 -2.0282E-01 -1.8726E-01 -4.4803E-01 -2.1539E-01
            -1.8633E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2114.34693863593        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1243
 NPARAMETR:  1.0004E+00  1.3944E+00  9.1561E-01  7.9715E-01  1.1459E+00  1.0062E+00  9.5624E-01  7.0324E-01  1.1682E+00  1.0694E+00
             1.0242E+00
 PARAMETER:  1.0044E-01  4.3246E-01  1.1838E-02 -1.2671E-01  2.3617E-01  1.0623E-01  5.5254E-02 -2.5206E-01  2.5550E-01  1.6709E-01
             1.2388E-01
 GRADIENT:  -1.4360E-01  3.6825E+00  5.2715E-01  3.3432E+00 -7.2250E-01  2.4441E-02 -1.9970E-01 -1.8626E-01 -4.3912E-01 -2.1294E-01
            -1.8337E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -2114.35710357763        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1424
 NPARAMETR:  1.0003E+00  1.3939E+00  9.1517E-01  7.9441E-01  1.1467E+00  1.0061E+00  9.5599E-01  7.1529E-01  1.1716E+00  1.0698E+00
             1.0242E+00
 PARAMETER:  1.0033E-01  4.3207E-01  1.1351E-02 -1.3015E-01  2.3691E-01  1.0605E-01  5.4993E-02 -2.3506E-01  2.5841E-01  1.6747E-01
             1.2387E-01
 GRADIENT:  -3.6745E-01 -5.4165E-01 -7.4023E-02  3.0866E-01 -3.8966E-01 -4.6267E-02  2.7630E-02  1.4388E-02 -2.7913E-02 -1.5727E-02
             8.1527E-03

0ITERATION NO.:   45    OBJECTIVE VALUE:  -2114.35832832890        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:     1601            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0012E+00  1.3942E+00  9.1525E-01  7.9366E-01  1.1477E+00  1.0068E+00  9.5524E-01  7.1567E-01  1.1731E+00  1.0707E+00
             1.0242E+00
 PARAMETER:  1.0124E-01  4.3230E-01  1.1438E-02 -1.3109E-01  2.3775E-01  1.0676E-01  5.4207E-02 -2.3453E-01  2.5964E-01  1.6830E-01
             1.2390E-01
 GRADIENT:   4.2004E+02  2.9121E+02  7.3515E-01  6.1480E+01  1.3876E+01  5.8757E+01  5.0047E+00  1.3121E-01  1.3896E+01  1.3978E+00
             1.2874E+00

0ITERATION NO.:   47    OBJECTIVE VALUE:  -2114.35832832890        NO. OF FUNC. EVALS.:  58
 CUMULATIVE NO. OF FUNC. EVALS.:     1659
 NPARAMETR:  1.0012E+00  1.3942E+00  9.1525E-01  7.9366E-01  1.1477E+00  1.0068E+00  9.5524E-01  7.1567E-01  1.1731E+00  1.0707E+00
             1.0242E+00
 PARAMETER:  1.0124E-01  4.3230E-01  1.1438E-02 -1.3109E-01  2.3775E-01  1.0676E-01  5.4207E-02 -2.3453E-01  2.5964E-01  1.6830E-01
             1.2390E-01
 GRADIENT:   1.6420E+00 -1.5053E+00 -2.6407E-01 -1.1839E-01  1.1636E-01  2.3924E-01  2.9601E-02  2.0338E-02  7.8765E-02  1.7042E-02
             4.8455E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1659
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         4.0158E-04 -2.1432E-02 -2.1756E-02  1.5296E-02 -3.3732E-02
 SE:             2.9875E-02  2.1339E-02  8.7938E-03  2.3685E-02  2.2737E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8927E-01  3.1520E-01  1.3359E-02  5.1838E-01  1.3793E-01

 ETASHRINKSD(%)  1.0000E-10  2.8511E+01  7.0540E+01  2.0653E+01  2.3827E+01
 ETASHRINKVR(%)  1.0000E-10  4.8893E+01  9.1321E+01  3.7041E+01  4.1977E+01
 EBVSHRINKSD(%)  3.5334E-01  2.7921E+01  7.4129E+01  2.1946E+01  2.1377E+01
 EBVSHRINKVR(%)  7.0543E-01  4.8047E+01  9.3307E+01  3.9075E+01  3.8184E+01
 RELATIVEINF(%)  9.8996E+01  2.7547E+00  9.7778E-01  3.4388E+00  1.3445E+01
 EPSSHRINKSD(%)  3.3527E+01
 EPSSHRINKVR(%)  5.5813E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2114.3583283288981     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1195.4197951242254     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    25.84
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2114.358       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.00E+00  1.39E+00  9.15E-01  7.94E-01  1.15E+00  1.01E+00  9.55E-01  7.16E-01  1.17E+00  1.07E+00  1.02E+00
 


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
 #CPUT: Total CPU Time in Seconds,       25.875
Stop Time:
Fri Oct  1 10:56:28 CDT 2021
