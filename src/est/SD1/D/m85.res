Fri Oct  1 07:28:38 CDT 2021
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
$DATA ../../../../data/SD1/D/dat85.csv ignore=@
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
 NO. OF DATA RECS IN DATA SET:     1000
 NO. OF DATA ITEMS IN DATA SET:   6
 ID DATA ITEM IS DATA ITEM NO.:   1
 DEP VARIABLE IS DATA ITEM NO.:   3
 MDV DATA ITEM IS DATA ITEM NO.:  5
0INDICES PASSED TO SUBROUTINE PRED:
   6   2   4   0   0   0   0   0   0   0   0
0LABELS FOR DATA ITEMS:
 ID TIME DV AMT MDV EVID
0FORMAT FOR DATA:
 (2E4.0,E21.0,E4.0,2E2.0)

 TOT. NO. OF OBS RECS:      900
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
 RAW OUTPUT FILE (FILE): m85.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   42517.1430565513        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   9.2392E+02  6.4791E+02 -5.1825E+01  6.1131E+02  2.3067E+01 -3.0354E+03 -1.9860E+03 -3.4741E+01 -2.5546E+03 -5.8303E+02
            -8.3375E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -579.996642451293        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  8.5991E-01  2.2706E+00  8.9668E-01  2.2432E+00  9.6425E-01  3.8219E+00  4.0553E+00  9.6826E-01  1.9643E+00  1.2914E+00
             1.3047E+01
 PARAMETER: -5.0929E-02  9.2006E-01 -9.0589E-03  9.0791E-01  6.3600E-02  1.4407E+00  1.5000E+00  6.7749E-02  7.7515E-01  3.5576E-01
             2.6686E+00
 GRADIENT:  -5.5656E+01  7.2969E+01 -4.1430E+01  2.1738E+02 -1.0973E+01  1.4326E+02  2.3228E+00  4.7731E+00 -3.9126E+01  2.7519E+01
             1.9714E+02

0ITERATION NO.:   10    OBJECTIVE VALUE:  -673.043077936464        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:      153
 NPARAMETR:  7.2020E-01  3.2567E+00  2.7289E+01  2.0118E+00  2.7180E+00  3.3797E+00  9.5763E+00  5.0993E-01  1.1100E+00  8.6883E-01
             1.3261E+01
 PARAMETER: -2.2823E-01  1.2807E+00  3.4065E+00  7.9901E-01  1.0999E+00  1.3178E+00  2.3593E+00 -5.7348E-01  2.0437E-01 -4.0611E-02
             2.6848E+00
 GRADIENT:  -7.9075E+01  4.8938E+01 -3.1015E+00  1.2594E+02  1.5275E+01  1.2727E+02  4.3406E+01  2.4969E-02 -1.6778E+01  1.0737E+01
             2.8370E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -798.314192517646        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      226
 NPARAMETR:  1.0155E+00  1.2846E+00  9.9362E+00  1.1704E+00  2.4120E+00  2.0635E+00  3.8661E+00  1.9912E-01  1.6098E+00  3.6731E-01
             1.1481E+01
 PARAMETER:  1.1537E-01  3.5044E-01  2.3962E+00  2.5731E-01  9.8046E-01  8.2442E-01  1.4522E+00 -1.5138E+00  5.7610E-01 -9.0154E-01
             2.5407E+00
 GRADIENT:  -4.2114E+01 -2.0073E+01 -6.0385E+00  5.9915E-01  3.6107E+01  1.4439E+01 -9.4621E+00  9.0278E-03  1.7424E+01  2.6388E+00
             1.8654E+02

0ITERATION NO.:   20    OBJECTIVE VALUE:  -819.153494456172        NO. OF FUNC. EVALS.: 157
 CUMULATIVE NO. OF FUNC. EVALS.:      383
 NPARAMETR:  1.1228E+00  1.1140E+00  1.6789E+01  1.2566E+00  2.2586E+00  2.1158E+00  5.3781E+00  4.5433E-02  1.1689E+00  3.6429E-01
             1.0710E+01
 PARAMETER:  2.1587E-01  2.0799E-01  2.9207E+00  3.2843E-01  9.1475E-01  8.4944E-01  1.7823E+00 -2.9915E+00  2.5609E-01 -9.0979E-01
             2.4712E+00
 GRADIENT:   1.0419E+01  2.8518E+00 -1.8943E-01 -9.7754E+00 -4.1697E+00  2.4064E-01  7.7536E+00  2.1380E-04  6.8253E+00  2.6035E+00
             6.6703E+00

0ITERATION NO.:   25    OBJECTIVE VALUE:  -821.511979398364        NO. OF FUNC. EVALS.: 176
 CUMULATIVE NO. OF FUNC. EVALS.:      559
 NPARAMETR:  1.0946E+00  9.4897E-01  2.5731E+01  1.3310E+00  2.3376E+00  2.1087E+00  5.6268E+00  1.6094E-02  1.0387E+00  8.3960E-02
             1.0710E+01
 PARAMETER:  1.9037E-01  4.7623E-02  3.3477E+00  3.8591E-01  9.4913E-01  8.4608E-01  1.8275E+00 -4.0293E+00  1.3799E-01 -2.3774E+00
             2.4711E+00
 GRADIENT:  -3.6802E-01  6.5204E-01  4.4556E-02  2.3695E+00 -2.5181E+00  2.3039E-01  1.1079E+00  1.3464E-05 -5.5197E-01  1.2901E-01
            -2.7531E-01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -821.648805811318        NO. OF FUNC. EVALS.: 186
 CUMULATIVE NO. OF FUNC. EVALS.:      745             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0949E+00  9.1821E-01  3.2659E+01  1.3433E+00  2.3810E+00  2.1109E+00  5.7503E+00  1.0000E-02  1.0655E+00  1.0000E-02
             1.0704E+01
 PARAMETER:  1.9068E-01  1.4671E-02  3.5861E+00  3.9514E-01  9.6751E-01  8.4712E-01  1.8492E+00 -5.1055E+00  1.6346E-01 -4.6836E+00
             2.4706E+00
 GRADIENT:   9.6442E+00  1.1038E+00 -4.2739E-03  7.7312E+00  3.6424E+00  2.2142E+01  8.7325E+01  0.0000E+00  8.5552E-01  0.0000E+00
             4.6165E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -821.664637256244        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      925
 NPARAMETR:  1.0954E+00  9.0633E-01  3.3201E+01  1.3486E+00  2.3801E+00  2.1151E+00  5.7897E+00  1.0000E-02  1.0617E+00  1.0000E-02
             1.0700E+01
 PARAMETER:  1.9108E-01  1.6515E-03  3.6026E+00  3.9905E-01  9.6715E-01  8.4911E-01  1.8561E+00 -5.1055E+00  1.5989E-01 -4.6836E+00
             2.4702E+00
 GRADIENT:   2.3251E-01  1.5801E-01 -1.4703E-02 -1.6848E+00  2.9837E-01  1.0095E+00  4.5988E+00  0.0000E+00  2.0652E-01  0.0000E+00
             7.8932E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -821.672197213438        NO. OF FUNC. EVALS.: 182
 CUMULATIVE NO. OF FUNC. EVALS.:     1107             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0954E+00  8.9602E-01  3.3482E+01  1.3544E+00  2.3810E+00  2.1147E+00  5.8217E+00  1.0000E-02  1.0696E+00  1.0000E-02
             1.0701E+01
 PARAMETER:  1.9116E-01 -9.7910E-03  3.6110E+00  4.0336E-01  9.6752E-01  8.4893E-01  1.8616E+00 -5.1055E+00  1.6728E-01 -4.6836E+00
             2.4704E+00
 GRADIENT:   9.9431E+00  1.0062E+00  1.3918E-03  8.1187E+00  3.4114E+00  2.2793E+01  8.9897E+01  0.0000E+00  7.2869E-01  0.0000E+00
             4.5706E+01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -821.682006270429        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:     1287
 NPARAMETR:  1.0946E+00  8.8590E-01  3.4240E+01  1.3615E+00  2.3798E+00  2.1147E+00  5.8542E+00  1.0000E-02  1.0657E+00  1.0000E-02
             1.0689E+01
 PARAMETER:  1.9042E-01 -2.1151E-02  3.6334E+00  4.0861E-01  9.6701E-01  8.4893E-01  1.8672E+00 -5.1055E+00  1.6364E-01 -4.6836E+00
             2.4692E+00
 GRADIENT:   1.1299E-01  2.7141E-01  5.8981E-03 -3.8475E-01 -3.0080E-01  9.4068E-01  4.9187E+00  0.0000E+00 -1.9207E-01  0.0000E+00
            -1.7525E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -821.691682979086        NO. OF FUNC. EVALS.: 190
 CUMULATIVE NO. OF FUNC. EVALS.:     1477             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0948E+00  8.6407E-01  3.5430E+01  1.3737E+00  2.3834E+00  2.1138E+00  5.9004E+00  1.0000E-02  1.0776E+00  1.0000E-02
             1.0693E+01
 PARAMETER:  1.9061E-01 -4.6098E-02  3.6675E+00  4.1747E-01  9.6853E-01  8.4850E-01  1.8750E+00 -5.1055E+00  1.7474E-01 -4.6836E+00
             2.4696E+00
 GRADIENT:   9.7924E+00  8.6172E-01  2.0075E-02  1.0424E+01  2.8776E+00  2.2708E+01  9.1986E+01  0.0000E+00  2.6404E-01  0.0000E+00
             4.3447E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -821.692795631332        NO. OF FUNC. EVALS.: 181
 CUMULATIVE NO. OF FUNC. EVALS.:     1658            RESET HESSIAN, TYPE II
 NPARAMETR:  1.0949E+00  8.6314E-01  3.5977E+01  1.3761E+00  2.3844E+00  2.1151E+00  5.9090E+00  1.0000E-02  1.0800E+00  1.0000E-02
             1.0696E+01
 PARAMETER:  1.9062E-01 -4.7176E-02  3.6829E+00  4.1928E-01  9.6894E-01  8.4912E-01  1.8765E+00 -5.1055E+00  1.7699E-01 -4.6836E+00
             2.4699E+00
 GRADIENT:   9.7478E+00  9.7826E-01  2.7589E-02  1.0799E+01  2.7239E+00  2.2942E+01  9.2142E+01  0.0000E+00  2.6677E-01  0.0000E+00
             4.3771E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -821.693104502367        NO. OF FUNC. EVALS.: 168
 CUMULATIVE NO. OF FUNC. EVALS.:     1826
 NPARAMETR:  1.0951E+00  8.6116E-01  3.6112E+01  1.3769E+00  2.3855E+00  2.1153E+00  5.9150E+00  1.0000E-02  1.0828E+00  1.0000E-02
             1.0700E+01
 PARAMETER:  1.9083E-01 -4.9478E-02  3.6866E+00  4.1983E-01  9.6942E-01  8.4921E-01  1.8775E+00 -5.1055E+00  1.7955E-01 -4.6836E+00
             2.4703E+00
 GRADIENT:   1.0705E-01  1.6917E-02 -1.0588E-02 -4.4849E-01  1.2232E-02  1.1494E+00  5.1101E+00  0.0000E+00  4.5267E-02  0.0000E+00
             3.1378E-01

 #TERM:
0MINIMIZATION SUCCESSFUL
 HOWEVER, PROBLEMS OCCURRED WITH THE MINIMIZATION.
 REGARD THE RESULTS OF THE ESTIMATION STEP CAREFULLY, AND ACCEPT THEM ONLY
 AFTER CHECKING THAT THE COVARIANCE STEP PRODUCES REASONABLE OUTPUT.
 NO. OF FUNCTION EVALUATIONS USED:     1826
 NO. OF SIG. DIGITS IN FINAL EST.:  2.1
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY
 THIS MUST BE ADDRESSED BEFORE THE COVARIANCE STEP CAN BE IMPLEMENTED

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         1.5204E-02  3.7784E-02 -1.0886E-06 -7.4427E-02  7.9406E-06
 SE:             2.8321E-02  2.3674E-02  3.6448E-06  1.3952E-02  9.5067E-05
 N:                     100         100         100         100         100

 P VAL.:         5.9137E-01  1.1049E-01  7.6518E-01  9.6071E-08  9.3343E-01

 ETASHRINKSD(%)  5.1218E+00  2.0689E+01  9.9988E+01  5.3258E+01  9.9682E+01
 ETASHRINKVR(%)  9.9814E+00  3.7098E+01  1.0000E+02  7.8152E+01  9.9999E+01
 EBVSHRINKSD(%)  5.4906E+00  1.5771E+01  9.9982E+01  5.5842E+01  9.9564E+01
 EBVSHRINKVR(%)  1.0680E+01  2.9055E+01  1.0000E+02  8.0501E+01  9.9998E+01
 RELATIVEINF(%)  8.9123E+01  3.3781E+01  6.2629E-07  9.3414E+00  3.4725E-04
 EPSSHRINKSD(%)  5.1973E+00
 EPSSHRINKVR(%)  1.0125E+01

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          900
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1654.0893597684108     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -821.69310450236696     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       832.39625526604380     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    56.09
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -821.693       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.10E+00  8.61E-01  3.61E+01  1.38E+00  2.39E+00  2.12E+00  5.92E+00  1.00E-02  1.08E+00  1.00E-02  1.07E+01
 


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
 #CPUT: Total CPU Time in Seconds,       56.148
Stop Time:
Fri Oct  1 07:29:36 CDT 2021
