Fri Oct  1 22:50:02 CDT 2021
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
$DATA ../../../../data/SD3/D/dat99.csv ignore=@
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
 (E4.0,E3.0,E21.0,E4.0,2E2.0)

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
 RAW OUTPUT FILE (FILE): m99.ext
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


0ITERATION NO.:    0    OBJECTIVE VALUE:   38475.6394081575        NO. OF FUNC. EVALS.:  13
 CUMULATIVE NO. OF FUNC. EVALS.:       13
 NPARAMETR:  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00  1.0000E+00
             1.0000E+00
 PARAMETER:  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01  1.0000E-01
             1.0000E-01
 GRADIENT:   9.1814E+02  7.4617E+02  5.9738E+01  8.2293E+02  9.6943E+01 -3.9683E+03 -1.8605E+03 -4.7563E+01 -2.3015E+03 -1.0141E+03
            -7.1770E+04

0ITERATION NO.:    5    OBJECTIVE VALUE:  -313.644580976757        NO. OF FUNC. EVALS.:  70
 CUMULATIVE NO. OF FUNC. EVALS.:       83
 NPARAMETR:  1.2686E+00  1.1919E+00  9.2157E-01  1.2926E+00  1.2992E+00  1.9618E+00  1.4033E+00  9.6915E-01  1.0191E+00  9.0469E-01
             1.4654E+01
 PARAMETER:  3.3790E-01  2.7556E-01  1.8324E-02  3.5669E-01  3.6173E-01  7.7386E-01  4.3883E-01  6.8662E-02  1.1889E-01 -1.6180E-04
             2.7847E+00
 GRADIENT:   2.6671E+01 -1.4980E+01 -1.6946E+01  3.6778E+01  2.5151E+01  4.8874E+01 -2.4155E+01  3.7240E+00 -1.1804E+01  7.7327E+00
            -8.6630E+01

0ITERATION NO.:   10    OBJECTIVE VALUE:  -447.294949829693        NO. OF FUNC. EVALS.:  82
 CUMULATIVE NO. OF FUNC. EVALS.:      165
 NPARAMETR:  1.3124E+00  1.8503E+00  1.5895E+00  1.1240E+00  2.6356E+00  1.7862E+00  5.0324E+00  6.0426E-01  6.7260E-01  1.5130E-01
             1.5670E+01
 PARAMETER:  3.7189E-01  7.1535E-01  5.6340E-01  2.1690E-01  1.0691E+00  6.8009E-01  1.7159E+00 -4.0374E-01 -2.9660E-01 -1.7885E+00
             2.8518E+00
 GRADIENT:   5.1475E+01 -2.9942E+00 -2.1903E+01 -2.3869E+01  2.1273E+01  9.7777E-01  2.4792E+01  5.0891E-01  8.8055E+00  6.6156E-02
             1.2863E+02

0ITERATION NO.:   15    OBJECTIVE VALUE:  -463.284642647657        NO. OF FUNC. EVALS.: 104
 CUMULATIVE NO. OF FUNC. EVALS.:      269
 NPARAMETR:  1.2304E+00  9.6010E-01  1.7132E+00  1.4475E+00  1.1779E+00  1.9232E+00  5.8173E+00  5.1589E-01  5.3624E-01  4.1040E-01
             1.4755E+01
 PARAMETER:  3.0737E-01  5.9285E-02  6.3839E-01  4.6982E-01  2.6373E-01  7.5401E-01  1.8608E+00 -5.6186E-01 -5.2318E-01 -7.9062E-01
             2.7916E+00
 GRADIENT:   1.0484E+01 -4.3505E-02  1.0347E+01  5.8743E+01 -3.7266E+01  1.4259E+01 -4.7818E+01  4.6482E-01 -1.4031E+00  1.1694E+00
             5.2291E+00

0ITERATION NO.:   20    OBJECTIVE VALUE:  -473.531460948901        NO. OF FUNC. EVALS.: 142
 CUMULATIVE NO. OF FUNC. EVALS.:      411
 NPARAMETR:  1.1751E+00  9.2243E-01  1.5113E+00  1.3280E+00  1.3635E+00  1.7993E+00  6.5118E+00  3.8616E-02  4.8300E-01  3.3122E-02
             1.4350E+01
 PARAMETER:  2.6137E-01  1.9256E-02  5.1296E-01  3.8364E-01  4.1002E-01  6.8740E-01  1.9736E+00 -3.1541E+00 -6.2773E-01 -3.3076E+00
             2.7637E+00
 GRADIENT:   1.2229E+01 -4.1916E+00 -1.1579E+01 -1.5418E+00  5.6126E+00  2.6189E+00  6.3833E+01  4.5284E-03  4.1479E+00  1.0407E-02
             7.2486E+01

0ITERATION NO.:   25    OBJECTIVE VALUE:  -473.727423599924        NO. OF FUNC. EVALS.:  73
 CUMULATIVE NO. OF FUNC. EVALS.:      484
 NPARAMETR:  1.1588E+00  1.0040E+00  1.5632E+00  1.2924E+00  1.3882E+00  1.7952E+00  6.0715E+00  3.3789E-02  4.5215E-01  2.8496E-02
             1.4075E+01
 PARAMETER:  2.4739E-01  1.0395E-01  5.4674E-01  3.5654E-01  4.2798E-01  6.8509E-01  1.9036E+00 -3.2876E+00 -6.9375E-01 -3.4580E+00
             2.7444E+00
 GRADIENT:   8.4204E+00 -3.9283E+00 -7.8433E+00  5.5975E+00  2.1607E+00  1.0855E+00  4.4306E+01  3.1600E-03  3.2182E+00  7.7877E-03
             5.1564E+01

0ITERATION NO.:   30    OBJECTIVE VALUE:  -473.728752706002        NO. OF FUNC. EVALS.:  76
 CUMULATIVE NO. OF FUNC. EVALS.:      560
 NPARAMETR:  1.1572E+00  1.0174E+00  1.5671E+00  1.2859E+00  1.3935E+00  1.7962E+00  6.0297E+00  3.3333E-02  4.4441E-01  2.7976E-02
             1.4045E+01
 PARAMETER:  2.4603E-01  1.1722E-01  5.4920E-01  3.5147E-01  4.3182E-01  6.8567E-01  1.8967E+00 -3.3012E+00 -7.1100E-01 -3.4764E+00
             2.7423E+00
 GRADIENT:   8.1294E+00 -3.7928E+00 -7.5713E+00  5.4601E+00  2.0661E+00  1.0406E+00  4.2754E+01  3.0459E-03  3.1123E+00  7.5168E-03
             4.9785E+01

0ITERATION NO.:   35    OBJECTIVE VALUE:  -480.504803838074        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:      739
 NPARAMETR:  1.1401E+00  9.8687E-01  2.7090E+00  1.3094E+00  1.8565E+00  1.8133E+00  6.9087E+00  1.0000E-02  1.3969E-01  1.0000E-02
             1.3991E+01
 PARAMETER:  2.3112E-01  8.6779E-02  1.0966E+00  3.6956E-01  7.1870E-01  6.9515E-01  2.0328E+00 -4.6254E+00 -1.8683E+00 -4.8377E+00
             2.7384E+00
 GRADIENT:   1.3002E+01 -1.2523E+00 -2.6396E+00 -5.5999E+00 -6.3484E-01  2.2593E+01  3.6958E+00  0.0000E+00  6.7549E-02  0.0000E+00
             9.7969E-01

0ITERATION NO.:   40    OBJECTIVE VALUE:  -494.855178503066        NO. OF FUNC. EVALS.: 180
 CUMULATIVE NO. OF FUNC. EVALS.:      919
 NPARAMETR:  9.8377E-01  9.4029E-01  2.5946E+02  1.4604E+00  4.4466E+00  1.1445E+00  7.3526E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.4582E+01
 PARAMETER:  8.3632E-02  3.8435E-02  5.6586E+00  4.7870E-01  1.5921E+00  2.3495E-01  2.0950E+00 -9.7692E+00 -5.4435E+00 -1.2058E+01
             2.7798E+00
 GRADIENT:  -2.3948E+01 -5.4646E-01 -2.6710E-02  2.0262E+01  6.4115E+00  4.2007E+00 -9.7363E+00  0.0000E+00  0.0000E+00  0.0000E+00
             2.4254E-01

0ITERATION NO.:   45    OBJECTIVE VALUE:  -497.599135147250        NO. OF FUNC. EVALS.: 175
 CUMULATIVE NO. OF FUNC. EVALS.:     1094
 NPARAMETR:  1.0019E+00  9.4485E-01  1.8447E+02  1.4135E+00  3.0550E+00  1.1144E+00  7.4927E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.4549E+01
 PARAMETER:  1.0185E-01  4.3274E-02  5.3175E+00  4.4609E-01  1.2168E+00  2.0831E-01  2.1139E+00 -8.8875E+00 -4.5685E+00 -1.1068E+01
             2.7776E+00
 GRADIENT:  -3.0339E+00 -2.2550E-01 -1.0271E-02  5.5490E-01  6.4165E-01 -1.2005E+00 -2.6902E-01  0.0000E+00  0.0000E+00  0.0000E+00
             1.3404E+00

0ITERATION NO.:   50    OBJECTIVE VALUE:  -497.772762920394        NO. OF FUNC. EVALS.: 199
 CUMULATIVE NO. OF FUNC. EVALS.:     1293
 NPARAMETR:  1.0027E+00  9.7366E-01  7.1789E+05  1.4257E+00  2.9990E+00  1.1213E+00  7.8069E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.4525E+01
 PARAMETER:  1.0268E-01  7.3304E-02  1.3584E+01  4.5465E-01  1.1983E+00  2.1451E-01  2.1550E+00 -8.8334E+00 -4.5232E+00 -1.1000E+01
             2.7759E+00
 GRADIENT:  -5.0791E+01 -2.8690E+01 -2.5039E-06 -1.1607E+02  9.0467E+00 -1.1569E+01  2.9447E+01  0.0000E+00 -1.5442E-03  0.0000E+00
             9.8486E+01

0ITERATION NO.:   55    OBJECTIVE VALUE:  -497.831464461776        NO. OF FUNC. EVALS.: 203
 CUMULATIVE NO. OF FUNC. EVALS.:     1496             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0045E+00  9.4866E-01  9.0868E+05  1.4209E+00  3.0668E+00  1.1203E+00  7.8763E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.4574E+01
 PARAMETER:  1.0449E-01  4.7295E-02  1.3820E+01  4.5132E-01  1.2206E+00  2.1357E-01  2.1639E+00 -8.8334E+00 -4.5799E+00 -1.1000E+01
             2.7793E+00
 GRADIENT:  -5.4821E+01  2.4802E+00  6.5200E-06  5.6748E+00  2.0667E+00 -1.0398E+01  1.1004E+02  0.0000E+00  0.0000E+00  0.0000E+00
             6.5519E+01

0ITERATION NO.:   60    OBJECTIVE VALUE:  -497.852532582379        NO. OF FUNC. EVALS.: 183
 CUMULATIVE NO. OF FUNC. EVALS.:     1679
 NPARAMETR:  1.0031E+00  9.4430E-01  8.9103E+05  1.4264E+00  3.0437E+00  1.1202E+00  7.8740E+00  1.0000E-02  1.0000E-02  1.0000E-02
             1.4575E+01
 PARAMETER:  1.0308E-01  4.2690E-02  1.3800E+01  4.5519E-01  1.2131E+00  2.1347E-01  2.1636E+00 -8.8334E+00 -4.5799E+00 -1.1000E+01
             2.7793E+00
 GRADIENT:  -1.1850E+01 -1.6380E+01 -1.4369E-07 -7.8369E+01  5.1217E+00 -1.0129E+01  2.4104E+01  0.0000E+00  0.0000E+00  0.0000E+00
             5.6742E+01

0ITERATION NO.:   65    OBJECTIVE VALUE:  -497.877907987139        NO. OF FUNC. EVALS.: 213
 CUMULATIVE NO. OF FUNC. EVALS.:     1892             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0057E+00  9.2821E-01  6.3316E+05  1.4279E+00  3.0453E+00  1.1146E+00  7.9086E+00  1.0000E-02  1.1146E-02  1.0000E-02
             1.4558E+01
 PARAMETER:  1.0564E-01  2.5505E-02  1.3458E+01  4.5622E-01  1.2136E+00  2.0849E-01  2.1680E+00 -8.8334E+00 -4.3967E+00 -1.1000E+01
             2.7781E+00
 GRADIENT:  -1.6673E+01  8.8220E-01  4.2076E-06  4.7299E+00  9.9927E-01 -5.3248E+00  1.0889E+02  0.0000E+00  5.8663E-04  0.0000E+00
             4.4567E+01

0ITERATION NO.:   70    OBJECTIVE VALUE:  -497.888262041677        NO. OF FUNC. EVALS.: 195
 CUMULATIVE NO. OF FUNC. EVALS.:     2087             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0048E+00  9.2283E-01  6.0065E+05  1.4293E+00  3.0375E+00  1.1180E+00  7.9019E+00  1.0000E-02  1.1273E-02  1.0000E-02
             1.4566E+01
 PARAMETER:  1.0481E-01  1.9695E-02  1.3406E+01  4.5721E-01  1.2110E+00  2.1154E-01  2.1671E+00 -8.8334E+00 -4.3854E+00 -1.1000E+01
             2.7787E+00
 GRADIENT:  -2.8855E+01  1.0288E-01  3.0584E-06  9.1457E+00  1.0705E+00 -3.4755E+00  1.1039E+02  0.0000E+00 -2.7730E-03  0.0000E+00
             4.8967E+01

0ITERATION NO.:   75    OBJECTIVE VALUE:  -497.902519011885        NO. OF FUNC. EVALS.: 179
 CUMULATIVE NO. OF FUNC. EVALS.:     2266             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0044E+00  9.0690E-01  1.2283E+06  1.4327E+00  3.0286E+00  1.1194E+00  7.9032E+00  1.0000E-02  1.2230E-02  1.0000E-02
             1.4556E+01
 PARAMETER:  1.0438E-01  2.2726E-03  1.4121E+01  4.5958E-01  1.2081E+00  2.1282E-01  2.1673E+00 -8.8334E+00 -4.3038E+00 -1.1000E+01
             2.7780E+00
 GRADIENT:  -4.2415E+01  7.1959E+00  1.3106E-05  1.3219E+01  2.0474E-01 -9.7351E+00  1.1268E+02  0.0000E+00 -2.2562E-03  0.0000E+00
             3.8587E+01

0ITERATION NO.:   80    OBJECTIVE VALUE:  -497.907205891368        NO. OF FUNC. EVALS.: 192
 CUMULATIVE NO. OF FUNC. EVALS.:     2458
 NPARAMETR:  1.0045E+00  9.0496E-01  2.0692E+06  1.4327E+00  3.0321E+00  1.1187E+00  7.9323E+00  1.0000E-02  1.3395E-02  1.0000E-02
             1.4555E+01
 PARAMETER:  1.0453E-01  1.4016E-04  1.4643E+01  4.5959E-01  1.2093E+00  2.1217E-01  2.1709E+00 -8.8334E+00 -4.2129E+00 -1.1000E+01
             2.7779E+00
 GRADIENT:  -6.3400E+01  5.8400E+00 -2.8186E-06 -1.7228E+01  7.3299E-01 -1.4155E+01  2.0602E+01  0.0000E+00 -3.1454E-03  0.0000E+00
             2.2427E+01

0ITERATION NO.:   85    OBJECTIVE VALUE:  -497.916889293595        NO. OF FUNC. EVALS.: 211
 CUMULATIVE NO. OF FUNC. EVALS.:     2669             RESET HESSIAN, TYPE I
 NPARAMETR:  1.0052E+00  8.8996E-01  2.5841E+06  1.4329E+00  3.0484E+00  1.1134E+00  7.9844E+00  1.0000E-02  1.2660E-02  1.0000E-02
             1.4569E+01
 PARAMETER:  1.0516E-01 -1.6576E-02  1.4865E+01  4.5968E-01  1.2146E+00  2.0740E-01  2.1775E+00 -8.8334E+00 -4.2693E+00 -1.1000E+01
             2.7789E+00
 GRADIENT:  -1.2604E+01  3.4971E+00  2.8605E-05  1.1709E+01  4.0377E-01 -2.5922E+00  1.1912E+02  0.0000E+00  1.3994E-04  0.0000E+00
             3.7793E+01

0ITERATION NO.:   88    OBJECTIVE VALUE:  -497.917797541649        NO. OF FUNC. EVALS.:  79
 CUMULATIVE NO. OF FUNC. EVALS.:     2748
 NPARAMETR:  1.0041E+00  8.9053E-01  2.5693E+06  1.4358E+00  3.0320E+00  1.1154E+00  7.9556E+00  1.0000E-02  1.2782E-02  1.0000E-02
             1.4558E+01
 PARAMETER:  1.0511E-01 -1.5576E-02  1.4846E+01  4.5963E-01  1.2144E+00  2.0787E-01  2.1771E+00 -8.8334E+00 -4.2642E+00 -1.1000E+01
             2.7789E+00
 GRADIENT:   6.6120E-01  3.3428E-01 -8.0354E-04 -1.7974E+00  2.5403E-01 -8.2695E-01  5.1476E-01  0.0000E+00 -2.9507E-03  0.0000E+00
             8.6252E-01

 #TERM:
0MINIMIZATION TERMINATED
 DUE TO ROUNDING ERRORS (ERROR=134)
 NO. OF FUNCTION EVALUATIONS USED:     2748
 NO. OF SIG. DIGITS UNREPORTABLE
0PARAMETER ESTIMATE IS NEAR ITS BOUNDARY

 ETABAR IS THE ARITHMETIC MEAN OF THE ETA-ESTIMATES,
 AND THE P-VALUE IS GIVEN FOR THE NULL HYPOTHESIS THAT THE TRUE MEAN IS 0.

 ETABAR:         3.6152E-02  3.4899E-02  3.2512E-11 -1.3958E-03  3.7398E-05
 SE:             2.4632E-02  2.3566E-02  1.0303E-11  2.5260E-04  2.8674E-05
 N:                     100         100         100         100         100

 P VAL.:         1.4220E-01  1.3863E-01  1.6022E-03  3.2906E-08  1.9215E-01

 ETASHRINKSD(%)  1.7478E+01  2.1052E+01  1.0000E+02  9.9154E+01  9.9904E+01
 ETASHRINKVR(%)  3.1902E+01  3.7672E+01  1.0000E+02  9.9993E+01  1.0000E+02
 EBVSHRINKSD(%)  2.3272E+01  1.4326E+01  1.0000E+02  9.9343E+01  9.9850E+01
 EBVSHRINKVR(%)  4.1128E+01  2.6600E+01  1.0000E+02  9.9996E+01  1.0000E+02
 RELATIVEINF(%)  5.6520E+01  4.7294E+01  0.0000E+00  2.5857E-03  2.0370E-04
 EPSSHRINKSD(%)  1.7122E+00
 EPSSHRINKVR(%)  3.3950E+00

  
 TOTAL DATA POINTS NORMALLY DISTRIBUTED (N):          600
 N*LOG(2PI) CONSTANT TO OBJECTIVE FUNCTION:    1102.7262398456071     
 OBJECTIVE FUNCTION VALUE WITHOUT CONSTANT:   -497.91779754164929     
 OBJECTIVE FUNCTION VALUE WITH CONSTANT:       604.80844230395780     
 REPORTED OBJECTIVE FUNCTION DOES NOT CONTAIN CONSTANT
  
 TOTAL EFFECTIVE ETAS (NIND*NETA):                           500
  
 #TERE:
 Elapsed estimation  time in seconds:    80.98
 Elapsed postprocess time in seconds:     0.00
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 #OBJT:**************                       MINIMUM VALUE OF OBJECTIVE FUNCTION                      ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 





 #OBJV:********************************************     -497.918       **************************************************
1
 ************************************************************************************************************************
 ********************                                                                                ********************
 ********************               FIRST ORDER CONDITIONAL ESTIMATION WITH INTERACTION              ********************
 ********************                             FINAL PARAMETER ESTIMATE                           ********************
 ********************                                                                                ********************
 ************************************************************************************************************************
 


 THETA - VECTOR OF FIXED EFFECTS PARAMETERS   *********


         TH 1      TH 2      TH 3      TH 4      TH 5      TH 6      TH 7      TH 8      TH 9      TH10      TH11     
 
         1.01E+00  8.91E-01  2.54E+06  1.43E+00  3.05E+00  1.11E+00  7.98E+00  1.00E-02  1.27E-02  1.00E-02  1.46E+01
 


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
 #CPUT: Total CPU Time in Seconds,       81.020
Stop Time:
Fri Oct  1 22:51:24 CDT 2021