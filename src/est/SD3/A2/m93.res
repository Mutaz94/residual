Fri Oct  1 18:01:09 CDT 2021
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
$DATA ../../../../data/SD3/A2/dat93.csv ignore=@
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
 RAW OUTPUT FILE (FILE): m93.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:  -1516.96428930825        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   4.5518E+02  5.4431E+01  1.0480E+02  5.3689E+01  1.6194E+02  4.4984E+01 -3.9933E+01 -1.0132E+02 -8.2781E+00 -7.5514E+01
            -1.6246E+03

0ITERATION NO.:    5    OBJECTIVE VALUE:  -2007.02937669071        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:       86
 NPARAMETR:  1.0328E+00  9.8351E-01  8.0568E-01  1.0410E+00  8.2505E-01  1.0098E+00  1.0314E+00  1.0537E+00  9.1063E-01  9.9326E-01
             1.9713E+00
 PARAMETER:  1.3232E-01  8.3377E-02 -1.1607E-01  1.4015E-01 -9.2314E-02  1.0980E-01  1.3094E-01  1.5234E-01  6.3844E-03  9.3236E-02
             7.7870E-01
 GRADIENT:   2.4004E+02  5.3333E+01  2.4569E+01  4.2182E+01 -1.5325E+01  2.2755E+01 -2.6100E+00  8.5017E-01 -3.2485E-01  6.6468E+00
            -4.9766E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -2012.43887545914        NO. OF FUNC. EVALS.:  97
 CUMULATIVE NO. OF FUNC. EVALS.:      183
 NPARAMETR:  1.0294E+00  7.4722E-01  5.7250E-01  1.1869E+00  6.0066E-01  1.0351E+00  1.1301E+00  8.3073E-01  9.8070E-01  7.3408E-01
             1.9261E+00
 PARAMETER:  1.2895E-01 -1.9139E-01 -4.5774E-01  2.7131E-01 -4.0973E-01  1.3451E-01  2.2232E-01 -8.5452E-02  8.0509E-02 -2.0914E-01
             7.5547E-01
 GRADIENT:   9.3252E+01  5.1705E+01 -5.4709E+00  1.0258E+02  4.2909E+00  2.1430E+01 -6.2658E+00  8.8456E+00  1.9390E+01 -3.0034E+00
            -7.4230E+01

0ITERATION NO.:   15    OBJECTIVE VALUE:  -2019.59504524438        NO. OF FUNC. EVALS.: 178
 CUMULATIVE NO. OF FUNC. EVALS.:      361
 NPARAMETR:  9.9158E-01  6.7139E-01  5.4317E-01  1.2244E+00  5.6842E-01  1.0160E+00  1.2745E+00  6.1623E-01  9.6255E-01  6.3617E-01
             1.9800E+00
 PARAMETER:  9.1545E-02 -2.9840E-01 -5.1033E-01  3.0246E-01 -4.6489E-01  1.1589E-01  3.4252E-01 -3.8413E-01  6.1827E-02 -3.5229E-01
             7.8308E-01
 GRADIENT:   1.5849E+01  1.5779E+01 -2.4455E+01  1.3026E+02  6.9122E+01  1.9396E+01 -1.7819E+00  5.2973E+00  1.7775E+01 -1.0713E+01
            -4.3374E+01

0ITERATION NO.:   20    OBJECTIVE VALUE:  -2041.13720116749        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      540
 NPARAMETR:  9.7819E-01  4.3354E-01  3.2052E-01  1.1805E+00  3.4452E-01  9.4072E-01  1.4663E+00  1.7230E-01  8.9117E-01  5.1860E-01
             2.0123E+00
 PARAMETER:  7.7947E-02 -7.3577E-01 -1.0378E+00  2.6591E-01 -9.6562E-01  3.8893E-02  4.8274E-01 -1.6585E+00 -1.5215E-02 -5.5662E-01
             7.9930E-01
 GRADIENT:  -1.5779E+01  2.6151E+01  2.5957E+01  4.3665E+01 -5.7293E+01 -1.0013E+01 -1.6696E+00  5.5768E-01 -6.2681E+00 -1.6082E+00
             6.5020E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -2042.66771584884        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:      715
 NPARAMETR:  9.8398E-01  4.0520E-01  3.0049E-01  1.1506E+00  3.3128E-01  9.6557E-01  1.5055E+00  1.3605E-01  9.2017E-01  5.1263E-01
             1.9901E+00
 PARAMETER:  8.3848E-02 -8.0337E-01 -1.1023E+00  2.4026E-01 -1.0048E+00  6.4966E-02  5.0916E-01 -1.8947E+00  1.6803E-02 -5.6820E-01
             7.8816E-01
 GRADIENT:   8.9423E-01 -3.7848E-01 -1.1889E+00 -2.4202E+00  1.0889E+00 -3.1702E-02  9.9697E-02  3.3131E-01  6.3813E-01  4.1639E-01
             2.0157E+00

0ITERATION NO.:   30    OBJECTIVE VALUE:  -2042.81739278491        NO. OF FUNC. EVALS.: 177
 CUMULATIVE NO. OF FUNC. EVALS.:      892
 NPARAMETR:  9.8381E-01  4.0959E-01  3.0533E-01  1.1541E+00  3.3551E-01  9.6547E-01  1.5029E+00  2.4088E-02  9.1500E-01  5.1670E-01
             1.9904E+00
 PARAMETER:  8.3679E-02 -7.9259E-01 -1.0864E+00  2.4332E-01 -9.9210E-01  6.4858E-02  5.0738E-01 -3.6260E+00  1.1165E-02 -5.6030E-01
             7.8834E-01
 GRADIENT:   5.0475E-01 -5.0056E-01 -2.7559E-01  1.7563E-01  1.1150E+00  6.0330E-02 -6.4413E-02  1.0376E-02 -4.0616E-02 -1.0966E-01
            -1.1332E-01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -2042.82571646170        NO. OF FUNC. EVALS.: 163
 CUMULATIVE NO. OF FUNC. EVALS.:     1055
 NPARAMETR:  9.8356E-01  4.0888E-01  3.0427E-01  1.1535E+00  3.3453E-01  9.6535E-01  1.5023E+00  1.0000E-02  9.1565E-01  5.1729E-01
             1.9903E+00
 PARAMETER:  8.3425E-02 -7.9434E-01 -1.0898E+00  2.4281E-01 -9.9504E-01  6.4731E-02  5.0698E-01 -4.5343E+00  1.1883E-02 -5.5915E-01
             7.8831E-01
 GRADIENT:  -9.3598E-02  6.4842E-02 -1.0293E-02 -4.6675E-02 -1.2410E-01 -9.7185E-03 -2.4871E-02  4.1905E-04 -2.9367E-02  2.4994E-02
             5.0981E-02

 #TERM:
0MINIMIZATION SUCCESSFUL
 NO. OF FUNCTION EVALUATIONS USED:     1055
 NO. OF SIG. DIGITS IN FINAL EST.:  2.5
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         5.8269E-04  1.4914E-02 -2.7151E-04 -8.2742E-03  1.1228E-02
 SE:             2.9534E-02  2.2899E-02  2.5665E-04  2.7830E-02  1.9888E-02
 N:                     100         100         100         100         100

 P VAL.:         9.8426E-01  5.1485E-01  2.9010E-01  7.6623E-01  5.7237E-01

 ETASHRINKSD(%)  1.0567E+00  2.3286E+01  9.9140E+01  6.7647E+00  3.3374E+01
 ETASHRINKVR(%)  2.1022E+00  4.1149E+01  9.9993E+01  1.3072E+01  5.5609E+01
 EBVSHRINKSD(%)  1.2514E+00  2.1681E+01  9.9107E+01  6.6064E+00  3.3893E+01
 EBVSHRINKVR(%)  2.4872E+00  3.8662E+01  9.9992E+01  1.2776E+01  5.6299E+01
 RELATIVEINF(%)  9.7457E+01  1.3227E+01  5.4251E-04  7.0229E+01  1.9941E+00
 EPSSHRINKSD(%)  2.6925E+01
 EPSSHRINKVR(%)  4.6600E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -2042.8257164616962     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:      -940.09947661608908     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    18.06
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************    -2042.826       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         9.84E-01  4.09E-01  3.04E-01  1.15E+00  3.35E-01  9.65E-01  1.50E+00  1.00E-02  9.16E-01  5.17E-01  1.99E+00
 


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
 #CPUT: Total CPU Time in Seconds,       18.116
Stop Time:
Fri Oct  1 18:01:29 CDT 2021