Fri Oct  1 13:12:52 CDT 2021
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
$DATA ../../../../data/SD2/SL3/dat78.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m78.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -2049.90140869536        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5385E+02 -7.3497E+01 -4.6262E+01 -1.9911E+01  5.4693E+01  3.6584E+01 -2.0396E+01  6.4982E+00 -7.8298E-01 -1.2518E+01
            -8.6009E+01

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2067.86347131580        NO. OF FUNC. EVALS.: 160
 CUMULATIVE NO. OF FUNC. EVALS.:      173
 NPARAMETR:  9.8957E-01  1.1814E+00  1.1799E+00  9.8494E-01  1.1708E+00  9.7265E-01  1.1514E+00  9.5378E-01  1.0045E+00  1.0894E+00
             1.1282E+00
 PARAMETER:  8.9517E-02  2.6667E-01  2.6543E-01  8.4823E-02  2.5768E-01  7.2271E-02  2.4099E-01  5.2673E-02  1.0452E-01  1.8564E-01
             2.2059E-01
 GRADIENT:   2.4272E+01 -1.2713E+01 -2.9220E+01  3.5418E+01  4.4171E+01 -5.3531E+00 -6.5456E+00 -9.4206E-01  7.3904E+00 -1.9702E+01
             1.6072E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2072.31323281758        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      352
 NPARAMETR:  9.8767E-01  1.2938E+00  1.5108E+00  9.2965E-01  1.3460E+00  1.0027E+00  1.1937E+00  1.1872E+00  8.7714E-01  1.2759E+00
             1.1137E+00
 PARAMETER:  8.7595E-02  3.5760E-01  5.1265E-01  2.7053E-02  3.9713E-01  1.0268E-01  2.7707E-01  2.7163E-01 -3.1092E-02  3.4365E-01
             2.0766E-01
 GRADIENT:   1.9479E+01  1.6889E+01 -1.5252E+00  3.2388E+01  2.7872E+01  6.5262E+00 -7.4605E+00 -9.0502E+00 -5.5008E+00 -1.2323E+01
             3.7925E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2076.32480341296        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      529
 NPARAMETR:  9.8169E-01  1.3495E+00  1.7627E+00  8.8376E-01  1.4040E+00  9.8076E-01  1.2543E+00  1.9158E+00  8.7835E-01  1.3898E+00
             1.0980E+00
 PARAMETER:  8.1515E-02  3.9970E-01  6.6687E-01 -2.3574E-02  4.3929E-01  8.0569E-02  3.2660E-01  7.5014E-01 -2.9707E-02  4.2915E-01
             1.9351E-01
 GRADIENT:   6.0964E+00  6.4401E+00 -3.2357E+00  1.0796E+01  2.2188E+00 -1.7557E+00  5.4626E+00 -1.7883E+00  3.6965E+00  7.6225E-01
             2.5240E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2077.13681677047        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.8017E-01  1.4145E+00  2.0099E+00  8.4573E-01  1.4703E+00  9.8541E-01  1.2219E+00  2.4978E+00  8.2466E-01  1.4210E+00
             1.0950E+00
 PARAMETER:  7.9970E-02  4.4677E-01  7.9809E-01 -6.7554E-02  4.8545E-01  8.5299E-02  3.0040E-01  1.0154E+00 -9.2786E-02  4.5138E-01
             1.9075E-01
 GRADIENT:   1.3807E+00  8.7290E+00 -5.0571E+00  1.6595E+01  2.9454E+00 -1.3526E-01  1.9334E+00  2.9858E+00  2.0241E+00 -1.0191E+00
             6.2575E-01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2077.39704506709        NO. OF FUNC. EVALS.: 187
 CUMULATIVE NO. OF FUNC. EVALS.:      893
 NPARAMETR:  9.7543E-01  1.4184E+00  2.0135E+00  8.2411E-01  1.4716E+00  9.8431E-01  1.2478E+00  2.4925E+00  7.3645E-01  1.4198E+00
             1.0954E+00
 PARAMETER:  7.5120E-02  4.4951E-01  7.9988E-01 -9.3455E-02  4.8636E-01  8.4182E-02  3.2141E-01  1.0133E+00 -2.0592E-01  4.5051E-01
             1.9112E-01
 GRADIENT:  -9.7298E+00 -6.2377E+00 -8.7303E-01 -2.9442E+00  5.6840E-01 -5.7599E-01  2.4726E+00 -4.7369E-01  8.2302E-01 -2.1486E+00
             8.2339E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2077.46916323836        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:     1069
 NPARAMETR:  9.7892E-01  1.4343E+00  2.0086E+00  8.1815E-01  1.4693E+00  9.8413E-01  1.2301E+00  2.5011E+00  7.1641E-01  1.4220E+00
             1.0947E+00
 PARAMETER:  7.8697E-02  4.6066E-01  7.9745E-01 -1.0072E-01  4.8477E-01  8.4004E-02  3.0710E-01  1.0167E+00 -2.3350E-01  4.5204E-01
             1.9050E-01
 GRADIENT:  -1.8453E+00 -5.8347E-01 -1.7897E-01  2.8505E+00 -2.3389E+00 -6.2212E-01 -1.0344E+00 -9.9964E-01 -5.0317E-01 -1.6913E+00
            -2.5226E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2077.49633549030        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1251
 NPARAMETR:  9.8012E-01  1.4458E+00  2.0055E+00  8.1002E-01  1.4697E+00  9.8579E-01  1.2204E+00  2.5005E+00  7.3657E-01  1.4233E+00
             1.0948E+00
 PARAMETER:  7.9917E-02  4.6869E-01  7.9592E-01 -1.1070E-01  4.8506E-01  8.5683E-02  2.9917E-01  1.0165E+00 -2.0575E-01  4.5299E-01
             1.9059E-01
 GRADIENT:   8.1344E-01 -1.7154E+00  8.5486E-01  1.6358E-01 -3.4531E+00  2.6465E-02 -7.3495E-02 -1.7112E+00 -8.1630E-02 -1.3307E+00
             1.0385E-01

0ITERATION NO.:   37    OBJECTIVE VALUE:  -2077.49645552677        NO. OF FUNC. EVALS.:  59
 CUMULATIVE NO. OF FUNC. EVALS.:     1310
 NPARAMETR:  9.7992E-01  1.4458E+00  2.0055E+00  8.1002E-01  1.4697E+00  9.8588E-01  1.2198E+00  2.5006E+00  7.3961E-01  1.4233E+00
             1.0948E+00
 PARAMETER:  7.9720E-02  4.6868E-01  7.9592E-01 -1.1070E-01  4.8507E-01  8.5775E-02  2.9871E-01  1.0165E+00 -2.0164E-01  4.5299E-01
             1.9059E-01
 GRADIENT:  -9.4935E-01 -5.9983E+03  3.2604E+03  8.5006E-02 -2.8972E+03 -2.6608E-03 -5.7911E-02  2.1668E+02 -2.2942E-02  6.1981E+03
            -1.4735E+04

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1310
 NO. OF SIG. DIGITS IN FINAL EST.:  2.3

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.3304E-03  4.4097E-04 -4.5433E-02 -9.7476E-03 -4.5134E-02
 SE:             2.9827E-02  2.5984E-02  1.4360E-02  1.4986E-02  2.2273E-02
 N:                     100         100         100         100         100

 P VAL.:         9.6442E-01  9.8646E-01  1.5567E-03  5.1539E-01  4.2726E-02

 ETASHRINKSD(%)  7.5026E-02  1.2952E+01  5.1893E+01  4.9797E+01  2.5382E+01
 ETASHRINKVR(%)  1.5000E-01  2.4226E+01  7.6857E+01  7.4796E+01  4.4322E+01
 EBVSHRINKSD(%)  4.4840E-01  1.2531E+01  6.2820E+01  5.2650E+01  1.9776E+01
 EBVSHRINKVR(%)  8.9480E-01  2.3491E+01  8.6176E+01  7.7580E+01  3.5642E+01
 RELATIVEINF(%)  9.8941E+01  3.9795E+00  3.4208E+00  1.0474E+00  3.3052E+01
 EPSSHRINKSD(%)  3.3386E+01
 EPSSHRINKVR(%)  5.5626E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          500
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    918.93853320467269     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2077.4964555267702     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -1158.5579223220975     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    21.29
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2077.496       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.80E-01  1.45E+00  2.01E+00  8.10E-01  1.47E+00  9.86E-01  1.22E+00  2.50E+00  7.40E-01  1.42E+00  1.09E+00
 


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
 #CPUT: Total CPU Time in Seconds,       21.331
Stop Time:
Fri Oct  1 13:13:15 CDT 2021