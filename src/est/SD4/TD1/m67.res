Sat Oct  2 04:35:57 CDT 2021
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
$DATA ../../../../data/SD4/TD1/dat67.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m67.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1653.80218684747        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.1296E+02 -9.0179E+01 -3.1784E+01 -7.6144E+01  5.1616E+01  4.0594E+01 -1.4601E+01  6.5562E+00 -1.3187E+00  4.3719E+00
             1.6786E+00

0ITERATION NO.:    5    OBJECTIVE VALUE:  -1664.72772374839        NO. OF FUNC. EVALS.: 161
 CUMULATIVE NO. OF FUNC. EVALS.:      174
 NPARAMETR:  1.0048E+00  1.1022E+00  1.0771E+00  1.0459E+00  1.0426E+00  1.0514E+00  1.0852E+00  9.7216E-01  9.8384E-01  9.7328E-01
             1.0085E+00
 PARAMETER:  1.0480E-01  1.9727E-01  1.7430E-01  1.4492E-01  1.4169E-01  1.5015E-01  1.8175E-01  7.1760E-02  8.3712E-02  7.2913E-02
             1.0848E-01
 GRADIENT:   1.5918E+01 -7.6675E+00 -5.5328E+00  3.3928E+00  1.5638E+01  7.4800E+00 -7.2125E+00 -5.0740E-01  1.5814E+00 -6.6727E+00
            -6.8456E-01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -1665.33334850736        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      353
 NPARAMETR:  9.9977E-01  1.0833E+00  1.1212E+00  1.0586E+00  1.0542E+00  1.0363E+00  1.2286E+00  9.5465E-01  9.1888E-01  1.0300E+00
             1.0259E+00
 PARAMETER:  9.9766E-02  1.8005E-01  2.1437E-01  1.5693E-01  1.5276E-01  1.3568E-01  3.0589E-01  5.3587E-02  1.5403E-02  1.2953E-01
             1.2557E-01
 GRADIENT:   6.4801E+00 -2.8483E-01  3.6866E-01 -2.3855E+00  5.0631E+00  2.1761E+00  4.6572E-01 -8.6279E-01 -1.5819E+00 -5.4645E-01
             6.9933E+00

0ITERATION NO.:   15    OBJECTIVE VALUE:  -1665.57945914031        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      528
 NPARAMETR:  9.9414E-01  9.0349E-01  1.2206E+00  1.1814E+00  1.0093E+00  1.0278E+00  1.3578E+00  1.0116E+00  8.7962E-01  1.0159E+00
             1.0023E+00
 PARAMETER:  9.4125E-02 -1.4924E-03  2.9934E-01  2.6673E-01  1.0926E-01  1.2745E-01  4.0586E-01  1.1155E-01 -2.8266E-02  1.1575E-01
             1.0231E-01
 GRADIENT:  -1.6880E+00  5.7127E+00  2.1675E+00  6.5813E+00 -3.9050E+00 -4.7047E-01 -2.5659E-01 -4.2614E-01 -3.1144E-01 -1.8627E-01
            -1.7137E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -1665.63472610972        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      706
 NPARAMETR:  9.9287E-01  7.5584E-01  1.3299E+00  1.2772E+00  9.9701E-01  1.0260E+00  1.5064E+00  1.0861E+00  8.5058E-01  1.0237E+00
             1.0008E+00
 PARAMETER:  9.2842E-02 -1.7992E-01  3.8511E-01  3.4465E-01  9.7005E-02  1.2563E-01  5.0973E-01  1.8258E-01 -6.1832E-02  1.2346E-01
             1.0077E-01
 GRADIENT:  -8.0484E-01  4.2552E+00  1.3432E+00  5.4727E+00 -4.1224E+00 -4.8784E-01  2.7582E-01  7.3206E-02  5.6181E-01  1.8464E-01
            -2.0961E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -1665.64358649840        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      881
 NPARAMETR:  9.9182E-01  6.5612E-01  1.4257E+00  1.3447E+00  9.9775E-01  1.0252E+00  1.6205E+00  1.1536E+00  8.3163E-01  1.0355E+00
             1.0035E+00
 PARAMETER:  9.1787E-02 -3.2141E-01  4.5463E-01  3.9617E-01  9.7745E-02  1.2490E-01  5.8276E-01  2.4286E-01 -8.4370E-02  1.3487E-01
             1.0349E-01
 GRADIENT:  -3.0034E-01  4.7390E+00  1.5689E+00  7.1459E+00 -4.2843E+00 -2.5208E-01  4.5821E-01  2.6317E-02  1.1223E-01  2.5991E-01
            -1.2226E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -1665.66844432662        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1063             RESET HESSIAN, TYPE I
 NPARAMETR:  9.9150E-01  5.7320E-01  1.4999E+00  1.3858E+00  1.0055E+00  1.0253E+00  1.6787E+00  1.2148E+00  8.2227E-01  1.0430E+00
             1.0067E+00
 PARAMETER:  9.1461E-02 -4.5653E-01  5.0538E-01  4.2628E-01  1.0550E-01  1.2498E-01  6.1801E-01  2.9455E-01 -9.5682E-02  1.4209E-01
             1.0665E-01
 GRADIENT:   3.9888E+02  4.4569E+01  5.5925E+00  4.8880E+02  1.1734E+01  6.4556E+01  1.3357E+01  1.2161E+00  8.9549E+00  4.9092E-01
             8.9856E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -1665.70881361414        NO. OF FUNC. EVALS.: 169
 CUMULATIVE NO. OF FUNC. EVALS.:     1232
 NPARAMETR:  9.9162E-01  5.7621E-01  1.5035E+00  1.3898E+00  1.0033E+00  1.0254E+00  1.6806E+00  1.2117E+00  8.2493E-01  1.0461E+00
             1.0070E+00
 PARAMETER:  9.1585E-02 -4.5128E-01  5.0781E-01  4.2914E-01  1.0328E-01  1.2513E-01  6.1914E-01  2.9204E-01 -9.2458E-02  1.4509E-01
             1.0697E-01
 GRADIENT:   1.5608E+00 -1.2635E-01 -2.2676E-01 -7.2553E+00  4.4958E-01  2.7588E-01  1.6286E-01  9.9840E-02  1.0141E-01  5.4453E-02
             8.6271E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1232
 NO. OF SIG. DIGITS IN FINAL EST.:  2.0

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.8420E-04  2.8894E-03 -3.5828E-02 -6.9699E-03 -3.8568E-02
 SE:             2.9847E-02  1.5270E-02  1.6461E-02  2.5680E-02  2.0998E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8973E-01  8.4992E-01  2.9514E-02  7.8607E-01  6.6245E-02

 ETASHRINKSD(%)  9.4592E-03  4.8844E+01  4.4853E+01  1.3970E+01  2.9654E+01
 ETASHRINKVR(%)  1.8918E-02  7.3830E+01  6.9588E+01  2.5988E+01  5.0514E+01
 EBVSHRINKSD(%)  4.1081E-01  5.0439E+01  4.9156E+01  1.3553E+01  2.6285E+01
 EBVSHRINKVR(%)  8.1992E-01  7.5437E+01  7.4149E+01  2.5270E+01  4.5661E+01
 RELATIVEINF(%)  9.7149E+01  7.0550E-01  5.3138E+00  2.4504E+00  8.3958E+00
 EPSSHRINKSD(%)  4.4995E+01
 EPSSHRINKVR(%)  6.9745E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          400
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    735.15082656373818     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -1665.7088136141440     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -930.55798705040581     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    16.45
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -1665.709       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.92E-01  5.76E-01  1.50E+00  1.39E+00  1.00E+00  1.03E+00  1.68E+00  1.21E+00  8.25E-01  1.05E+00  1.01E+00
 


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
 #CPUT: Total CPU Time in Seconds,       16.491
Stop Time:
Sat Oct  2 04:36:15 CDT 2021