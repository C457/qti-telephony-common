.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$TagRemoveTaskTimer;,
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$ToastHandler;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;,
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
.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field public static final AID_ENTRY:I = 0x4

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field static final DBG:Z = true

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final EE_HANDLE_0xF3:I = 0x4c0

.field static final ETSI_PRESENCE_CHECK_DELAY:I = 0x3e8

.field public static final ETSI_READER_ACTIVATED:I = 0x2

.field public static final ETSI_READER_START_FAIL:I = 0x1

.field public static final ETSI_READER_START_SUCCESS:I = 0x0

.field public static final ETSI_READER_STOP:I = 0x3

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field static final INVALID_NATIVE_HANDLE:I = -0x1

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MSG_APPLY_SCREEN_STATE:I = 0x10

.field static final MSG_CARD_EMULATION:I = 0x15

.field static final MSG_CLEAR_ROUTING:I = 0x3e

.field static final MSG_COMMIT_ROUTING:I = 0x7

.field static final MSG_COMPUTE_ROUTING_PARAMS:I = 0x40

.field static final MSG_DEINIT_WIREDSE:I = 0x42

.field static final MSG_DEREGISTER_T3T_IDENTIFIER:I = 0xd

.field static final MSG_INIT_WIREDSE:I = 0x3f

.field static final MSG_INVOKE_BEAM:I = 0x8

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x1

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x2

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0x4

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_READ_T4TNFCEE:I = 0x43

.field static final MSG_REGISTER_T3T_IDENTIFIER:I = 0xc

.field static final MSG_RESET_AND_UPDATE_ROUTING_PARAMS:I = 0x41

.field static final MSG_RESUME_POLLING:I = 0xb

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x9

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xa

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_SCR_REMOVE_CARD:I = 0x49

.field static final MSG_SCR_REQUESTED_FAIL:I = 0x14

.field static final MSG_SCR_RESTART:I = 0x3a

.field static final MSG_SCR_START_FAIL:I = 0x46

.field static final MSG_SCR_START_SUCCESS:I = 0x45

.field static final MSG_SCR_STOP_FAIL:I = 0x48

.field static final MSG_SCR_STOP_SUCCESS:I = 0x47

.field static final MSG_SCR_TIMEOUT:I = 0x32

.field static final MSG_SE_INIT:I = 0x3b

.field static final MSG_TAG_DEBOUNCE:I = 0xe

.field static final MSG_TRANSACTION_EVENT:I = 0x11

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final MSG_UPDATE_STATS:I = 0xf

.field static final MSG_WRITE_T4TNFCEE:I = 0x44

.field public static final NCI_VERSION_1_0:I = 0x10

.field public static final NCI_VERSION_2_0:I = 0x20

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field static final NFC_FEATURE_DEFAULT_SWITCH_ENABLE:Z

.field public static final NFC_LISTEN_PROTO_ISO7816:I = 0x20

.field public static final NFC_LISTEN_PROTO_ISO_DEP:I = 0x1

.field public static final NFC_LISTEN_PROTO_NFC_DEP:I = 0x2

.field public static final NFC_LISTEN_PROTO_T3T:I = 0x4

.field public static final NFC_LISTEN_TECH_A:I = 0x1

.field public static final NFC_LISTEN_TECH_B:I = 0x2

.field public static final NFC_LISTEN_TECH_F:I = 0x4

.field static final NFC_ON_DEFAULT:Z = true

.field static final NFC_POLLING_MODE:I = 0x8

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_KOVIO:I = 0x20

.field static final NFC_POLL_V:I = 0x8

.field public static final NXP_PREF:Ljava/lang/String; = "NfcServiceNxpPrefs"

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field private static final PREF_CUR_SELECTED_UICC_ID:Ljava/lang/String; = "current_selected_uicc_id"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field static final PREF_SECURE_NFC_ON:Ljava/lang/String; = "secure_nfc_on"

.field public static final PROTOCOL_ENTRY:I = 0x2

.field public static final ROUTE_LOC_MASK:I = 0x8

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field static final SECURE_NFC_ON_DEFAULT:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

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

.field public static final T4TNFCEE_STATUS_FAILED:I = -0x1

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_ENABLE:I = 0x1

.field public static final TECH_ENTRY:I = 0x1

.field static final TECH_TYPE_A:I = 0x1

.field public static final TECH_TYPE_MASK:I = 0xb

.field public static final TRANSIT_SETCONFIG_STAT_FAILED:I = 0xff

.field public static final TRANSIT_SETCONFIG_STAT_SUCCESS:I = 0x0

.field static final TRON_NFC_CE:Ljava/lang/String; = "nfc_ce"

.field static final TRON_NFC_P2P:Ljava/lang/String; = "nfc_p2p"

.field static final TRON_NFC_TAG:Ljava/lang/String; = "nfc_tag"

.field public static final UICC2_ID_TYPE:I = 0x4

.field static final UICC_CONFIGURED:I = 0x0

.field public static final UICC_ID_TYPE:I = 0x2

.field static final UICC_NOT_CONFIGURED:I = 0x1

.field static mNfcDefaultValueBoolean:Z

.field private static mToast:Landroid/widget/Toast;

.field private static nci_version:I

.field public static sIsDtaMode:Z

.field public static sIsShortRecordLayout:Z

.field private static sService:Lcom/android/nfc/NfcService;


# instance fields
.field private DEFAULT_ROUTE_ID_DEFAULT:I

.field private NXP_NFC_STATE_OFF:I

.field private NXP_NFC_STATE_ON:I

.field private NXP_NFC_STATE_TURNING_OFF:I

.field private NXP_NFC_STATE_TURNING_ON:I

.field private ROUTE_ID_HOST:I

.field private ROUTE_ID_SMX:I

.field private ROUTE_ID_UICC:I

.field private ROUTE_ID_UICC2:I

.field private SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

.field public isWiredOpen:Z

.field private mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field mDebounceTagDebounceMs:I

.field mDebounceTagNativeHandle:I

.field mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

.field mDebounceTagUid:[B

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mEndSound:I

.field mErrorSound:I

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field mInProvisionMode:Z

.field mIsBeamCapable:Z

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsHceFCapable:Z

.field mIsNdefPushEnabled:Z

.field public mIsRouteForced:Z

.field mIsSecureElementOpened:Z

.field mIsSecureNfcCapable:Z

.field mIsSecureNfcEnabled:Z

.field mIsVrModeEnabled:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field mLastReadNdefMessage:Landroid/nfc/NdefMessage;

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

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

.field mNfcExtnsClass:Ljava/lang/Class;

.field mNfcExtnsObj:Ljava/lang/Object;

.field mNfcExtraClass:Ljava/lang/Class;

.field mNfcExtraObj:Ljava/lang/Object;

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNxpExtrasService:Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

.field mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

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

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSEClientAccessState:Z

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

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field private mT4tNfcEeObj:Ljava/lang/Object;

.field private mT4tNfceeReturnBundle:Landroid/os/Bundle;

.field mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field mWiredSeClass:Ljava/lang/Class;

.field mWiredSeDeInitMethod:Ljava/lang/reflect/Method;

.field mWiredSeInitMethod:Ljava/lang/reflect/Method;

.field mWiredSeObj:Ljava/lang/Object;

.field private vrManager:Landroid/service/vr/IVrManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    .line 172
    const-string v1, "ro.feature.nfc_feature_default_switch_enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/nfc/NfcService;->NFC_FEATURE_DEFAULT_SWITCH_ENABLE:Z

    .line 287
    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 355
    const/16 v1, 0x10

    sput v1, Lcom/android/nfc/NfcService;->nci_version:I

    .line 447
    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 18
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .line 626
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

    .line 328
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    .line 329
    iput v2, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_ON:I

    .line 330
    const/4 v4, 0x2

    iput v4, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_ON:I

    .line 331
    const/4 v5, 0x3

    iput v5, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_OFF:I

    .line 359
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->isWiredOpen:Z

    .line 360
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 371
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    .line 376
    nop

    .line 377
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 387
    const/4 v6, -0x1

    iput v6, v1, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 402
    iget v0, v1, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    iput v0, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 419
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mIsSecureElementOpened:Z

    .line 420
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mSEClientAccessState:Z

    .line 461
    iput v3, v1, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    .line 462
    iput v2, v1, Lcom/android/nfc/NfcService;->ROUTE_ID_SMX:I

    .line 463
    iput v4, v1, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    .line 464
    const/4 v0, 0x4

    iput v0, v1, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC2:I

    .line 465
    iput v3, v1, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    .line 468
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mT4tNfcEeObj:Ljava/lang/Object;

    .line 469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mT4tNfceeReturnBundle:Landroid/os/Bundle;

    .line 3835
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 3871
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3939
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 3957
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 3969
    new-instance v0, Lcom/android/nfc/NfcService$4;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 627
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mUserId:I

    .line 628
    move-object/from16 v7, p1

    iput-object v7, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 630
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 631
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 633
    new-instance v0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    .line 634
    new-instance v0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpExtrasService:Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;

    .line 635
    const-string v8, "NfcService"

    const-string v0, "Starting NFC service"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :try_start_0
    const-string v0, "com.android.nfc.WiredSeService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    .line 639
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mWiredSeObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v9, "WiredSeService object Instantiation failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 640
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 641
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v9, "WiredSeService Class not found"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    nop

    .line 645
    :goto_1
    sput-object v1, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 647
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 648
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 649
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 652
    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    aput-object v9, v0, v3

    .line 653
    .local v0, "objargs":[Ljava/lang/Object;
    const-string v9, "com.android.nfc.NfcExtnsService"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    iput-object v9, v1, Lcom/android/nfc/NfcService;->mNfcExtnsClass:Ljava/lang/Class;

    .line 654
    iget-object v9, v1, Lcom/android/nfc/NfcService;->mNfcExtnsClass:Ljava/lang/Class;

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 655
    .local v9, "mNfcConstr":Ljava/lang/reflect/Constructor;
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v1, Lcom/android/nfc/NfcService;->mNfcExtnsObj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v0    # "objargs":[Ljava/lang/Object;
    .end local v9    # "mNfcConstr":Ljava/lang/reflect/Constructor;
    goto :goto_2

    .line 662
    :catch_2
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v9, " InvocationTargetException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 660
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v9, " NoSuchMethodException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 658
    :catch_4
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v9, "NfcExtnsService object Instantaiation failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_2

    .line 656
    :catch_5
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v9, "NfcExtnsService not found"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    nop

    .line 665
    :goto_3
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    aput-object v9, v0, v3

    iget-object v9, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    aput-object v9, v0, v2

    move-object v9, v0

    .line 667
    .local v9, "args":[Ljava/lang/Object;
    :try_start_2
    const-string v0, "com.android.nfc.NfcAdapterExtrasService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcExtraClass:Ljava/lang/Class;

    .line 668
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNfcExtraClass:Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Class;

    const-class v10, Lcom/android/nfc/DeviceHost;

    aput-object v10, v4, v3

    const-class v10, Landroid/content/Context;

    aput-object v10, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 669
    .local v0, "mNfcExtraConstr":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/android/nfc/NfcService;->mNfcExtraObj:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_6

    .end local v0    # "mNfcExtraConstr":Ljava/lang/reflect/Constructor;
    goto :goto_4

    .line 679
    :catch_6
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v4, "NfcAdapterExtrasService object Instantiation failed"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_5

    .line 676
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_7
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v4, "NfcAdapterExtrasService Class not found"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    goto :goto_4

    .line 673
    :catch_8
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "NfcAdapterExtrasService InvocationTargetException"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_4

    .line 670
    :catch_9
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "NfcAdapterExtrasService NoSuchMethodException"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 682
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_4
    nop

    .line 684
    :goto_5
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 686
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {v0}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 687
    const/4 v4, 0x0

    .line 689
    .local v4, "isNfcProvisioningEnabled":Z
    :try_start_3
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v10, 0x7f030000

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_a

    move v4, v0

    .line 692
    goto :goto_6

    .line 691
    :catch_a
    move-exception v0

    .line 694
    :goto_6
    if-eqz v4, :cond_1

    .line 695
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "device_provisioned"

    invoke-static {v0, v10, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_7

    :cond_0
    move v0, v3

    :goto_7
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto :goto_8

    .line 698
    :cond_1
    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 701
    :goto_8
    new-instance v0, Lcom/android/nfc/NfcDispatcher;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-boolean v12, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v0, v10, v11, v12}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 703
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 704
    new-instance v0, Lcom/android/nfc/NfcService$ToastHandler;

    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/android/nfc/NfcService$ToastHandler;-><init>(Lcom/android/nfc/NfcService;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

    .line 705
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "NfcServicePrefs"

    invoke-virtual {v0, v10, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 706
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 707
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "NfcServiceNxpPrefs"

    invoke-virtual {v0, v10, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    .line 708
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 710
    iput v2, v1, Lcom/android/nfc/NfcService;->mState:I

    .line 712
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v10, "userdebug"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v10, "eng"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_9

    :cond_2
    move v0, v3

    goto :goto_a

    :cond_3
    :goto_9
    move v0, v2

    :goto_a
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 714
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "power"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 716
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v10, "NfcService:mRoutingWakeLock"

    invoke-virtual {v0, v2, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 718
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v10, "NfcService:mEeWakeLock"

    invoke-virtual {v0, v2, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 720
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 721
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "user"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 722
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v10, "vibrator"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    .line 723
    const-wide/16 v10, 0xc8

    invoke-static {v10, v11, v6}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 725
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 727
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 728
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 729
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 731
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v6, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 734
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 735
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v6

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 740
    new-instance v0, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, "ownerFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    iget-object v10, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 745
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 746
    .end local v0    # "ownerFilter":Landroid/content/IntentFilter;
    .local v10, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v0, "package"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 749
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 751
    new-instance v15, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v15, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 752
    .local v15, "policyFilter":Landroid/content/IntentFilter;
    iget-object v12, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 756
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 757
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.sofware.nfc.beam"

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    .line 758
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 759
    const-string v12, "ndef_push_on"

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_b

    :cond_4
    move v0, v3

    :goto_b
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 761
    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v0, :cond_5

    .line 762
    new-instance v0, Lcom/android/nfc/P2pLinkManager;

    iget-object v12, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v14, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 763
    invoke-interface {v14}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v14

    iget-object v5, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 764
    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v5

    invoke-direct {v0, v12, v13, v14, v5}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 766
    :cond_5
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v12, v1, Lcom/android/nfc/NfcService;->mUserId:I

    invoke-direct {v5, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v5}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 768
    nop

    .line 769
    const-string v0, "android.hardware.nfc.hce"

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "android.hardware.nfc.hcef"

    if-nez v0, :cond_7

    .line 770
    invoke-virtual {v11, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_c

    :cond_6
    move v0, v3

    goto :goto_d

    :cond_7
    :goto_c
    move v0, v2

    :goto_d
    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 771
    nop

    .line 772
    invoke-virtual {v11, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    .line 773
    iget-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_8

    .line 774
    new-instance v0, Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 775
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v5, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 776
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getRegisteredAidCache()Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 778
    :cond_8
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 780
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->deviceSupportsNfcSecure()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcCapable:Z

    .line 781
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 785
    const-string v5, "secure_nfc_on"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    .line 786
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-boolean v5, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    invoke-interface {v0, v5}, Lcom/android/nfc/DeviceHost;->setNfcSecure(Z)Z

    .line 789
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const-string v5, "nfc"

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 792
    sget-boolean v0, Lcom/android/nfc/NfcService;->NFC_FEATURE_DEFAULT_SWITCH_ENABLE:Z

    sput-boolean v0, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNfcDefaultValueBoolean: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 798
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v2, 0xf

    const-wide/32 v12, 0xdbba00

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 800
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v2

    .line 802
    .local v2, "mVrManager":Landroid/service/vr/IVrManager;
    if-eqz v2, :cond_9

    .line 804
    :try_start_4
    iget-object v0, v1, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 805
    invoke-interface {v2}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_b

    .line 808
    goto :goto_e

    .line 806
    :catch_b
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    :goto_e
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 812
    return-void
.end method

.method private StopPresenceChecking()V
    .locals 6

    .line 2805
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2806
    .local v0, "objectValues":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2807
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_0

    .line 2808
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2809
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    move-object v5, v3

    check-cast v5, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$TagEndpoint;->stopPresenceChecking()V

    .line 2806
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2812
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_ON:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_OFF:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_ON:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget v0, p0, Lcom/android/nfc/NfcService;->NXP_NFC_STATE_TURNING_OFF:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 156
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->computeAndSetRoutingParameters()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->StopPresenceChecking()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mT4tNfcEeObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/nfc/NfcService;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mT4tNfceeReturnBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isSEServiceAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$3400()Landroid/widget/Toast;
    .locals 1

    .line 156
    sget-object v0, Lcom/android/nfc/NfcService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3402(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Toast;

    .line 156
    sput-object p0, Lcom/android/nfc/NfcService;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget v0, p0, Lcom/android/nfc/NfcService;->SECURE_ELEMENT_UICC_SLOT_DEFAULT:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 156
    sget v0, Lcom/android/nfc/NfcService;->nci_version:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 156
    sput p0, Lcom/android/nfc/NfcService;->nci_version:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/nfc/NfcService;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .line 156
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .line 156
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method private computeAndSetRoutingParameters()V
    .locals 14

    .line 2758
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifareDesfireRouteEntry()I

    move-result v1

    const-string v2, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2759
    .local v0, "protoRoute":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v2

    const-string v3, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2760
    .local v1, "defaultRoute":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifateCLTRouteEntry()I

    move-result v3

    const-string v4, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2761
    .local v2, "techRoute":I
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultFelicaCLTRouteEntry()I

    move-result v4

    const-string v5, "PREF_FELICA_CLT_ROUTE_ID"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2763
    .local v3, "techfRoute":I
    const/4 v4, 0x0

    .line 2764
    .local v4, "TechRoute":I
    const-string v5, "Set Routing Entry"

    const-string v6, "NfcService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getNciVersion()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v11, 0x10

    if-ne v7, v11, :cond_0

    .line 2767
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/16 v11, 0x20

    shr-int/lit8 v12, v1, 0x8

    and-int/lit8 v12, v12, 0x7

    and-int/lit8 v13, v1, 0x3f

    invoke-interface {v7, v9, v11, v12, v13}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2769
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    const/4 v11, 0x4

    invoke-interface {v7, v9, v11, v8, v10}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2771
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    shr-int/lit8 v11, v0, 0x8

    and-int/lit8 v11, v11, 0x7

    and-int/lit8 v12, v0, 0x3f

    invoke-interface {v7, v9, v10, v11, v12}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2772
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7, v9, v9, v8, v10}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2775
    shr-int/lit8 v7, v2, 0x8

    .line 2776
    .local v7, "TechSeId":I
    shr-int/lit8 v8, v3, 0x8

    .line 2778
    .local v8, "TechFSeId":I
    if-ne v2, v3, :cond_1

    .line 2780
    const/4 v4, 0x7

    .line 2781
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    and-int/lit8 v6, v2, 0x3f

    invoke-interface {v5, v10, v4, v7, v6}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    goto :goto_0

    .line 2784
    :cond_1
    const/4 v4, 0x3

    .line 2785
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    and-int/lit8 v11, v2, 0x3f

    invoke-interface {v9, v10, v4, v7, v11}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2786
    const/4 v4, 0x4

    .line 2787
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    and-int/lit8 v6, v3, 0x3f

    invoke-interface {v5, v10, v4, v8, v6}, Lcom/android/nfc/DeviceHost;->setRoutingEntry(IIII)Z

    .line 2790
    :goto_0
    return-void
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 6
    .param p1, "screenState"    # I

    .line 2711
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 2713
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-lt p1, v2, :cond_6

    .line 2715
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v5, :cond_5

    .line 2716
    const/4 v1, 0x0

    .line 2717
    .local v1, "techMask":I
    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_0

    .line 2718
    or-int/lit8 v1, v1, 0x1

    .line 2719
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 2720
    or-int/lit8 v1, v1, 0x2

    .line 2721
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_2

    .line 2722
    or-int/lit8 v1, v1, 0x4

    .line 2723
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 2724
    or-int/lit8 v1, v1, 0x8

    .line 2725
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 2726
    or-int/lit8 v1, v1, 0x20

    .line 2728
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2729
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2730
    .end local v1    # "techMask":I
    goto :goto_0

    .line 2731
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2732
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2734
    :cond_6
    if-ne p1, v4, :cond_7

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_7

    .line 2735
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2737
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2738
    :cond_7
    if-ne p1, v4, :cond_9

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 2739
    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2740
    const/4 v1, 0x0

    .line 2741
    .restart local v1    # "techMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2742
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 2743
    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2744
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2745
    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2748
    .end local v1    # "techMask":I
    :cond_9
    :goto_0
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v1, v4, :cond_a

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez v1, :cond_a

    .line 2750
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2753
    :cond_a
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .line 472
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method private getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 2972
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2973
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2974
    invoke-static {p2}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2975
    invoke-static {p3}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2976
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-array v1, v1, [B

    .line 2977
    .local v1, "t3tIdBytes":[B
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2978
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2980
    return-object v1
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 2646
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2647
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2648
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 2649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2650
    add-int/lit8 v0, v0, 0x1

    .line 2652
    :cond_1
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 2653
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2654
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 2655
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 2653
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2657
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 2646
    .end local v0    # "len":I
    .end local v1    # "data":[B
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSEServiceAvailable()Z
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-nez v0, :cond_0

    .line 816
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 819
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

.method private isTagPresent()Z
    .locals 3

    .line 2796
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

    .line 2797
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 2798
    move-object v0, v1

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v0

    return v0

    .line 2800
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 2801
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 3982
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 3992
    const-string v0, "<error>"

    return-object v0

    .line 3990
    :cond_0
    const-string v0, "turning off"

    return-object v0

    .line 3988
    :cond_1
    const-string v0, "on"

    return-object v0

    .line 3986
    :cond_2
    const-string v0, "turning on"

    return-object v0

    .line 3984
    :cond_3
    const-string v0, "off"

    return-object v0
.end method


# virtual methods
.method public GetDefaultFelicaCLTRouteEntry()I
    .locals 4

    .line 3082
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultFelicaCLTRoute()I

    move-result v0

    .line 3083
    .local v0, "routeLoc":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultFelicaCLTPowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultFelicaCLTRoute()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 3084
    .local v1, "defaultFelicaCLTRoute":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultFelicaCLTRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    return v1
.end method

.method public GetDefaultMifareDesfireRouteEntry()I
    .locals 4

    .line 3032
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultDesfireRoute()I

    move-result v0

    .line 3033
    .local v0, "routeLoc":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultDesfirePowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 3034
    .local v1, "defaultMifareDesfireRoute":I
    if-nez v0, :cond_0

    .line 3041
    and-int/lit16 v1, v1, 0xf9

    .line 3043
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultMifareDesfireRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    return v1
.end method

.method public GetDefaultMifateCLTRouteEntry()I
    .locals 4

    .line 3072
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTRoute()I

    move-result v0

    .line 3073
    .local v0, "routeLoc":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTPowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTRoute()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 3074
    .local v1, "defaultMifateCLTRoute":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultMifateCLTRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    return v1
.end method

.method public GetDefaultRouteEntry()I
    .locals 4

    .line 3052
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidRoute()I

    move-result v0

    .line 3053
    .local v0, "routeLoc":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v1, v2

    .line 3054
    .local v1, "defaultAidRoute":I
    if-nez v0, :cond_0

    .line 3061
    and-int/lit16 v1, v1, 0xf9

    .line 3063
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultAidRoute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    return v1
.end method

.method public GetDefaultRouteLoc()I
    .locals 3

    .line 3023
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v1

    const-string v2, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 3024
    .local v0, "defaultRouteLoc":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetDefaultRouteLoc  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    return v0
.end method

.method applyRouting(Z)V
    .locals 5
    .param p1, "force"    # Z

    .line 2664
    const-string v0, "NfcService"

    const-string v1, "applyRouting enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2666
    return-void

    .line 2668
    :cond_0
    monitor-enter p0

    .line 2669
    :try_start_0
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v1, "applyRouting"

    const/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 2670
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v1, :cond_2

    .line 2671
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 2673
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v1, :cond_2

    .line 2676
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 2681
    :cond_2
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2682
    const-string v1, "NfcService"

    const-string v2, "Not updating discovery parameters, tag connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2685
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 2689
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 2691
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 2692
    .local v1, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 2701
    :cond_4
    const-string v2, "NfcService"

    const-string v3, "Discovery configuration equal, not updating."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2693
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2694
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    .line 2695
    .local v2, "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 2696
    .end local v2    # "shouldRestart":Z
    goto :goto_1

    .line 2697
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 2699
    :goto_1
    iput-object v1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2704
    .end local v1    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 2705
    nop

    .line 2706
    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    monitor-exit p0

    .line 2707
    return-void

    .line 2704
    .restart local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .end local p0    # "this":Lcom/android/nfc/NfcService;
    .end local p1    # "force":Z
    throw v1

    .line 2706
    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    .restart local p0    # "this":Lcom/android/nfc/NfcService;
    .restart local p1    # "force":Z
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public clearT3tIdentifiersCache()V
    .locals 2

    .line 2998
    const-string v0, "NfcService"

    const-string v1, "clear T3t Identifiers Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->clearT3tIdentifiersCache()V

    .line 3000
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .line 3007
    const-string v0, "NfcService"

    const-string v1, "commitRouting >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 3009
    return-void
.end method

.method public computeRoutingParameters()V
    .locals 2

    .line 2792
    const-string v0, "NfcService"

    const-string v1, "computeRoutingParameters >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 2794
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

    .line 2896
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

    .line 2904
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

    .line 2888
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method public deInitWiredSe()V
    .locals 2

    .line 3015
    const-string v0, "NfcService"

    const-string v1, "DeInit wired Se"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 3017
    return-void
.end method

.method public deregisterT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 2991
    const-string v0, "NfcService"

    const-string v1, "request to deregister LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 2994
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2995
    return-void
.end method

.method doDisconnect(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 872
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 876
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 877
    nop

    .line 878
    return-void

    .line 876
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection()I
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 865
    return v0

    .line 867
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

    .line 881
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 883
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 883
    return-object v0

    .line 885
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

    .line 890
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

    .line 3997
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
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

    .line 3999
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    return-void

    .line 4005
    :cond_0
    monitor-enter p0

    .line 4006
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

    .line 4007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4008
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

    .line 4009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSecureNfcEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4010
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4011
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v0, :cond_1

    .line 4012
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4013
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_2

    .line 4014
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4016
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4017
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4018
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->dump(Ljava/io/FileDescriptor;)V

    .line 4019
    monitor-exit p0

    .line 4020
    return-void

    .line 4019
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uh"    # Landroid/os/UserHandle;

    .line 1148
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1149
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1150
    .local v1, "mIpm":Landroid/content/pm/IPackageManager;
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1151
    .local v2, "isGlobalEnabled":Z
    nop

    .line 1152
    const-string v3, "no_outgoing_beam"

    invoke-virtual {v0, v3, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1155
    .local v3, "isActiveForUser":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enforcing a policy change on user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isActiveForUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NfcService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    const-class v7, Lcom/android/nfc/BeamShareActivity;

    .line 1160
    invoke-virtual {v7}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/android/nfc/BeamShareActivity;

    .line 1161
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    if-eqz v3, :cond_1

    .line 1163
    move v7, v4

    goto :goto_1

    .line 1164
    :cond_1
    const/4 v7, 0x2

    :goto_1
    nop

    .line 1166
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1159
    invoke-interface {v1, v5, v7, v4, v8}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    goto :goto_2

    .line 1167
    :catch_0
    move-exception v4

    .line 1168
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to change Beam status for user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method findAndRemoveObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "handle"    # I

    .line 2860
    monitor-enter p0

    .line 2861
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2862
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2863
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2865
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2868
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

    .line 2850
    monitor-enter p0

    .line 2851
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2852
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2853
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2856
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAidRoutingCache()Lcom/android/nfc/cardemulation/AidRoutingManager;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    return-object v0
.end method

.method public getAidRoutingTableSize()I
    .locals 1

    .line 2944
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getAidTableSize()I

    move-result v0

    return v0
.end method

.method public getAidRoutingTableStatus()I
    .locals 4

    .line 3094
    const/4 v0, 0x0

    .line 3095
    .local v0, "aidTableStatus":I
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string v2, "PREF_SET_AID_ROUTING_TABLE_FULL"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3096
    return v0
.end method

.method public getGsmaPwrState()I
    .locals 1

    .line 3090
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getGsmaPwrState()I

    move-result v0

    return v0
.end method

.method public getLastCommitRoutingStatus()Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getLastCommitRoutingStatus()Z

    move-result v0

    return v0
.end method

.method public getLfT3tMax()I
    .locals 1

    .line 3003
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getLfT3tMax()I

    move-result v0

    return v0
.end method

.method public getNciVersion()I
    .locals 1

    .line 2968
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getNciVersion()I

    move-result v0

    return v0
.end method

.method public getRemainingAidTableSize()I
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getRemainingAidTableSize()I

    move-result v0

    return v0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    monitor-enter p0

    .line 1144
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/nfc/NfcService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .locals 4

    .line 823
    monitor-enter p0

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 825
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 826
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    .line 829
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 830
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 831
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 827
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 833
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0002

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 834
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 835
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0001

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 837
    :cond_0
    monitor-exit p0

    .line 838
    return-void

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initWiredSe()V
    .locals 2

    .line 3011
    const-string v0, "NfcService"

    const-string v1, "Init wired Se"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 3013
    return-void
.end method

.method public isNfcEnabled()Z
    .locals 2

    .line 2603
    monitor-enter p0

    .line 2604
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

    .line 2605
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .line 2597
    monitor-enter p0

    .line 2598
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

    .line 2599
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method maybeDisconnectTarget()V
    .locals 6

    .line 2818
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2819
    return-void

    .line 2822
    :cond_0
    monitor-enter p0

    .line 2823
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2826
    .local v0, "objectValues":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 2827
    .local v1, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2828
    .end local v0    # "objectValues":[Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2829
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    .line 2830
    .local v3, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NfcService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_1

    .line 2833
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2834
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    goto :goto_1

    .line 2835
    :cond_1
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v4, :cond_2

    .line 2837
    move-object v4, v3

    check-cast v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 2838
    .local v4, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v5

    if-nez v5, :cond_3

    .line 2840
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_2

    .line 2835
    .end local v4    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    :cond_2
    :goto_1
    nop

    .line 2829
    .end local v3    # "o":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2847
    :cond_4
    return-void

    .line 2828
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

    .line 2913
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mToastHandler:Lcom/android/nfc/NfcService$ToastHandler;

    const-string v1, "Last installed NFC Service is not enabled due to limited resources. To enable this service, please disable other servives in Settings Menu"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService$ToastHandler;->showToast(Ljava/lang/CharSequence;I)V

    .line 2915
    const-string v0, "NfcService"

    const-string v1, "notify aid routing table full to the user here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 2918
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREF_SET_AID_ROUTING_TABLE_FULL"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2919
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2921
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2922
    .local v1, "aidTableFull":Landroid/content/Intent;
    const-string v2, "nfc.intent.action.AID_ROUTING_TABLE_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2924
    const-string v2, "notify aid routing table full to the user"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2927
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 498
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 501
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .locals 1
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 517
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData(I[B)V

    .line 520
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 524
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 527
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 529
    :cond_0
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 554
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 556
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 557
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 536
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 538
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 545
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 547
    return-void
.end method

.method public onNfcTransactionEvent([B[BLjava/lang/String;)V
    .locals 4
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "seName"    # Ljava/lang/String;

    .line 576
    const/4 v0, 0x3

    new-array v1, v0, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 577
    .local v1, "dataObj":[[B
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 578
    const/16 v2, 0x89

    invoke-static {v2, v0, p3}, Landroid/util/StatsLog;->write(IILjava/lang/String;)I

    .line 579
    return-void
.end method

.method public onReaderRemoveCard()V
    .locals 2

    .line 612
    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 613
    return-void
.end method

.method public onReaderRequestedFail()V
    .locals 2

    .line 583
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 584
    return-void
.end method

.method public onReaderRestart()V
    .locals 2

    .line 598
    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 599
    return-void
.end method

.method public onReaderStartFail()V
    .locals 2

    .line 593
    const/16 v0, 0x46

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method public onReaderStartSuccess()V
    .locals 2

    .line 588
    const/16 v0, 0x45

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 589
    return-void
.end method

.method public onReaderStopFail()V
    .locals 2

    .line 607
    const/16 v0, 0x48

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 608
    return-void
.end method

.method public onReaderStopSuccess()V
    .locals 2

    .line 602
    const/16 v0, 0x47

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 603
    return-void
.end method

.method public onReaderTimeout()V
    .locals 2

    .line 617
    const/16 v0, 0x32

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 618
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 491
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .line 561
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 562
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .line 566
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 567
    return-void
.end method

.method public onSeInitialized()V
    .locals 2

    .line 571
    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 572
    return-void
.end method

.method public onSeListenActivated()V
    .locals 2

    .line 504
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 507
    :cond_0
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .line 511
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 514
    :cond_0
    return-void
.end method

.method public playSound(I)V
    .locals 8
    .param p1, "sound"    # I

    .line 1119
    monitor-enter p0

    .line 1120
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1121
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    monitor-exit p0

    return-void

    .line 1125
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_1

    .line 1126
    const-string v0, "NfcService"

    const-string v1, "Not playing NFC sound when Vr Mode is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    monitor-exit p0

    return-void

    .line 1129
    :cond_1
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1134
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1135
    goto :goto_0

    .line 1131
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1132
    nop

    .line 1140
    :goto_0
    monitor-exit p0

    .line 1141
    return-void

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;
    .param p3, "t3tPmm"    # Ljava/lang/String;

    .line 2984
    const-string v0, "NfcService"

    const-string v1, "request to register LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 2987
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2988
    return-void
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 2
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2872
    monitor-enter p0

    .line 2873
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    monitor-exit p0

    .line 2875
    return-void

    .line 2874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseSoundPool()V
    .locals 1

    .line 841
    monitor-enter p0

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 844
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 846
    :cond_0
    monitor-exit p0

    .line 847
    return-void

    .line 846
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
    .param p3, "aidInfo"    # I
    .param p4, "power"    # I

    .line 2930
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2931
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2932
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2933
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2934
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2935
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2936
    .local v1, "aidbundle":Landroid/os/Bundle;
    const-string v2, "power"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2937
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2938
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2939
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1111
    monitor-enter p0

    .line 1112
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1113
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1114
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1115
    monitor-exit p0

    .line 1116
    return-void

    .line 1115
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

    .line 3099
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3103
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3104
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3105
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3106
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3107
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .line 2908
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2909
    return-void
.end method

.method public setDefaultAidRouteLoc(I)V
    .locals 5
    .param p1, "routeLoc"    # I

    .line 2952
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 2953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writing to preferences setDefaultAidRouteLoc  :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v2, p1, 0x8

    or-int/2addr v0, v2

    .line 2957
    .local v0, "defaultAidRoute":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2958
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2959
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const/16 v4, 0xff

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2960
    .local v2, "defaultRoute":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading preferences from user  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    return-void
.end method

.method unregisterObject(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 2878
    monitor-enter p0

    .line 2879
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2880
    monitor-exit p0

    .line 2881
    return-void

    .line 2880
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

    .line 2964
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2965
    return-void
.end method

.method public updateDefaultAidRoute(I)V
    .locals 5
    .param p1, "routeLoc"    # I

    .line 4023
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 4024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writing to preferences setDefaultAidRouteLoc  :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const/16 v2, 0xff

    const-string v3, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 4026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultRoute :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not changed. Returning."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    return-void

    .line 4029
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 4030
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultAidPowerState()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v4, p1, 0x8

    or-int/2addr v0, v4

    .line 4031
    .local v0, "defaultAidRoute":I
    if-nez p1, :cond_1

    .line 4039
    and-int/lit8 v0, v0, 0x11

    .line 4041
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4042
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4043
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4044
    .local v2, "defaultRoute":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading updated preference  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v3, 0x41

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4046
    return-void
.end method

.method public updateLastScreenState()V
    .locals 2

    .line 3111
    const-string v0, "NfcService"

    const-string v1, "updateLastScreenState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3113
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 3114
    .local v0, "screen_state_mask":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->doSetScreenState(I)V

    .line 3115
    return-void
.end method

.method updatePackageCache()V
    .locals 5

    .line 850
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 851
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.NFC_TRANSACTION_EVENT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 854
    .local v1, "packagesNfcEvents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 855
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 856
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 857
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 859
    .end local v2    # "i":I
    :cond_0
    monitor-exit p0

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
