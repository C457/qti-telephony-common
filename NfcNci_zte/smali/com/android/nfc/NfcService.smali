.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$TagRemoveTaskTimer;,
        Lcom/android/nfc/NfcService$EtsiStopConfigTask;,
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$ToastHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$OpenSecureElement;,
        Lcom/android/nfc/NfcService$NfcAdapterExtrasService;,
        Lcom/android/nfc/NfcService$NfcVzwService;,
        Lcom/android/nfc/NfcService$NfcDtaService;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$NxpNfcAdapterService;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$ReaderModeParams;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_EMVCO_MULTIPLE_CARD_DETECTED:Ljava/lang/String; = "com.nxp.action.EMVCO_MULTIPLE_CARD_DETECTED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_FLASH_SUCCESS:Ljava/lang/String; = "com.android.nfc_extras.action.ACTION_FLASH_SUCCESS"

.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field private static final ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field public static final ACTION_UICC_STATUS_RECEIVED:Ljava/lang/String; = "com.nxp.action.UICC_STATUS_RECEIVED"

.field private static ALL_SE_ID_TYPE:I = 0x0

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field static final DBG:Z = true

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field static final ETSI_PRESENCE_CHECK_DELAY:I = 0x3e8

.field public static final ETSI_READER_ACTIVATED:I = 0x2

.field public static final ETSI_READER_START_FAIL:I = 0x1

.field public static final ETSI_READER_START_SUCCESS:I = 0x0

.field public static final ETSI_READER_STOP:I = 0x3

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.android.nfc_extras.extra.DATA"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field public static final EXTRA_PACKAGENAMES:Ljava/lang/String; = "com.android.nfc_extras.extra.PACKAGENAMES"

.field public static final EXTRA_SE_NAME:Ljava/lang/String; = "com.android.nfc_extras.extra.SE_NAME"

.field public static final EXTRA_UICC_STATUS:Ljava/lang/String; = "com.nxp.extra.UICC_STATUS"

.field public static final FEATURE_FOR_MDM_CONTROL:Z

.field static final GSMA_MENU_ENABLE:Z

.field static final INIT_WATCHDOG_LS_MS:I = 0x2bf20

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field static final INVALID_NATIVE_HANDLE:I = -0x1

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field private static final JCOP_MODTIME_DEFAULT:[J

.field private static final JCOP_MODTIME_TEMP:[J

.field public static final LOADER_SERVICE_VERSION_HIGH_LIMIT:I = 0x24

.field public static final LOADER_SERVICE_VERSION_LOW_LIMIT:I = 0x21

.field public static final LS_RETRY_CNT:I = 0x3

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MSG_APPLY_SCREEN_STATE:I = 0x33

.field static final MSG_CHANGE_DEFAULT_ROUTE:I = 0x34

.field static final MSG_CLEAR_ROUTING:I = 0x17

.field static final MSG_COMMITED_FELICA_ROUTING:I = 0x2e

.field static final MSG_COMMITINF_FELICA_ROUTING:I = 0x2d

.field static final MSG_COMMIT_ROUTING:I = 0x12

.field static final MSG_CONNECTIVITY_EVENT:I = 0x28

.field static final MSG_DEREGISTER_T3T_IDENTIFIER:I = 0x37

.field static final MSG_EMVCO_MULTI_CARD_DETECTED_EVENT:I = 0x2f

.field static final MSG_ETSI_START_CONFIG:I = 0x30

.field static final MSG_ETSI_STOP_CONFIG:I = 0x31

.field static final MSG_ETSI_SWP_TIMEOUT:I = 0x32

.field static final MSG_INVOKE_BEAM:I = 0x13

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x2

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x3

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0xf

.field static final MSG_MOCK_NDEF:I = 0x7

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_REGISTER_T3T_IDENTIFIER:I = 0x36

.field static final MSG_RESTART_WATCHDOG:I = 0x3c

.field static final MSG_RESUME_POLLING:I = 0x1c

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x1a

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0x1b

.field static final MSG_ROUTE_AID:I = 0x10

.field static final MSG_ROUTE_APDU:I = 0x3d

.field static final MSG_ROUTE_NFCID2:I = 0x2b

.field static final MSG_SET_DATABASE:I = 0x40

.field static final MSG_SET_SCREEN_STATE:I = 0x19

.field static final MSG_SE_APDU_RECEIVED:I = 0xa

.field static final MSG_SE_DELIVER_INTENT:I = 0x35

.field static final MSG_SE_EMV_CARD_REMOVAL:I = 0xb

.field static final MSG_SE_FIELD_ACTIVATED:I = 0x8

.field static final MSG_SE_FIELD_DEACTIVATED:I = 0x9

.field static final MSG_SE_LISTEN_ACTIVATED:I = 0xd

.field static final MSG_SE_LISTEN_DEACTIVATED:I = 0xe

.field static final MSG_SE_MIFARE_ACCESS:I = 0xc

.field static final MSG_SWP_READER_DEACTIVATED:I = 0x16

.field static final MSG_SWP_READER_REQUESTED:I = 0x14

.field static final MSG_SWP_READER_REQUESTED_FAIL:I = 0x1d

.field static final MSG_SWP_READER_RESTART:I = 0x3a

.field static final MSG_SWP_READER_TAG_PRESENT:I = 0x1e

.field static final MSG_SWP_READER_TAG_REMOVE:I = 0x1f

.field static final MSG_TAG_DEBOUNCE:I = 0x38

.field static final MSG_TARGET_DESELECTED:I = 0x4

.field static final MSG_TRANSACTION_EVENT:I = 0x3f

.field static final MSG_UNROUTE_AID:I = 0x11

.field static final MSG_UNROUTE_APDU:I = 0x3e

.field static final MSG_UNROUTE_NFCID2:I = 0x2c

.field static final MSG_UPDATE_STATS:I = 0x39

.field static final MSG_VZW_COMMIT_ROUTING:I = 0x2a

.field static final MSG_VZW_ROUTE_AID:I = 0x29

.field public static final NCI_VERSION_1_0:I = 0x10

.field public static final NCI_VERSION_2_0:I = 0x20

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field public static final NFC_DISABLE:I = 0x0

.field public static final NFC_ENABLE:I = 0x1

.field public static final NFC_ERROR:I = -0x1

.field static final NFC_FEATURE_DEFAULT_SWITCH_ENABLE:Z

.field static final NFC_F_TRANSCEIVE_PRESENCE_CHECK_DELAY:I = 0x1f4

.field static final NFC_ON_DEFAULT:Z = true

.field private static final NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field private static final NFC_PERM_ERROR:Ljava/lang/String; = "NFC permission required"

.field static final NFC_POLLING_MODE:I = 0x8

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_KOVIO:I = 0x20

.field static final NFC_POLL_V:I = 0x8

.field public static final NXP_PREF:Ljava/lang/String; = "NfcServiceNxpPrefs"

.field private static final PACKAGE_SMART_CARD_SERVICE:Ljava/lang/String; = "org.simalliance.openmobileapi.service"

.field public static final PN547C2_ID:I = 0x1

.field public static final PN548C2_ID:I = 0x3

.field public static final PN551_ID:I = 0x5

.field public static final PN553_ID:I = 0x7

.field public static final PN65T_ID:I = 0x2

.field public static final PN66T_ID:I = 0x4

.field public static final PN67T_ID:I = 0x6

.field public static final PN80T_ID:I = 0x8

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field private static final PREF_CUR_SELECTED_UICC_ID:Ljava/lang/String; = "current_selected_uicc_id"

.field private static final PREF_DEFAULT_ROUTE_ID:Ljava/lang/String; = "default_route_id"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field private static final PREF_JCOP_MODTIME:[Ljava/lang/String;

.field private static final PREF_MIFARE_CLT_ROUTE_ID:Ljava/lang/String; = "mifare_clt_route"

.field private static final PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID:Ljava/lang/String; = "mifare_desfire_proto_route"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field private static final PREF_SECURE_ELEMENT_ID:Ljava/lang/String; = "secure_element_id"

.field private static final PREF_SECURE_ELEMENT_ON:Ljava/lang/String; = "secure_element_on"

.field private static final PREF_SET_DEFAULT_ROUTE_ID:Ljava/lang/String; = "set_default_route"

.field public static final PROP_NFC_CTRL:Ljava/lang/String; = "persist.sys.ga.nfc.enable"

.field public static final PV_VERSION:Z

.field public static final ROUTE_LOC_MASK:I = 0x8

.field static final ROUTE_OFF:I = 0x1

.field static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x2

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field static final SE_ACCESS_DENIED:I = -0x2

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field static final SIM_HOT_SWAP:Z

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field public static final STATE_SE_RDR_MODE_ACTIVATED:I = 0x4

.field public static final STATE_SE_RDR_MODE_INVALID:I = 0x0

.field public static final STATE_SE_RDR_MODE_STARTED:I = 0x3

.field public static final STATE_SE_RDR_MODE_START_CONFIG:I = 0x1

.field public static final STATE_SE_RDR_MODE_START_IN_PROGRESS:I = 0x2

.field public static final STATE_SE_RDR_MODE_STOPPED:I = 0x7

.field public static final STATE_SE_RDR_MODE_STOP_CONFIG:I = 0x5

.field public static final STATE_SE_RDR_MODE_STOP_IN_PROGRESS:I = 0x6

.field static final STATS_UPDATE_INTERVAL_MS:J = 0xdbba00L

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_EE_WIPE:I = 0x4

.field static final TASK_ENABLE:I = 0x1

.field static final TASK_RESTART:I = 0x1f

.field public static final TECH_TYPE_MASK:I = 0xb

.field public static final TRANSIT_SETCONFIG_STAT_FAILED:I = 0xff

.field public static final TRANSIT_SETCONFIG_STAT_SUCCESS:I = 0x0

.field static final TRON_NFC_CE:Ljava/lang/String; = "nfc_ce"

.field static final TRON_NFC_P2P:Ljava/lang/String; = "nfc_p2p"

.field static final TRON_NFC_TAG:Ljava/lang/String; = "nfc_tag"

.field public static final UICC2_ID_TYPE:I = 0x4

.field public static final UICC_ID_TYPE:I = 0x2

.field static final WAIT_FOR_NFCEE_OPERATIONS_MS:I = 0x1388

.field static final WAIT_FOR_NFCEE_POLL_MS:I = 0x64

.field private static final ZTE_CELL_SYSTEM:Z

.field private static isSendNfcStateChangeBroadCase:Z

.field static mNfcDefaultValueBoolean:Z

.field private static mNfcWaiteLock:[B

.field private static mZteCellToClose:Z

.field private static final multiReceptionMode:Ljava/lang/Boolean;

.field private static nci_version:I

.field private static final path:[Ljava/lang/String;

.field public static sAidTableFull:Z

.field public static sIsDtaMode:Z

.field public static sIsShortRecordLayout:Z

.field private static sService:Lcom/android/nfc/NfcService;

.field private static final unicastReceptionMode:Ljava/lang/Boolean;


# instance fields
.field private DEFAULT_ROUTE_ID_DEFAULT:I

.field private ETSI_STOP_CONFIG:Z

.field private NXP_NFC_STATE_OFF:I

.field private NXP_NFC_STATE_ON:I

.field private NXP_NFC_STATE_TURNING_OFF:I

.field private NXP_NFC_STATE_TURNING_ON:I

.field private ROUTE_BATT_OFF:I

.field private ROUTE_ID_HOST:I

.field private ROUTE_ID_SMX:I

.field private ROUTE_ID_UICC:I

.field private ROUTE_ID_UICC2:I

.field private ROUTE_SWITCH_OFF:I

.field private ROUTE_SWITCH_ON:I

.field private SECURE_ELEMENT_ID_DEFAULT:I

.field private SECURE_ELEMENT_ON_DEFAULT:Z

.field private SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

.field private TECH_TYPE_A:I

.field private TECH_TYPE_B:I

.field private TECH_TYPE_F:I

.field autoSwitchTimer:Ljava/util/Timer;

.field containerService:Landroid/os/IContainerService;

.field private final defaultTransactionEventReceptionMode:Ljava/lang/Boolean;

.field private disableInternalwatchDog:Lcom/android/nfc/NfcService$WatchDogThread;

.field initlock:[B

.field private lastPerferredService:Landroid/content/ComponentName;

.field private final mActivateSwpInterface:Landroid/content/BroadcastReceiver;

.field private mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field private final mAidTableReceiver:Landroid/content/BroadcastReceiver;

.field mAutoDisable:Z

.field mAutoEnable:Z

.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field mChipVer:I

.field private mClearNextTapDefault:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field mDebounceTagDebounceMs:I

.field mDebounceTagNativeHandle:I

.field mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

.field mDebounceTagUid:[B

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mEeRoutingState:I

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mEnableNfc:Landroid/content/BroadcastReceiver;

.field mEndSound:I

.field mErrorSound:I

.field mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field mHostRouteEnabled:Z

.field mInProvisionMode:Z

.field mIsDebugBuild:Z

.field mIsFelicaOnHostConfigured:Z

.field mIsFelicaOnHostConfiguring:Z

.field mIsHceCapable:Z

.field mIsHceFCapable:Z

.field mIsLiveCaseEnabled:Z

.field mIsNdefPushEnabled:Z

.field public mIsRouteForced:Z

.field public mIsRoutingTableDirty:Z

.field mIsSentUnicastReception:Z

.field private mIsSmartCardServiceSupported:Z

.field mIsTaskBoot:Z

.field mIsVrModeEnabled:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field mLastReadNdefMessage:Landroid/nfc/NdefMessage;

.field mLiveCaseTechnology:I

.field private mLockscreenPollMask:I

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field private mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field mNfcDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

.field mNfcEventInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNfcPollingEnabled:Z

.field mNfcSccAccessControl:Lcom/android/nfc/NfcSccAccessControl;

.field mNfcSeAccessControl:Lcom/android/nfc/NfcSeAccessControl;

.field private mNfcSecureElementState:Z

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field mNfceeRouteEnabled:Z

.field mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

.field private mNxpNfcController:Lcom/gsma/nfc/internal/NxpNfcController;

.field mNxpNfcState:I

.field private mNxpPrefs:Landroid/content/SharedPreferences;

.field private mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mPowerShutDown:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeEnabled:Z

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSEService:Landroid/se/omapi/ISecureElementService;

.field mScreenState:I

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field mSePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

.field private mSelectedSeId:I

.field private final mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field mVzwService:Lcom/android/nfc/NfcService$NfcVzwService;

.field mWiredSeClass:Ljava/lang/Class;

.field mWiredSeDeInitMwthod:Ljava/lang/reflect/Method;

.field mWiredSeInitMethod:Ljava/lang/reflect/Method;

.field mWiredSeObj:Ljava/lang/Object;

.field nfcIsOpen:Z

.field nfcNeedOpen:Z

.field private paymentDefaultChanged:Z

.field private showGsmaMenu:Ljava/lang/Boolean;

.field private vrManager:Landroid/service/vr/IVrManager;

.field private final x509CertificateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    .line 199
    const-string v1, "NFC_FEATURE_DEFAULT_SWITCH_ENABLE"

    invoke-static {v1, v0}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/nfc/NfcService;->NFC_FEATURE_DEFAULT_SWITCH_ENABLE:Z

    .line 201
    const-string v1, "ZTE_FEATURE_NFC_SIM_ALLIANCE_API"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/nfc/NfcService;->GSMA_MENU_ENABLE:Z

    .line 216
    const-string v1, "/data/nfc/JcopOs_Update1.apdu"

    const-string v3, "/data/nfc/JcopOs_Update2.apdu"

    const-string v4, "/data/nfc/JcopOs_Update3.apdu"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/nfc/NfcService;->path:[Ljava/lang/String;

    .line 220
    const-string v1, "jcop file1 modtime"

    const-string v3, "jcop file2 modtime"

    const-string v4, "jcop file3 modtime"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/nfc/NfcService;->PREF_JCOP_MODTIME:[Ljava/lang/String;

    .line 223
    const/4 v1, 0x3

    new-array v3, v1, [J

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/nfc/NfcService;->JCOP_MODTIME_DEFAULT:[J

    .line 224
    new-array v1, v1, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/nfc/NfcService;->JCOP_MODTIME_TEMP:[J

    .line 465
    const/4 v1, 0x7

    sput v1, Lcom/android/nfc/NfcService;->ALL_SE_ID_TYPE:I

    .line 493
    const/16 v1, 0x10

    sput v1, Lcom/android/nfc/NfcService;->nci_version:I

    .line 604
    sput-boolean v2, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    .line 605
    sput-boolean v2, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 606
    sput-boolean v2, Lcom/android/nfc/NfcService;->sAidTableFull:Z

    .line 609
    sput-boolean v0, Lcom/android/nfc/NfcService;->isSendNfcStateChangeBroadCase:Z

    .line 610
    const-string v0, "ZTE_FEATURE_NFC_SIM_HOT_SWAP"

    invoke-static {v0, v2}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->SIM_HOT_SWAP:Z

    .line 615
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/nfc/NfcService;->multiReceptionMode:Ljava/lang/Boolean;

    .line 616
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/nfc/NfcService;->unicastReceptionMode:Ljava/lang/Boolean;

    .line 630
    const-string v0, "ro.feature.pv_version"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->PV_VERSION:Z

    .line 632
    const-string v0, "FEATURE_FOR_MDM_CONTROL"

    invoke-static {v0, v2}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->FEATURE_FOR_MDM_CONTROL:Z

    .line 637
    sput-boolean v2, Lcom/android/nfc/NfcService;->mZteCellToClose:Z

    .line 641
    const-string v0, "FOR_ZTE_CELL"

    invoke-static {v0, v2}, Lcom/zte/feature/Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->ZTE_CELL_SYSTEM:Z

    .line 648
    new-array v0, v2, [B

    sput-object v0, Lcom/android/nfc/NfcService;->mNfcWaiteLock:[B

    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 24
    .param p1, "nfcApplication"    # Landroid/app/Application;

    move-object/from16 v1, p0

    .line 1045
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    .line 209
    iput v2, v1, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    .line 210
    const/4 v3, 0x1

    iput v3, v1, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

    .line 226
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->ETSI_STOP_CONFIG:Z

    .line 227
    iput v2, v1, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    .line 228
    iput v3, v1, Lcom/android/nfc/NfcService;->ROUTE_ID_SMX:I

    .line 229
    const/4 v4, 0x2

    iput v4, v1, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    .line 230
    const/4 v5, 0x4

    iput v5, v1, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC2:I

    .line 232
    iput v3, v1, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    .line 233
    iput v4, v1, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    .line 234
    iput v5, v1, Lcom/android/nfc/NfcService;->ROUTE_BATT_OFF:I

    .line 236
    iput v3, v1, Lcom/android/nfc/NfcService;->TECH_TYPE_A:I

    .line 237
    iput v4, v1, Lcom/android/nfc/NfcService;->TECH_TYPE_B:I

    .line 238
    iput v5, v1, Lcom/android/nfc/NfcService;->TECH_TYPE_F:I

    .line 242
    iput v2, v1, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    .line 318
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->showGsmaMenu:Ljava/lang/Boolean;

    .line 480
    iput v2, v1, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    .line 482
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsSmartCardServiceSupported:Z

    .line 487
    iput v2, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    .line 488
    iput v3, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_ON:I

    .line 489
    iput v4, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_ON:I

    .line 490
    const/4 v6, 0x3

    iput v6, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_OFF:I

    .line 498
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 515
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    .line 518
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsTaskBoot:Z

    .line 525
    nop

    .line 526
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 535
    const/4 v7, -0x1

    iput v7, v1, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 550
    iget v0, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    iput v0, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 552
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 614
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->defaultTransactionEventReceptionMode:Ljava/lang/Boolean;

    .line 617
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsSentUnicastReception:Z

    .line 619
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->lastPerferredService:Landroid/content/ComponentName;

    .line 620
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->paymentDefaultChanged:Z

    .line 640
    iput-object v0, v1, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    .line 642
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->nfcIsOpen:Z

    .line 643
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->nfcNeedOpen:Z

    .line 644
    new-array v8, v2, [B

    iput-object v8, v1, Lcom/android/nfc/NfcService;->initlock:[B

    .line 645
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mAutoEnable:Z

    .line 646
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mAutoDisable:Z

    .line 647
    iput-object v0, v1, Lcom/android/nfc/NfcService;->autoSwitchTimer:Ljava/util/Timer;

    .line 650
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAidTableReceiver:Landroid/content/BroadcastReceiver;

    .line 677
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 5380
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 5428
    new-instance v0, Lcom/android/nfc/NfcService$4;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->x509CertificateReceiver:Landroid/content/BroadcastReceiver;

    .line 5436
    new-instance v0, Lcom/android/nfc/NfcService$5;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$5;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mEnableNfc:Landroid/content/BroadcastReceiver;

    .line 5446
    new-instance v0, Lcom/android/nfc/NfcService$6;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$6;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mActivateSwpInterface:Landroid/content/BroadcastReceiver;

    .line 5479
    new-instance v0, Lcom/android/nfc/NfcService$7;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$7;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5569
    new-instance v0, Lcom/android/nfc/NfcService$8;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$8;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 5590
    new-instance v0, Lcom/android/nfc/NfcService$9;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$9;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 5602
    new-instance v0, Lcom/android/nfc/NfcService$10;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$10;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 1046
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mUserId:I

    .line 1047
    move-object/from16 v8, p1

    iput-object v8, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 1049
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 1050
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 1051
    new-instance v0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    .line 1052
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    .line 1056
    :try_start_0
    const-string v0, "com.android.nfc.WiredSeService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    .line 1057
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v9, "NfcService"

    const-string v10, "WiredSeService object Instantiation failed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 1058
    :catch_1
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v9, "NfcService"

    const-string v10, "WiredSeService Class not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    nop

    .line 1064
    :goto_1
    const-string v0, "NfcService"

    const-string v9, "Starting NFC service"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sput-object v1, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 1068
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 1069
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1070
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 1072
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 1074
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {v0}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 1075
    move v9, v2

    .line 1077
    .local v9, "isNfcProvisioningEnabled":Z
    :try_start_1
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f070002

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move v9, v0

    .line 1080
    goto :goto_2

    .line 1079
    :catch_2
    move-exception v0

    .line 1083
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f070001

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1086
    goto :goto_3

    .line 1084
    :catch_3
    move-exception v0

    .line 1085
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z

    .line 1088
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_3
    iput v2, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    .line 1091
    :try_start_3
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f080001

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "liveCaseTechList":[Ljava/lang/String;
    move v10, v2

    .local v10, "i":I
    :goto_4
    array-length v11, v0

    if-ge v10, v11, :cond_4

    .line 1093
    aget-object v11, v0, v10

    const-string v12, "TypeA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1094
    iget v11, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/2addr v11, v3

    iput v11, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    goto :goto_5

    .line 1095
    :cond_0
    aget-object v11, v0, v10

    const-string v12, "TypeB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1096
    iget v11, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/2addr v11, v4

    iput v11, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    goto :goto_5

    .line 1097
    :cond_1
    aget-object v11, v0, v10

    const-string v12, "TypeF"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1098
    iget v11, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/2addr v11, v5

    iput v11, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    goto :goto_5

    .line 1099
    :cond_2
    aget-object v11, v0, v10

    const-string v12, "TypeV"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1100
    iget v11, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1092
    :cond_3
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1105
    .end local v10    # "i":I
    :cond_4
    goto :goto_6

    .line 1103
    .end local v0    # "liveCaseTechList":[Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iput v2, v1, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    .line 1107
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_6
    if-eqz v9, :cond_6

    .line 1108
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "device_provisioned"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_7

    :cond_5
    move v0, v2

    :goto_7
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto :goto_8

    .line 1111
    :cond_6
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 1114
    :goto_8
    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v0, :cond_7

    .line 1117
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-boolean v4, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost;->doSetProvisionMode(Z)V

    .line 1120
    :cond_7
    new-instance v0, Lcom/android/nfc/NfcDispatcher;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-boolean v10, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    iget-boolean v11, v1, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;ZZ)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 1122
    new-instance v0, Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 1123
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v10

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v11}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v11

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 1125
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 1126
    iput v3, v1, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    .line 1127
    new-instance v0, Lcom/android/nfc/NfcService$ToastHandler;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/android/nfc/NfcService$ToastHandler;-><init>(Lcom/android/nfc/NfcService;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

    .line 1129
    new-instance v0, Lcom/android/nfc/NfcSccAccessControl;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/nfc/NfcSccAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcSccAccessControl:Lcom/android/nfc/NfcSccAccessControl;

    .line 1130
    new-instance v0, Lcom/android/nfc/NfcSeAccessControl;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/nfc/NfcSeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcSeAccessControl:Lcom/android/nfc/NfcSeAccessControl;

    .line 1131
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcAla;

    invoke-direct {v0}, Lcom/android/nfc/dhimpl/NativeNfcAla;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAla:Lcom/android/nfc/dhimpl/NativeNfcAla;

    .line 1133
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "NfcServicePrefs"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 1134
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 1135
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "NfcServiceNxpPrefs"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    .line 1136
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 1138
    iput v3, v1, Lcom/android/nfc/NfcService;->mState:I

    .line 1139
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "ndef_push_on"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1141
    invoke-static {}, Lcom/android/nfc/NfcService;->isControlledByMdM()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/nfc/NfcService;->isSecSys()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1142
    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1145
    :cond_8
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v1, Lcom/android/nfc/NfcService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 1147
    const-string v0, "userdebug"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move v0, v2

    goto :goto_a

    :cond_a
    :goto_9
    move v0, v3

    :goto_a
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 1149
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 1151
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "NfcService:mRoutingWakeLock"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1153
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "NfcService:mEeWakeLock"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1156
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 1157
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 1158
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    .line 1159
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5, v7}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 1161
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1167
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 1170
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1172
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1173
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1174
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1175
    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1177
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1178
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1180
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v0, "ownerFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1182
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1183
    iget-object v5, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1185
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1186
    .end local v0    # "ownerFilter":Landroid/content/IntentFilter;
    .local v5, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1187
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1188
    const-string v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1189
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    .line 1192
    .local v7, "x509CertificateFilter":Landroid/content/IntentFilter;
    const-string v0, "org.simalliance.openmobileapi.service.ACTION_CHECK_X509_RESULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1193
    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->x509CertificateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.WRITE_SECURE_SETTINGS"

    move-object v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v10, v0

    .line 1197
    .local v10, "activateStkFilter":Landroid/content/IntentFilter;
    const-string v0, "org.codeaurora.intent.action.stk.activate_notify"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1198
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mActivateSwpInterface:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v15, v0

    .line 1201
    .local v15, "enableNfc":Landroid/content/IntentFilter;
    const-string v0, "com.gsma.services.nfc.action.ENABLE_NFC"

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1202
    iget-object v11, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/nfc/NfcService;->mEnableNfc:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v14, v15

    move-object/from16 v17, v15

    move-object v15, v0

    .end local v15    # "enableNfc":Landroid/content/IntentFilter;
    .local v17, "enableNfc":Landroid/content/IntentFilter;
    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1204
    new-instance v0, Landroid/content/IntentFilter;

    const-string v11, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 1207
    .local v11, "lsFilter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v12, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v0

    .line 1208
    .local v21, "policyFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v23}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v12, v0

    .line 1212
    .local v12, "aidTableFullFilter":Landroid/content/IntentFilter;
    const-string v0, "nfc.intent.action.AID_ROUTING_TABLE_FULL"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1213
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/nfc/NfcService;->mAidTableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v13, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1217
    sget-boolean v0, Lcom/android/nfc/NfcService;->SIM_HOT_SWAP:Z

    if-eqz v0, :cond_b

    .line 1218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1219
    .local v0, "simStateChangeReceiverFilter":Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1220
    iget-object v13, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/nfc/NfcService;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1221
    const-string v13, "NfcService"

    const-string v14, "support SIM_HOT_SWAP !"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    .end local v0    # "simStateChangeReceiverFilter":Landroid/content/IntentFilter;
    goto :goto_b

    .line 1223
    :cond_b
    const-string v0, "NfcService"

    const-string v13, "don\'t support SIM_HOT_SWAP !"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 1228
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1229
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.nfc.hce"

    .line 1230
    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.hardware.nfc.hcef"

    .line 1231
    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move v0, v2

    goto :goto_d

    :cond_d
    :goto_c
    move v0, v3

    :goto_d
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 1232
    const-string v0, "android.hardware.nfc.hcef"

    .line 1233
    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    .line 1235
    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_e

    .line 1236
    new-instance v0, Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 1237
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v14, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0, v14, v15}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 1238
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getRegisteredAidCache()Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 1240
    const-string v0, "NfcService"

    const-string v14, "Before mIsHceCapable"

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    new-instance v0, Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v14, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-direct {v0, v14, v15}, Lcom/gsma/nfc/internal/NxpNfcController;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpNfcController:Lcom/gsma/nfc/internal/NxpNfcController;

    .line 1244
    :cond_e
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 1247
    const-string v0, "nfc"

    iget-object v14, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1249
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1251
    sget-boolean v0, Lcom/android/nfc/NfcService;->NFC_FEATURE_DEFAULT_SWITCH_ENABLE:Z

    sput-boolean v0, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    .line 1252
    const-string v0, "NfcService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mNfcDefaultValueBoolean:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-static {}, Lcom/android/nfc/NfcService;->isDualSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1259
    :try_start_4
    const-string v0, "container"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IContainerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    .line 1260
    iget-object v0, v1, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    const-string v14, "NfcService_Listener"

    new-instance v15, Lcom/android/nfc/NfcService$3;

    invoke-direct {v15, v1}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    invoke-interface {v0, v14, v15}, Landroid/os/IContainerService;->registerSwitchListener(Ljava/lang/String;Landroid/os/IContainerSwitchListener;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1349
    goto :goto_e

    .line 1347
    :catch_5
    move-exception v0

    .line 1348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1353
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_e
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1355
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v2, 0x39

    const-wide/32 v14, 0xdbba00

    invoke-virtual {v0, v2, v14, v15}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1357
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v2

    .line 1359
    .local v2, "mVrManager":Landroid/service/vr/IVrManager;
    if-eqz v2, :cond_10

    .line 1361
    :try_start_5
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 1362
    invoke-interface {v2}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1365
    goto :goto_f

    .line 1363
    :catch_6
    move-exception v0

    .line 1364
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to register VR mode state listener: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_f
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->initSoundPool()V

    .line 1371
    return-void
.end method

.method private ByteArrayToString([BI)Ljava/lang/String;
    .locals 4
    .param p1, "b"    # [B
    .param p2, "start"    # I

    .line 1032
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1033
    .local v0, "s":Ljava/lang/StringBuffer;
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1034
    const/16 v2, 0x100

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static CreateSHA(Ljava/lang/String;I)[B
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "alaVer"    # I

    .line 1463
    const-string v0, "Utils:CreateSHA"

    .line 1464
    .local v0, "localTAG":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1467
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1468
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .local v2, "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1482
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1470
    :cond_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1472
    .restart local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 1474
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1475
    .local v3, "byteData":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteData len : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    return-object v3

    .line 1482
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "byteData":[B
    :goto_1
    nop

    .line 1483
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1485
    .end local v2    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method private StopPresenceChecking()V
    .locals 5

    .line 3972
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3973
    .local v0, "objectValues":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3974
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_0

    .line 3975
    nop

    .line 3976
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$TagEndpoint;->stopPresenceChecking()V

    .line 3973
    .end local v3    # "object":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3979
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->showGsmaMenu:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/nfc/NfcService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 180
    iput-object p1, p0, Lcom/android/nfc/NfcService;->showGsmaMenu:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_OFF:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .line 180
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ON_DEFAULT:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 180
    iput p1, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_ID_DEFAULT:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .line 180
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 180
    sget v0, Lcom/android/nfc/NfcService;->ALL_SE_ID_TYPE:I

    return v0
.end method

.method static synthetic access$1972(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 180
    sget v0, Lcom/android/nfc/NfcService;->ALL_SE_ID_TYPE:I

    and-int/2addr v0, p0

    sput v0, Lcom/android/nfc/NfcService;->ALL_SE_ID_TYPE:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    return v0
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .line 180
    sget-object v0, Lcom/android/nfc/NfcService;->path:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 180
    iput p1, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    return p1
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    .line 180
    sget-object v0, Lcom/android/nfc/NfcService;->PREF_JCOP_MODTIME:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()[J
    .locals 1

    .line 180
    sget-object v0, Lcom/android/nfc/NfcService;->JCOP_MODTIME_DEFAULT:[J

    return-object v0
.end method

.method static synthetic access$2300()[J
    .locals 1

    .line 180
    sget-object v0, Lcom/android/nfc/NfcService;->JCOP_MODTIME_TEMP:[J

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .line 180
    sget v0, Lcom/android/nfc/NfcService;->nci_version:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 180
    sput p0, Lcom/android/nfc/NfcService;->nci_version:I

    return p0
.end method

.method static synthetic access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$WatchDogThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->disableInternalwatchDog:Lcom/android/nfc/NfcService$WatchDogThread;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$WatchDogThread;)Lcom/android/nfc/NfcService$WatchDogThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/android/nfc/NfcService$WatchDogThread;

    .line 180
    iput-object p1, p0, Lcom/android/nfc/NfcService;->disableInternalwatchDog:Lcom/android/nfc/NfcService$WatchDogThread;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 180
    sget-boolean v0, Lcom/android/nfc/NfcService;->isSendNfcStateChangeBroadCase:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 180
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 180
    sput-boolean p0, Lcom/android/nfc/NfcService;->isSendNfcStateChangeBroadCase:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 180
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->StopPresenceChecking()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/nfc/NfcService;)Lcom/gsma/nfc/internal/NxpNfcController;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpNfcController:Lcom/gsma/nfc/internal/NxpNfcController;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .line 180
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->TECH_TYPE_A:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 180
    iput p1, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 180
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/nfc/NfcService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->defaultTransactionEventReceptionMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4800()Ljava/lang/Boolean;
    .locals 1

    .line 180
    sget-object v0, Lcom/android/nfc/NfcService;->multiReceptionMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_ON:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isSEServiceAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_ON:I

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 180
    sget-boolean v0, Lcom/android/nfc/NfcService;->mZteCellToClose:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 180
    sput-boolean p0, Lcom/android/nfc/NfcService;->mZteCellToClose:Z

    return p0
.end method

.method static synthetic access$800()[B
    .locals 1

    .line 180
    sget-object v0, Lcom/android/nfc/NfcService;->mNfcWaiteLock:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 180
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    return v0
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 7
    .param p1, "screenState"    # I

    .line 3898
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 3901
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge p1, v2, :cond_0

    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsTaskBoot:Z

    if-eqz v5, :cond_7

    .line 3903
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v5, :cond_6

    .line 3904
    const/4 v5, 0x0

    .line 3905
    .local v5, "techMask":I
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v6, v6, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_1

    .line 3906
    or-int/lit8 v5, v5, 0x1

    .line 3907
    :cond_1
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v6, v6, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 3908
    or-int/lit8 v5, v5, 0x2

    .line 3909
    :cond_2
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v6, v6, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_3

    .line 3910
    or-int/lit8 v5, v5, 0x4

    .line 3911
    :cond_3
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v6, v6, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_4

    .line 3912
    or-int/lit8 v5, v5, 0x8

    .line 3913
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 3914
    or-int/lit8 v5, v5, 0x20

    .line 3916
    :cond_5
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3917
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3918
    .end local v5    # "techMask":I
    goto :goto_0

    .line 3919
    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3920
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3923
    :cond_7
    :goto_0
    const/4 v2, 0x0

    if-ne p1, v3, :cond_9

    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 3924
    invoke-virtual {v5}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v5

    if-nez v5, :cond_9

    .line 3925
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v3, :cond_8

    .line 3926
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3928
    :cond_8
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_1

    .line 3929
    :cond_9
    if-ne p1, v3, :cond_d

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 3930
    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3931
    :cond_a
    const/4 v1, 0x0

    .line 3933
    .local v1, "techMask":I
    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z

    if-eqz v3, :cond_b

    .line 3934
    iget v3, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/2addr v1, v3

    .line 3935
    :cond_b
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v3}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3937
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v3}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v3

    or-int/2addr v1, v3

    .line 3939
    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3940
    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3941
    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3944
    .end local v1    # "techMask":I
    :cond_d
    :goto_1
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez v1, :cond_e

    .line 3946
    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3950
    :cond_e
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    if-eqz v1, :cond_f

    .line 3951
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 3952
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifareDesfireRouteEntry()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3953
    .local v1, "protoRoute":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v3, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3954
    .local v2, "defaultRoute":I
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v4, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifateCLTRouteEntry()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3955
    .local v3, "techRoute":I
    const-string v4, "NfcService"

    const-string v5, "Set default Route Entry"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/nfc/NfcService;->setDefaultRoute(III)Z

    .line 3959
    .end local v1    # "protoRoute":I
    .end local v2    # "defaultRoute":I
    .end local v3    # "techRoute":I
    :cond_f
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .line 745
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method private getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 4170
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4171
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4172
    invoke-static {p2}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4173
    invoke-static {p3}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v1, v1, [B

    .line 4175
    .local v1, "t3tIdBytes":[B
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4176
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4178
    return-object v1
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 3817
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3818
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3819
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3821
    add-int/lit8 v0, v0, 0x1

    .line 3823
    :cond_1
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 3824
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3825
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 3826
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 3824
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 3828
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 3817
    .end local v0    # "len":I
    .end local v1    # "data":[B
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isControlledByMdM()Z
    .locals 1

    .line 5670
    sget-boolean v0, Lcom/android/nfc/NfcService;->FEATURE_FOR_MDM_CONTROL:Z

    return v0
.end method

.method public static isControlledByPV()Z
    .locals 1

    .line 5675
    sget-boolean v0, Lcom/android/nfc/NfcService;->PV_VERSION:Z

    return v0
.end method

.method public static isDualSystem()Z
    .locals 1

    .line 695
    sget-boolean v0, Lcom/android/nfc/NfcService;->ZTE_CELL_SYSTEM:Z

    return v0
.end method

.method public static isNfcDisabledByMDM()Z
    .locals 4

    .line 5684
    invoke-static {}, Lcom/android/nfc/NfcService;->isSecSys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5685
    const-string v0, "persist.sys.ga.nfc.enable"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5686
    .local v0, "isNfcAvailable":I
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNfcDisableByMDM, isNfcAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    if-nez v0, :cond_0

    .line 5688
    const-string v1, "NfcService"

    const-string v2, "isNfcDisableByMDM, NFC disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5689
    const/4 v1, 0x1

    return v1

    .line 5692
    .end local v0    # "isNfcAvailable":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSEServiceAvailable()Z
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-nez v0, :cond_0

    .line 1375
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecSys()Z
    .locals 2

    .line 5680
    const-string v0, "ro.container.security"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isTagPresent()Z
    .locals 3

    .line 3963
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3964
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 3965
    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v0

    return v0

    .line 3967
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 3968
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 5615
    packed-switch p0, :pswitch_data_0

    .line 5625
    const-string v0, "<error>"

    return-object v0

    .line 5623
    :pswitch_0
    const-string v0, "turning off"

    return-object v0

    .line 5621
    :pswitch_1
    const-string v0, "on"

    return-object v0

    .line 5619
    :pswitch_2
    const-string v0, "turning on"

    return-object v0

    .line 5617
    :pswitch_3
    const-string v0, "off"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static toHexString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 3832
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3833
    .local v0, "hexChars":[C
    const/4 v1, 0x2

    mul-int v2, v1, p2

    new-array v2, v2, [C

    .line 3834
    .local v2, "chars":[C
    move v3, p1

    .local v3, "j":I
    :goto_0
    add-int v4, p1, p2

    if-ge v3, v4, :cond_0

    .line 3835
    sub-int v4, v3, p1

    mul-int/2addr v4, v1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v0, v5

    aput-char v5, v2, v4

    .line 3836
    sub-int v4, v3, p1

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v2, v4

    .line 3834
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3838
    .end local v3    # "j":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public GetDefaultMifareDesfireRouteEntry()I
    .locals 5

    .line 4222
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultDesfireRoute()I

    move-result v0

    .line 4223
    .local v0, "routeLoc":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultDesfirePowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 4224
    .local v1, "defaultMifareDesfireRoute":I
    if-nez v0, :cond_0

    .line 4231
    and-int/lit16 v1, v1, 0xf9

    .line 4233
    :cond_0
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultMifareDesfireRoute : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    return v1
.end method

.method public GetDefaultMifateCLTRouteEntry()I
    .locals 5

    .line 4262
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTRoute()I

    move-result v0

    .line 4263
    .local v0, "routeLoc":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTPowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/nfc/NfcService;->TECH_TYPE_A:I

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    .line 4265
    .local v1, "defaultMifateCLTRoute":I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultMifateCLTRoute : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    return v1
.end method

.method public GetDefaultRouteEntry()I
    .locals 5

    .line 4242
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidRoute()I

    move-result v0

    .line 4243
    .local v0, "routeLoc":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 4244
    .local v1, "defaultAidRoute":I
    if-nez v0, :cond_0

    .line 4251
    and-int/lit16 v1, v1, 0xf9

    .line 4253
    :cond_0
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultAidRoute : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    return v1
.end method

.method public GetDefaultRouteLoc()I
    .locals 4

    .line 4212
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v1, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 4213
    .local v0, "defaultRouteLoc":I
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetDefaultRouteLoc  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    return v0
.end method

.method _nfcEeClose(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "callingPid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3466
    monitor-enter p0

    .line 3467
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3470
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-eqz v0, :cond_3

    .line 3473
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3474
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong PID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3476
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    if-ne v0, p2, :cond_2

    .line 3480
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3481
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 3482
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    .line 3483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 3484
    monitor-exit p0

    .line 3485
    return-void

    .line 3477
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong binder handle"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3471
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3468
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3484
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method _nfcEeReset()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3488
    monitor-enter p0

    .line 3489
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3492
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-eqz v0, :cond_0

    .line 3495
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v1, v1, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doReset(I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 3493
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3490
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3496
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method applyRouting(Z)V
    .locals 5
    .param p1, "force"    # Z

    .line 3845
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRouting - enter force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    monitor-enter p0

    .line 3850
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3852
    monitor-exit p0

    return-void

    .line 3854
    :cond_0
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v1, "applyRouting"

    const/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 3855
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v1, :cond_2

    .line 3856
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 3858
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v1, :cond_2

    .line 3861
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 3863
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->doSetProvisionMode(Z)V

    .line 3868
    :cond_2
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3869
    const-string v1, "NfcService"

    const-string v2, "Not updating discovery parameters, tag connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3872
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 3876
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 3878
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 3879
    .local v1, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 3888
    :cond_4
    const-string v2, "NfcService"

    const-string v3, "Discovery configuration equal, not updating."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    goto :goto_2

    .line 3880
    .restart local v1    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3881
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    .line 3882
    .local v2, "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3883
    .end local v2    # "shouldRestart":Z
    goto :goto_1

    .line 3884
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 3886
    :goto_1
    iput-object v1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3891
    .end local v1    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 3892
    nop

    .line 3893
    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    monitor-exit p0

    .line 3894
    return-void

    .line 3891
    .restart local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v1

    .line 3893
    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public clearRouting()V
    .locals 2

    .line 4294
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4295
    return-void
.end method

.method public clearT3tIdentifiersCache()V
    .locals 2

    .line 4196
    const-string v0, "NfcService"

    const-string v1, "clear T3t Identifiers Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->clearT3tIdentifiersCache()V

    .line 4198
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .line 4205
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4206
    return-void
.end method

.method public commitedFelicaRouting()V
    .locals 2

    .line 4284
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4285
    return-void
.end method

.method public commitingFelicaRouting()V
    .locals 2

    .line 4280
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4281
    return-void
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 4063
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 6
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 4071
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 4055
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method public deregisterT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 4189
    const-string v0, "NfcService"

    const-string v1, "request to deregister LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 4192
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4193
    return-void
.end method

.method doDisconnect(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 1445
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1447
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1450
    nop

    .line 1451
    return-void

    .line 1449
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection(I)I
    .locals 2
    .param p1, "seId"    # I

    .line 1423
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1425
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1425
    return v0

    .line 1427
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doReset(I)Z
    .locals 2
    .param p1, "handle"    # I

    .line 1454
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1456
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doReset(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1456
    return v0

    .line 1458
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceive(I[B)[B
    .locals 2
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .line 1432
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1434
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1436
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1434
    return-object v0

    .line 1436
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .locals 1
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .line 1441
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5630
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 5632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5633
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5632
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5635
    return-void

    .line 5638
    :cond_0
    monitor-enter p0

    .line 5639
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNfcPollingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNfceeRouteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpenEe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLockscreenPollMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService;->mLockscreenPollMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5646
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5647
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5648
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 5649
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5651
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5652
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5653
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->dump(Ljava/io/FileDescriptor;)V

    .line 5655
    monitor-exit p0

    .line 5656
    return-void

    .line 5655
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uh"    # Landroid/os/UserHandle;

    .line 2086
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2087
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 2088
    .local v1, "mIpm":Landroid/content/pm/IPackageManager;
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 2089
    .local v2, "isGlobalEnabled":Z
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget v4, p0, Lcom/android/nfc/NfcService;->mUserId:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_1

    .line 2091
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/nfc/BeamShareActivity;

    .line 2092
    invoke-virtual {v4}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v4

    const-class v8, Lcom/android/nfc/BeamShareActivity;

    .line 2093
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2091
    invoke-interface {v1, v3, v4}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    .local v3, "userSetting":I
    if-ne v3, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    move v2, v4

    .line 2097
    .end local v3    # "userSetting":I
    goto :goto_1

    .line 2095
    :catch_0
    move-exception v3

    .line 2096
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get Beam status for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/nfc/NfcService;->isControlledByMdM()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/nfc/NfcService;->isSecSys()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2102
    const/4 v2, 0x0

    .line 2105
    :cond_2
    const-string v3, "no_outgoing_beam"

    .line 2106
    invoke-virtual {v0, v3, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    move v5, v7

    nop

    :cond_3
    move v3, v5

    .line 2109
    .local v3, "isActiveForUser":Z
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enforcing a policy change on user: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isActiveForUser = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/nfc/BeamShareActivity;

    .line 2114
    invoke-virtual {v5}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v5

    const-class v8, Lcom/android/nfc/BeamShareActivity;

    .line 2115
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    if-eqz v3, :cond_4

    .line 2117
    nop

    .line 2118
    move v6, v7

    nop

    .line 2120
    :cond_4
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 2113
    invoke-interface {v1, v4, v6, v7, v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2123
    goto :goto_2

    .line 2121
    :catch_1
    move-exception v4

    .line 2122
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change Beam status for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public enforceNfcSccAdminPerm(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 725
    if-eqz p1, :cond_2

    .line 728
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcSccAccessControl:Lcom/android/nfc/NfcSccAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcSccAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 736
    return-void

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to act as SCC admin"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcscc_access.xml denies NFCSCC access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforceNfcSeAdminPerm(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 700
    if-eqz p1, :cond_2

    .line 703
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcSeAccessControl:Lcom/android/nfc/NfcSeAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcSeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 711
    return-void

    .line 709
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to act as SCC admin"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcse_access.xml denies NFCSe access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforceNfceeAdminPerm(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 713
    if-eqz p1, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 717
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    return-void

    .line 718
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to call SE APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public etsiStartConfig(I)V
    .locals 4
    .param p1, "eeHandle"    # I

    .line 4324
    const-string v0, "NfcService"

    const-string v1, "etsiStartConfig Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    const-string v0, "NfcService"

    const-string v1, "etsiStartConfig : etsiInitConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4327
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->etsiInitConfig()V

    .line 4329
    const-string v0, "NfcService"

    const-string v1, "etsiStartConfig : disableDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 4332
    const-string v0, "NfcService"

    const-string v1, "etsiStartConfig : etsiReaderConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4333
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->etsiReaderConfig(I)V

    .line 4335
    const-string v0, "NfcService"

    const-string v1, "etsiStartConfig : notifyEEReaderEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->notifyEEReaderEvent(I)V

    .line 4338
    const-string v0, "NfcService"

    const-string v1, "etsiStartConfig : setEtsiReaederState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4339
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->setEtsiReaederState(I)V

    .line 4341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4342
    .local v0, "swpReaderRequestedIntent":Landroid/content/Intent;
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_START_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4344
    const-string v1, "NfcService"

    const-string v2, "SWP READER - Requested"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4348
    const-string v1, "NfcService"

    const-string v2, "etsiStartConfig : enableDiscovery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 4351
    const-string v1, "NfcService"

    const-string v2, "etsiStartConfig Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    return-void
.end method

.method public etsiStopConfig(I)V
    .locals 9
    .param p1, "discNtfTimeout"    # I

    .line 4355
    const-string v0, "NfcService"

    const-string v1, "etsiStopConfig Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4356
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getEtsiReaederState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4358
    const-string v0, "NfcService"

    const-string v1, "Attempting etsiStopConfig while STATE_SE_RDR_MODE_STOP_IN_PROGRESS. Returning.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    return-void

    .line 4361
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->ETSI_STOP_CONFIG:Z

    .line 4362
    const-string v1, "NfcService"

    const-string v2, "etsiStopConfig : etsiInitConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4363
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->etsiInitConfig()V

    .line 4365
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 4366
    .local v1, "mTimer":Ljava/util/Timer;
    new-instance v3, Lcom/android/nfc/NfcService$TagRemoveTaskTimer;

    invoke-direct {v3, p0}, Lcom/android/nfc/NfcService$TagRemoveTaskTimer;-><init>(Lcom/android/nfc/NfcService;)V

    .line 4367
    .local v3, "tagRemoveTask":Lcom/android/nfc/NfcService$TagRemoveTaskTimer;
    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 4369
    const-string v2, "NfcService"

    const-string v4, "etsiStopConfig : disableDiscovery"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v0}, Lcom/android/nfc/DeviceHost;->stopPoll(I)V

    .line 4371
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 4373
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getEtsiReaederState()I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    .line 4375
    const-string v0, "NfcService"

    const-string v4, "etsiStopConfig :etsi reader already Stopped. Returning.."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->ETSI_STOP_CONFIG:Z

    .line 4377
    return-void

    .line 4379
    :cond_1
    const-string v0, "NfcService"

    const-string v5, "etsiStopConfig : etsiResetReaderConfig"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->etsiResetReaderConfig()V

    .line 4382
    const-string v0, "NfcService"

    const-string v5, "etsiStopConfig : notifyEEReaderEvent"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4383
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Lcom/android/nfc/DeviceHost;->notifyEEReaderEvent(I)V

    .line 4385
    const-string v0, "NfcService"

    const-string v5, "etsiStopConfig : enable discovery"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    .line 4387
    .local v0, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v5}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v5

    .line 4388
    .local v5, "shouldRestart":Z
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6, v0, v5}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 4390
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 4393
    .local v6, "swpReaderDeActivatedIntent":Landroid/content/Intent;
    const-string v7, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_STOP_SUCCESS"

    .line 4394
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4396
    const-string v7, "NfcService"

    const-string v8, "SWP READER - DeActivated"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4398
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4400
    const-string v7, "NfcService"

    const-string v8, "etsiStopConfig : setEtsiReaederState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7, v4}, Lcom/android/nfc/DeviceHost;->setEtsiReaederState(I)V

    .line 4403
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->ETSI_STOP_CONFIG:Z

    .line 4404
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->updateLastScreenState()V

    .line 4406
    const-string v2, "NfcService"

    const-string v4, "etsiStopConfig Exit"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    return-void
.end method

.method findAndRemoveObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "handle"    # I

    .line 4027
    monitor-enter p0

    .line 4028
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4029
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 4030
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4032
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4034
    :goto_0
    monitor-exit p0

    return-object v0

    .line 4035
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method findObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .line 4017
    monitor-enter p0

    .line 4018
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4019
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 4020
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    :cond_0
    monitor-exit p0

    return-object v0

    .line 4023
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAidRoutingTableSize()I
    .locals 2

    .line 4128
    const/4 v0, 0x0

    .line 4129
    .local v0, "aidTableSize":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getAidTableSize()I

    move-result v0

    .line 4130
    return v0
.end method

.method public getAidRoutingTableStatus()I
    .locals 4

    .line 4288
    const/4 v0, 0x0

    .line 4289
    .local v0, "aidTableStatus":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_SET_AID_ROUTING_TABLE_FULL"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4290
    return v0
.end method

.method public getCardEmulationManager()Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object v0
.end method

.method public getChangedFlag()Z
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->paymentDefaultChanged:Z

    return v0
.end method

.method public getChipVer()I
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getChipVer()I

    move-result v0

    return v0
.end method

.method public getDefaultRoute()I
    .locals 3

    .line 4275
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_route_id"

    iget v2, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultSecureElement()I
    .locals 3

    .line 4306
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 4307
    .local v0, "seList":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4311
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 4309
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public getLastCommitRoutingStatus()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getLastCommitRoutingStatus()Z

    move-result v0

    return v0
.end method

.method public getLastPerferredService()Landroid/content/ComponentName;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/android/nfc/NfcService;->lastPerferredService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLfT3tMax()I
    .locals 1

    .line 4201
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getLfT3tMax()I

    move-result v0

    return v0
.end method

.method public getNciVersion()I
    .locals 1

    .line 4167
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getNciVersion()I

    move-result v0

    return v0
.end method

.method public getRemainingAidTableSize()I
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getRemainingAidTableSize()I

    move-result v0

    return v0
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 801
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    monitor-enter p0

    .line 2082
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/NfcService;
    throw v0
.end method

.method initSoundPool()V
    .locals 4

    .line 1382
    monitor-enter p0

    .line 1383
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1384
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 1385
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050002

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 1386
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 1387
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 1389
    :cond_0
    monitor-exit p0

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabled()Z
    .locals 2

    .line 3725
    monitor-enter p0

    .line 3726
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 3727
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .line 3719
    monitor-enter p0

    .line 3720
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 3721
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVzwFeatureEnabled()Z
    .locals 1

    .line 4298
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->isVzwFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method maybeDisconnectTarget()V
    .locals 7

    .line 3985
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3986
    return-void

    .line 3989
    :cond_0
    monitor-enter p0

    .line 3990
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3993
    .local v0, "objectValues":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 3994
    .local v1, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 3995
    .end local v0    # "objectValues":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3996
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    .line 3997
    .local v3, "o":Ljava/lang/Object;
    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnecting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_1

    .line 4000
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 4001
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4002
    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    goto :goto_1

    :cond_1
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v4, :cond_2

    .line 4004
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 4005
    .local v4, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v5

    if-nez v5, :cond_2

    .line 4007
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3996
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4014
    :cond_3
    return-void

    .line 3995
    .end local v1    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyRoutingTableFull()V
    .locals 4

    .line 4080
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

    const-string v1, "Last installed NFC Service is not enabled due to limited resources. To enable this service, please disable other servives in Settings Menu"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService$ToastHandler;->showToast(Ljava/lang/CharSequence;I)V

    .line 4083
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpNfcController:Lcom/gsma/nfc/internal/NxpNfcController;

    invoke-virtual {v0}, Lcom/gsma/nfc/internal/NxpNfcController;->isGsmaCommitOffhostService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4084
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getPreviousPreferredPaymentService()Landroid/content/ComponentName;

    move-result-object v0

    .line 4086
    .local v0, "prevPaymentComponent":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 4087
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREF_SET_AID_ROUTING_TABLE_FULL"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4088
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4090
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4091
    .local v1, "aidTableFull":Landroid/content/Intent;
    const-string v2, "com.gsma.services.nfc.extra.PREV_PAYMENT_COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4092
    const-string v2, "nfc.intent.action.AID_ROUTING_TABLE_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4094
    const-string v2, "NfcService"

    const-string v3, "notify aid routing table full to the user"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4097
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setPreviousPreferredPaymentService(Landroid/content/ComponentName;)V

    .line 4100
    .end local v0    # "prevPaymentComponent":Landroid/content/ComponentName;
    .end local v1    # "aidTableFull":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onAidRoutingTableFull()V
    .locals 2

    .line 826
    const-string v0, "NfcService"

    const-string v1, "NxpNci: onAidRoutingTableFull: AID Routing Table is FULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 835
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onRoutingTableChanged()V

    .line 837
    :cond_0
    return-void
.end method

.method public onCardEmulationDeselected()V
    .locals 2

    .line 770
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 771
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 773
    return-void
.end method

.method public onConnectivityEvent(I)V
    .locals 3
    .param p1, "evtSrc"    # I

    .line 780
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectivityEvent : Source"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 782
    return-void
.end method

.method public onETSIReaderModeRestart()V
    .locals 2

    .line 1000
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1001
    return-void
.end method

.method public onETSIReaderModeStartConfig(I)V
    .locals 2
    .param p1, "eeHandle"    # I

    .line 972
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    return-void

    .line 975
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v0, "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 978
    return-void
.end method

.method public onETSIReaderModeStopConfig(I)V
    .locals 4
    .param p1, "disc_ntf_timeout"    # I

    .line 984
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    return-void

    .line 987
    :cond_0
    new-instance v0, Lcom/android/nfc/NfcService$EtsiStopConfigTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EtsiStopConfigTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 988
    .local v0, "task":Lcom/android/nfc/NfcService$EtsiStopConfigTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EtsiStopConfigTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 990
    return-void
.end method

.method public onETSIReaderModeSwpTimeout(I)V
    .locals 2
    .param p1, "disc_ntf_timeout"    # I

    .line 995
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 996
    return-void
.end method

.method public onETSIReaderRequestedEvent(ZZ)V
    .locals 3
    .param p1, "istechA"    # Z
    .param p2, "istechB"    # Z

    .line 952
    const/4 v0, 0x0

    .line 953
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 954
    .local v1, "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 955
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_0
    if-eqz p2, :cond_1

    .line 957
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_1
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 960
    return-void
.end method

.method public onETSIReaderRequestedFail(I)V
    .locals 2
    .param p1, "FailCause"    # I

    .line 965
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 966
    return-void
.end method

.method public onEmvcoMultiCardDetectedEvent()V
    .locals 2

    .line 786
    const-string v0, "NfcService"

    const-string v1, "onEmvcoMultiCardDetectedEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 788
    return-void
.end method

.method public onFwDwnldReqRestartNfc()V
    .locals 4

    .line 1020
    const-string v0, "NfcService"

    const-string v1, "Restart NFC:When Fw dwnld request was stored during SPI onGoing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1022
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 795
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 798
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .locals 1
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 855
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData(I[B)V

    .line 858
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 862
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 865
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 867
    :cond_0
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 890
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 891
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 892
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 874
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 875
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 882
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 883
    return-void
.end method

.method public onNfcTransactionEvent([B[BLjava/lang/String;)V
    .locals 3
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "seName"    # Ljava/lang/String;

    .line 1026
    const-string v0, "NfcService"

    const-string v1, "onNfcTransactionEvent come in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1028
    .local v0, "dataObj":[[B
    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1029
    return-void
.end method

.method public onNotifyReRoutingEntry()V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onReRoutingEntry()V

    .line 851
    :cond_0
    return-void
.end method

.method public onNotifyT3tConfigure()V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onT3tConfigure()V

    .line 844
    :cond_0
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 750
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 751
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .line 896
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 897
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 899
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .line 903
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 904
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 906
    return-void
.end method

.method public onRestartWatchDog(I)V
    .locals 4
    .param p1, "enable"    # I

    .line 1015
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restart Watchdog: WatchDog Thread ID is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->disableInternalwatchDog:Lcom/android/nfc/NfcService$WatchDogThread;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1017
    return-void
.end method

.method public onSeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .line 930
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 931
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 933
    return-void
.end method

.method public onSeEmvCardRemoval()V
    .locals 2

    .line 937
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 938
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 940
    return-void
.end method

.method public onSeListenActivated()V
    .locals 2

    .line 910
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 911
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 913
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 916
    :cond_0
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .line 920
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 921
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 923
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 926
    :cond_0
    return-void
.end method

.method public onSeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .line 944
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 945
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 947
    return-void
.end method

.method public onUiccStatusEvent(I)V
    .locals 3
    .param p1, "uiccStat"    # I

    .line 1006
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting UICC Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1008
    .local v0, "uiccStatusIntent":Landroid/content/Intent;
    const-string v1, "com.nxp.action.UICC_STATUS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v1, "com.nxp.extra.UICC_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1010
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1011
    return-void
.end method

.method public playSound(I)V
    .locals 8
    .param p1, "sound"    # I

    .line 2057
    monitor-enter p0

    .line 2058
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 2059
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    monitor-exit p0

    return-void

    .line 2063
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_1

    .line 2064
    const-string v0, "NfcService"

    const-string v1, "Not playing NFC sound when Vr Mode is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    monitor-exit p0

    return-void

    .line 2067
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2075
    :pswitch_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 2072
    :pswitch_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2073
    goto :goto_0

    .line 2069
    :pswitch_2
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2070
    nop

    .line 2078
    :goto_0
    monitor-exit p0

    .line 2079
    return-void

    .line 2078
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 4182
    const-string v0, "NfcService"

    const-string v1, "request to register LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 4185
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0x36

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4186
    return-void
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 2
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 4039
    monitor-enter p0

    .line 4040
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4041
    monitor-exit p0

    .line 4042
    return-void

    .line 4041
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseSoundPool()V
    .locals 1

    .line 1393
    monitor-enter p0

    .line 1394
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 1398
    :cond_0
    monitor-exit p0

    .line 1399
    return-void

    .line 1398
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public routeAids(Ljava/lang/String;III)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "powerState"    # I
    .param p4, "aidInfo"    # I

    .line 4134
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4135
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4136
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4137
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 4138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4139
    .local v1, "aidbundle":Landroid/os/Bundle;
    const-string v2, "aidinfo"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4140
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4141
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4142
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4143
    return-void
.end method

.method public routeApduPattern(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "apdu"    # Ljava/lang/String;
    .param p2, "mask"    # Ljava/lang/String;
    .param p3, "route"    # I
    .param p4, "powerState"    # I

    .line 4150
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4151
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4152
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 4153
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 4154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4155
    .local v1, "apduPatternbundle":Landroid/os/Bundle;
    const-string v2, "apduData"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4156
    const-string v2, "apduMask"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4157
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4158
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4159
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 2049
    monitor-enter p0

    .line 2050
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2051
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2052
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 2053
    monitor-exit p0

    .line 2054
    return-void

    .line 2053
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendData([B)Z
    .locals 1
    .param p1, "data"    # [B

    .line 4302
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 4410
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4411
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4412
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4413
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4414
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 4075
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4076
    return-void
.end method

.method public setChangedFlag(Z)V
    .locals 0
    .param p1, "paymentDefaultChanged"    # Z

    .line 816
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->paymentDefaultChanged:Z

    .line 817
    return-void
.end method

.method public setDefaultAidRouteLoc(I)V
    .locals 5
    .param p1, "routeLoc"    # I

    .line 4106
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 4107
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing to preferences setDefaultAidRouteLoc  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    .line 4110
    .local v0, "defaultAidRoute":I
    if-nez p1, :cond_0

    .line 4117
    and-int/lit16 v0, v0, 0xe9

    .line 4120
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4121
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4122
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_SET_DEFAULT_ROUTE_ID"

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4123
    .local v1, "defaultRoute":I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading preferences from user  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    return-void
.end method

.method public setDefaultRoute(III)Z
    .locals 1
    .param p1, "defaultRouteEntry"    # I
    .param p2, "defaultProtoRouteEntry"    # I
    .param p3, "defaultTechRouteEntry"    # I

    .line 4270
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/nfc/DeviceHost;->setDefaultRoute(III)Z

    move-result v0

    .line 4271
    .local v0, "ret":Z
    return v0
.end method

.method public setLastPerferredService(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "lastPerferredService"    # Landroid/content/ComponentName;

    .line 810
    iput-object p1, p0, Lcom/android/nfc/NfcService;->lastPerferredService:Landroid/content/ComponentName;

    .line 811
    return-void
.end method

.method unregisterObject(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 4045
    monitor-enter p0

    .line 4046
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4047
    monitor-exit p0

    .line 4048
    return-void

    .line 4047
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .line 4146
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4147
    return-void
.end method

.method public unrouteApduPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "apdu"    # Ljava/lang/String;

    .line 4163
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-static {p1}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->unrouteApduPattern([B)Z

    .line 4164
    return-void
.end method

.method public updateLastScreenState()V
    .locals 2

    .line 4317
    const-string v0, "NfcService"

    const-string v1, "updateLastScreenState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4319
    const/16 v0, 0x10

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 4320
    .local v0, "screen_state_mask":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    .line 4321
    return-void
.end method

.method updatePackageCache()V
    .locals 10

    .line 1402
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1403
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 1404
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 1405
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1406
    nop

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1407
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1408
    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    const-string v4, "android.permission.NFC"

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1409
    .local v4, "hasNfcPermission":I
    const-string v5, "android.permission.NFC_TRANSACTION_EVENT"

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1410
    .local v5, "hasAndroidPermission":I
    const-string v6, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1411
    .local v6, "hasGsmaPermission":I
    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    :cond_0
    if-nez v4, :cond_1

    .line 1412
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    const-string v7, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePackageCache  i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " pInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " has hasGsmaPermission:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " has hasAndroidPermission:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "hasNfcPermission":I
    .end local v5    # "hasAndroidPermission":I
    .end local v6    # "hasGsmaPermission":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1417
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    .line 1418
    return-void

    .line 1417
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStatusOfServices(Z)V
    .locals 2
    .param p1, "commitStatus"    # Z

    .line 5661
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5663
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setPreviousPreferredPaymentService(Landroid/content/ComponentName;)V

    .line 5665
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->updateStatusOfServices(Z)V

    .line 5666
    return-void
.end method
