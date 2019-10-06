.class public Lcom/qualcomm/location/osagent/OsAgent;
.super Ljava/lang/Object;
.source "OsAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/osagent/OsAgent$RilListener;,
        Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;
    }
.end annotation


# static fields
.field private static final AIRPLANEMODE_DATA_ITEM_ID:I = 0x0

.field private static final ASSISTED_GPS_DATA_ITEM_ID:I = 0xd

.field private static final BATTERY_LEVEL_DATA_ITEM_ID:I = 0x1a

.field private static final BTLE_SCAN_DATA_ITEM_ID:I = 0x16

.field private static final BT_SCAN_DATA_ITEM_ID:I = 0x17

.field private static final CHINA0_SID_MAX:I = 0x37ff

.field private static final CHINA0_SID_MIN:I = 0x3500

.field private static final CHINA1_SID_MAX:I = 0x65ff

.field private static final CHINA1_SID_MIN:I = 0x6400

.field private static final CHINA_MCC:I = 0x1cc

.field private static final CHINA_SCOM_SID:I = 0x1e91

.field private static final COUNTRY_SELECT_ACTION:Ljava/lang/String; = "com.android.location.osagent.COUNTRY_SELECT_ACTION"

.field private static final DEBUG_LOG:Z

.field private static final DEVICE_IN_REGULATED_REGION_AT_EMBARGOED:I = 0x2

.field private static final DEVICE_IN_REGULATED_REGION_AT_REGIONAL_NLP:I = 0x4

.field private static final DEVICE_IN_REGULATED_REGION_KNOWN:I = 0x1

.field private static final DEVICE_IN_REGULATED_REGION_UNKNOWN:I = 0x0

.field private static final ENH_DATA_ITEM_ID:I = 0x1

.field private static final ENH_LOCATION_SERVICES_ENABLED:Ljava/lang/String; = "enhLocationServices_on"

.field private static final ERROR_LOG:Z

.field private static final ERR_BTLE_DISABLED:I = 0x3

.field private static final ERR_BTLE_GENERAL_FAIL:I = 0x1

.field private static final ERR_BTLE_NONE:I = 0x0

.field private static final ERR_BTLE_NO_MEASUREMENTS_AVAILABLE:I = 0x2

.field private static final ERR_BTLE_UNKNOWN:I = 0x4

.field private static final GPSSTATE_DATA_ITEM_ID:I = 0x2

.field private static final LOC_NW_HOME:I = 0x2

.field private static final LOC_NW_OOO:I = 0x3

.field private static final LOC_NW_ROAMING:I = 0x1

.field private static final LOC_RILAIRIF_CDMA:I = 0x1

.field private static final LOC_RILAIRIF_EVDO:I = 0x10

.field private static final LOC_RILAIRIF_GSM:I = 0x2

.field private static final LOC_RILAIRIF_LTE:I = 0x8

.field private static final LOC_RILAIRIF_WCDMA:I = 0x4

.field private static final LOC_RILAIRIF_WIFI:I = 0x20

.field private static final LOC_RIL_CELLINFO_HAS_CELL_INFO:I = 0x4

.field private static final LOC_RIL_CELLINFO_HAS_NW_STATUS:I = 0x1

.field private static final LOC_RIL_CELLINFO_HAS_TECH_TYPE:I = 0x2

.field private static final LOC_RIL_TECH_CDMA:I = 0x1

.field private static final LOC_RIL_TECH_CDMA_HAS_BSID:I = 0x40

.field private static final LOC_RIL_TECH_CDMA_HAS_BSLAT:I = 0x80

.field private static final LOC_RIL_TECH_CDMA_HAS_BSLONG:I = 0x100

.field private static final LOC_RIL_TECH_CDMA_HAS_DAYLIGHT_SAVING:I = 0x400

.field private static final LOC_RIL_TECH_CDMA_HAS_MCC:I = 0x8

.field private static final LOC_RIL_TECH_CDMA_HAS_NID:I = 0x20

.field private static final LOC_RIL_TECH_CDMA_HAS_SID:I = 0x10

.field private static final LOC_RIL_TECH_CDMA_HAS_TIMEZONE:I = 0x200

.field private static final LOC_RIL_TECH_GSM:I = 0x2

.field private static final LOC_RIL_TECH_GW_HAS_CID:I = 0x40

.field private static final LOC_RIL_TECH_GW_HAS_LAC:I = 0x20

.field private static final LOC_RIL_TECH_GW_HAS_MCC:I = 0x8

.field private static final LOC_RIL_TECH_GW_HAS_MNC:I = 0x10

.field private static final LOC_RIL_TECH_LTE:I = 0x8

.field private static final LOC_RIL_TECH_LTE_HAS_CID:I = 0x80

.field private static final LOC_RIL_TECH_LTE_HAS_MCC:I = 0x8

.field private static final LOC_RIL_TECH_LTE_HAS_MNC:I = 0x10

.field private static final LOC_RIL_TECH_LTE_HAS_PCI:I = 0x40

.field private static final LOC_RIL_TECH_LTE_HAS_TAC:I = 0x20

.field private static final LOC_RIL_TECH_TD_SCDMA:I = 0x16

.field private static final LOC_RIL_TECH_WCDMA:I = 0x4

.field private static final MANUFACTURER_DATA_ITEM_ID:I = 0xb

.field private static final MCCMNC_DATA_ITEM_ID:I = 0x15

.field private static final MODEL_DATA_ITEM_ID:I = 0xa

.field private static final MSG_BTLE_START_BLE_SCAN:I = 0x6f

.field private static final MSG_BTLE_STOP_BLE_SCAN:I = 0x70

.field private static final MSG_CELL_LOCATION_CHANGED:I = 0x6a

.field private static final MSG_DATAITEM_REQUEST_DATA:I = 0x65

.field private static final MSG_DATAITEM_SUBSCRIBE:I = 0x64

.field private static final MSG_DATAITEM_UNSUBSCRIBE:I = 0x66

.field private static final MSG_DATAITEM_UNSUBSCRIBE_ALL:I = 0x67

.field private static final MSG_FRAMEWORK_MODULE_TURNOFF:I = 0x6e

.field private static final MSG_FRAMEWORK_MODULE_TURNON:I = 0x6d

.field private static final MSG_INIT_AUTO_EULA:I = 0x6c

.field private static final MSG_INSTALL_RIL_LISTENER:I = 0x68

.field private static final MSG_INSTALL_USER_SWITCH_ACTION_UPDATE:I = 0x69

.field private static final MSG_LOCATION_MODE_CHANGE:I = 0x71

.field private static final MSG_SERVICE_STATE_CHANGED:I = 0x6b

.field private static final NETWORKINFO_DATA_ITEM_ID:I = 0x5

.field private static final NLPSTATUS_DATA_ITEM_ID:I = 0x3

.field private static final POWER_CONNECTED_STATE_DATA_ITEM_ID:I = 0xf

.field private static final RIL_CELL_UPDATE_DATA_ITEM_ID:I = 0x8

.field private static final RIL_SERVICE_INFO_DATA_ITEM_ID:I = 0x7

.field private static final RIL_VERSION_DATA_ITEM_ID:I = 0x6

.field private static final SCREEN_STATE_DATA_ITEM_ID:I = 0xe

.field private static final SERVICESTATUS_DATA_ITEM_ID:I = 0x9

.field private static final SHUTDOWN_STATE_DATA_ITEM_ID:I = 0x13

.field private static final TAC_DATA_ITEM_ID:I = 0x14

.field private static final TAG:Ljava/lang/String; = "OsAgent"

.field private static final TIMEZONE_CHANGE_DATA_ITEM_ID:I = 0x10

.field private static final TIME_CHANGE_DATA_ITEM_ID:I = 0x11

.field private static final VERBOSE_LOG:Z

.field private static final VOICECALL_DATA_ITEM:I = 0xc

.field private static final WIFIHARDWARESTATE_DATA_ITEM_ID:I = 0x4

.field private static final WIFI_SUPPLICANT_STATUS_DATA_ITEM_ID:I = 0x12

.field private static final ZTE_FEATURE_ENABLE_DUAL_NLP:Z = false

.field private static final ZTE_OPERATOR_NAME:Ljava/lang/String; = "null"


# instance fields
.field private final bBtClassicDevScanReceiver:Landroid/content/BroadcastReceiver;

.field private isPhoneInServiceZte:Z

.field private final mBatteryLevelChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtLeScanStartTime:J

.field private final mBtLeStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mBtleScanStarted:Z

.field private mCDMAHomeCarrier:Ljava/lang/String;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

.field private mContentSettingsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentServiceState:I

.field private mCurrentUserId:I

.field private mDataItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInChina:I

.field private mDeviceInRegulatedArea:I

.field private mEmbargoedCountryList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmbargoedSIDRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEnableAutoEula:Z

.field private mHandler:Landroid/os/Handler;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetworkConnChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mNpProxy:Lcom/qualcomm/location/izatprovider/NpProxy;

.field private final mPowerConnectChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mRegionalNLPCountryList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegionalNLPSIDRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRilListener:Lcom/qualcomm/location/osagent/OsAgent$RilListener;

.field private final mScreenStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private final mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeZoneChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private final mWifiSupplicantStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_handler_callback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2389
    const-string v0, "OsAgent"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/osagent/OsAgent;->VERBOSE_LOG:Z

    .line 2390
    const-string v0, "OsAgent"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/osagent/OsAgent;->DEBUG_LOG:Z

    .line 2391
    const-string v0, "OsAgent"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/osagent/OsAgent;->ERROR_LOG:Z

    .line 2605
    invoke-static {}, Lcom/qualcomm/location/osagent/OsAgent;->native_subscription_class_init()V

    .line 2606
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/qualcomm/location/izatprovider/NpProxy;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looperObj"    # Landroid/os/Looper;
    .param p3, "npProxy"    # Lcom/qualcomm/location/izatprovider/NpProxy;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$2;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mNetworkConnChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 862
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$3;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mScreenStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 880
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$4;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mPowerConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 896
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$5;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBatteryLevelChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 912
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$6;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$6;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTimeZoneChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 924
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$7;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$7;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 936
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$8;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$8;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 949
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$9;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$9;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 966
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$10;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$10;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 976
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$11;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$11;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mWifiSupplicantStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1593
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$12;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$12;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1617
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$13;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$13;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtLeStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1669
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$14;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$14;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->bBtClassicDevScanReceiver:Landroid/content/BroadcastReceiver;

    .line 2297
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$15;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/osagent/OsAgent$15;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->m_handler_callback:Landroid/os/Handler$Callback;

    .line 2395
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    .line 2396
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    .line 2397
    const/4 v0, -0x2

    iput v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 2402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    .line 2403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    .line 2412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->isPhoneInServiceZte:Z

    .line 2425
    iput v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInRegulatedArea:I

    .line 2427
    iput v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInChina:I

    .line 2431
    iput-boolean v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtleScanStarted:Z

    .line 2432
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtLeScanStartTime:J

    .line 2441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 2443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedCountryList:Ljava/util/HashMap;

    .line 2445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedSIDRanges:Ljava/util/ArrayList;

    .line 2448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPCountryList:Ljava/util/HashMap;

    .line 2450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPSIDRanges:Ljava/util/ArrayList;

    .line 96
    const-string v0, "OSAgent constructor"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mNpProxy:Lcom/qualcomm/location/izatprovider/NpProxy;

    .line 103
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->m_handler_callback:Landroid/os/Handler$Callback;

    invoke-direct {v0, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    .line 106
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "msgInitAutoEula":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 112
    .local v1, "msgInstallUserChangeListener":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 117
    .local v2, "msgObjInstallRilListener":Landroid/os/Message;
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x71

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 122
    .local v3, "msgObjInstallModeChangeReceiver":Landroid/os/Message;
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->native_subscription_init()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->updateMccmnc()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->updateConnectivityStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/location/osagent/OsAgent;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # Ljava/util/List;

    .line 90
    invoke-direct {p0, p1}, Lcom/qualcomm/location/osagent/OsAgent;->updateContentData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->setRegulatedFeatureAllowed()V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 90
    invoke-static {p0}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/location/osagent/OsAgent;II[BI[C)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # I
    .param p5, "x5"    # [C

    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/qualcomm/location/osagent/OsAgent;->native_wifi_supplicant_status_update(II[BI[C)V

    return-void
.end method

.method static synthetic access$1600(Lcom/qualcomm/location/osagent/OsAgent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/qualcomm/location/osagent/OsAgent;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    iget-wide v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtLeScanStartTime:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/qualcomm/location/osagent/OsAgent;ZI[BJJJI)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # J
    .param p6, "x5"    # J
    .param p8, "x6"    # J
    .param p10, "x7"    # I

    .line 90
    invoke-direct/range {p0 .. p10}, Lcom/qualcomm/location/osagent/OsAgent;->native_btle_scan_data_inject(ZI[BJJJI)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 90
    invoke-static {p0}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qualcomm/location/osagent/OsAgent;ZI[BJJJI)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # J
    .param p6, "x5"    # J
    .param p8, "x6"    # J
    .param p10, "x7"    # I

    .line 90
    invoke-direct/range {p0 .. p10}, Lcom/qualcomm/location/osagent/OsAgent;->native_bt_classic_scan_data_inject(ZI[BJJJI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/qualcomm/location/osagent/OsAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    iget v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    return v0
.end method

.method static synthetic access$2200(Lcom/qualcomm/location/osagent/OsAgent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    iget-boolean v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->isPhoneInServiceZte:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/qualcomm/location/osagent/OsAgent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/qualcomm/location/osagent/OsAgent;->isPhoneInServiceZte:Z

    return p1
.end method

.method static synthetic access$2300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 90
    invoke-static {p0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->installRilListener()V

    return-void
.end method

.method static synthetic access$2500(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->installModeChangeReceiver()V

    return-void
.end method

.method static synthetic access$2600(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->installUserSwitchActionReceiver()V

    return-void
.end method

.method static synthetic access$2700(Lcom/qualcomm/location/osagent/OsAgent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # I

    .line 90
    invoke-direct {p0, p1}, Lcom/qualcomm/location/osagent/OsAgent;->handleServiceStateChanged(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->handleCellLocationChanged()V

    return-void
.end method

.method static synthetic access$2900(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->initAutoEula()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/location/osagent/OsAgent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # Z

    .line 90
    invoke-direct {p0, p1}, Lcom/qualcomm/location/osagent/OsAgent;->native_screen_status_update(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/location/osagent/OsAgent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # Z

    .line 90
    invoke-direct {p0, p1}, Lcom/qualcomm/location/osagent/OsAgent;->native_power_connect_status_update(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/location/osagent/OsAgent;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/location/osagent/OsAgent;->notifyBatteryPct(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendTimeZoneInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendTimeInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->native_shutdown_update()V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/location/osagent/OsAgent;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 90
    iget v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$902(Lcom/qualcomm/location/osagent/OsAgent;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/osagent/OsAgent;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    return p1
.end method

.method private cacheCDMACarrier()V
    .locals 2

    .line 2183
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2184
    return-void

    .line 2186
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2187
    return-void

    .line 2189
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheCDMACarrier: ServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Roaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 2190
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2189
    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2191
    iget v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    if-nez v0, :cond_5

    .line 2192
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2193
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operator name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2195
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2200
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "indicator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/qualcomm/location/osagent/OsAgent;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2201
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    goto :goto_1

    .line 2196
    :cond_4
    :goto_0
    return-void

    .line 2204
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got CDMA Carrier Name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2207
    :cond_6
    return-void
.end method

.method private checkRegion()V
    .locals 2

    .line 1503
    iget-boolean v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEnableAutoEula:Z

    if-eqz v0, :cond_0

    .line 1504
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->isDeviceInRegulatedArea()I

    move-result v0

    .line 1505
    .local v0, "isDevInRegulatedArea":I
    iget v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInRegulatedArea:I

    if-eq v1, v0, :cond_0

    .line 1506
    iput v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInRegulatedArea:I

    .line 1507
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->setRegulatedFeatureAllowed()V

    .line 1510
    .end local v0    # "isDevInRegulatedArea":I
    :cond_0
    return-void
.end method

.method private getMcc(II)I
    .locals 3
    .param p1, "mncmccCombo"    # I
    .param p2, "digits"    # I

    .line 2224
    const/4 v0, 0x0

    .line 2225
    .local v0, "mcc":I
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 2226
    div-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    .line 2227
    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 2228
    div-int/lit8 v0, p1, 0x64

    .line 2229
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMcc() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2230
    return v0
.end method

.method private getMccOrSidFromCellInfo(Landroid/telephony/CellInfo;)Z
    .locals 7
    .param p1, "cellInfo"    # Landroid/telephony/CellInfo;

    .line 781
    const/4 v0, -0x1

    .line 782
    .local v0, "mcc":I
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 783
    return v1

    .line 786
    :cond_0
    instance-of v2, p1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_2

    .line 787
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 788
    .local v2, "cellId":Landroid/telephony/CellIdentityLte;
    if-nez v2, :cond_1

    .line 789
    return v1

    .line 791
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v0

    .line 792
    const-string v3, "in LTE network"

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 793
    .end local v2    # "cellId":Landroid/telephony/CellIdentityLte;
    goto/16 :goto_2

    :cond_2
    instance-of v2, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_4

    .line 794
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 795
    .local v2, "cellId":Landroid/telephony/CellIdentityGsm;
    if-nez v2, :cond_3

    .line 796
    return v1

    .line 798
    :cond_3
    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v0

    .line 799
    const-string v3, "in GSM network"

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 800
    .end local v2    # "cellId":Landroid/telephony/CellIdentityGsm;
    goto :goto_2

    :cond_4
    instance-of v2, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_6

    .line 801
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 802
    .local v2, "cellId":Landroid/telephony/CellIdentityWcdma;
    if-nez v2, :cond_5

    .line 803
    return v1

    .line 805
    :cond_5
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v0

    .line 806
    const-string v3, "in WCDMA network"

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 807
    .end local v2    # "cellId":Landroid/telephony/CellIdentityWcdma;
    goto :goto_2

    :cond_6
    instance-of v2, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_a

    .line 808
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 809
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    if-nez v2, :cond_7

    .line 810
    return v1

    .line 812
    :cond_7
    const/4 v3, 0x0

    .line 813
    .local v3, "iSid":I
    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v3

    .line 814
    if-eqz v3, :cond_9

    .line 815
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPSIDRanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    .line 816
    .local v5, "sidRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 817
    const/16 v0, 0x1cc

    .line 818
    goto :goto_1

    .line 820
    .end local v5    # "sidRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_8
    goto :goto_0

    .line 822
    :cond_9
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in Cdma network, iSid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 824
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .end local v3    # "iSid":I
    :cond_a
    :goto_2
    const-string v2, "TF"

    sget-object v3, Lcom/qualcomm/location/osagent/OsAgent;->ZTE_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMccOrSidFromCellInfo, mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 827
    :cond_b
    const/16 v2, 0x1cc

    if-ne v0, v2, :cond_c

    const/4 v1, 0x1

    nop

    :cond_c
    return v1
.end method

.method private getMnc(II)I
    .locals 3
    .param p1, "mncmccCombo"    # I
    .param p2, "digits"    # I

    .line 2212
    const/4 v0, 0x0

    .line 2213
    .local v0, "mnc":I
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 2214
    rem-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    .line 2215
    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 2216
    rem-int/lit8 v0, p1, 0x64

    .line 2218
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMnc() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2219
    return v0
.end method

.method private handleCellLocationChanged()V
    .locals 0

    .line 1497
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendCellUpdateInfo()V

    .line 1498
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->cacheCDMACarrier()V

    .line 1499
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->checkRegion()V

    .line 1500
    return-void
.end method

.method private handleServiceStateChanged(I)V
    .locals 1
    .param p1, "service_state"    # I

    .line 1473
    iget v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    if-eq v0, p1, :cond_0

    .line 1475
    iput p1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    .line 1476
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendServiceStateInfo()V

    .line 1477
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->handleCellLocationChanged()V

    .line 1479
    :cond_0
    return-void
.end method

.method private initAutoEula()V
    .locals 8

    .line 1255
    const/4 v0, 0x0

    .line 1256
    .local v0, "fileStream":Ljava/io/FileInputStream;
    const-string v1, "/system/vendor/etc/xtwifi.conf"

    .line 1259
    .local v1, "gtpConfigFile":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1260
    .local v2, "config":Ljava/util/Properties;
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/system/vendor/etc/xtwifi.conf"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 1261
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1263
    const-string v3, "XT_SERVER_ROOT_URL"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1264
    .local v3, "serverUrl":Ljava/lang/String;
    const-string v4, "https://(.*)oem(.*)/(.*)/(.*)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEnableAutoEula:Z

    .line 1265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected server URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Auto-EULA is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    iget-boolean v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEnableAutoEula:Z

    if-eqz v5, :cond_0

    const-string v5, "enabled"

    goto :goto_0

    :cond_0
    const-string v5, "disabled."

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1265
    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 1267
    iget-boolean v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEnableAutoEula:Z

    if-eqz v4, :cond_1

    .line 1269
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedCountryList:Ljava/util/HashMap;

    const-string v5, "GTP_OSAGENT_EMBARGOED_MCC_LIST"

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    const v7, 0x7f030007

    .line 1272
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1271
    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1269
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/location/osagent/OsAgent;->populateCountryList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OSAgent Embargoed MCC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedCountryList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1274
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedSIDRanges:Ljava/util/ArrayList;

    const-string v5, "GTP_OSAGENT_EMBARGOED_SID_LIST"

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    const v7, 0x7f030008

    .line 1277
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1276
    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1274
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/location/osagent/OsAgent;->populateSIDRanges(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OSAgent Embargoed SID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedSIDRanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1281
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPCountryList:Ljava/util/HashMap;

    const-string v5, "GTP_OSAGENT_REGIONAL_NLP_MCC_LIST"

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    const v7, 0x7f030009

    .line 1284
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1283
    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1281
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/location/osagent/OsAgent;->populateCountryList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OSAgent Regional NLP MCC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPCountryList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1286
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPSIDRanges:Ljava/util/ArrayList;

    const-string v5, "GTP_OSAGENT_REGIONAL_NLP_SID_LIST"

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    const v7, 0x7f03000a

    .line 1289
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1288
    invoke-virtual {v2, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1286
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/location/osagent/OsAgent;->populateSIDRanges(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OSAgent Regional NLP SID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPSIDRanges:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    .end local v2    # "config":Ljava/util/Properties;
    .end local v3    # "serverUrl":Ljava/lang/String;
    :cond_1
    nop

    .line 1297
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1299
    :catch_0
    move-exception v2

    .line 1300
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1302
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 1301
    :cond_2
    :goto_1
    goto :goto_2

    .line 1295
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1292
    :catch_1
    move-exception v2

    .line 1293
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1296
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 1297
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1304
    :goto_2
    return-void

    .line 1295
    :goto_3
    nop

    .line 1296
    if-eqz v0, :cond_3

    .line 1297
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1299
    :catch_2
    move-exception v3

    .line 1300
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 1301
    :cond_3
    :goto_4
    throw v2
.end method

.method private installModeChangeReceiver()V
    .locals 5

    .line 1229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1230
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mModeChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1233
    const-string v1, "Registered for MODE_CHANGED_ACTION"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1234
    return-void
.end method

.method private installRilListener()V
    .locals 3

    .line 1214
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 1215
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 1217
    const-string v0, "Unable to get TELEPHONY_SERVICE"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 1218
    return-void

    .line 1221
    :cond_0
    new-instance v0, Lcom/qualcomm/location/osagent/OsAgent$RilListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/location/osagent/OsAgent$RilListener;-><init>(Lcom/qualcomm/location/osagent/OsAgent;Lcom/qualcomm/location/osagent/OsAgent$1;)V

    iput-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRilListener:Lcom/qualcomm/location/osagent/OsAgent$RilListener;

    .line 1222
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRilListener:Lcom/qualcomm/location/osagent/OsAgent$RilListener;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1225
    return-void
.end method

.method private installUserSwitchActionReceiver()V
    .locals 8

    .line 1238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1239
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1242
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v7

    .line 1243
    .local v7, "userIntent":Landroid/content/Intent;
    if-eqz v7, :cond_0

    .line 1244
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered for ACTION_USER_SWITCHED CurrentUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1251
    return-void
.end method

.method private isDeviceInRegulatedArea()I
    .locals 9

    .line 1383
    const/4 v0, 0x0

    .line 1385
    .local v0, "deviceInRegulatedArea":I
    iget v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    if-nez v1, :cond_d

    .line 1387
    const/4 v1, 0x0

    .line 1388
    .local v1, "iMcc":I
    const/4 v2, 0x0

    .line 1389
    .local v2, "iMnc":I
    const/4 v3, 0x0

    .line 1390
    .local v3, "iSid":I
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    .line 1391
    .local v4, "phoneType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before computing is current n/w state regulated area:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInRegulatedArea:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 1393
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    .line 1397
    :pswitch_0
    iget-object v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    .line 1398
    .local v5, "location":Landroid/telephony/CellLocation;
    instance-of v6, v5, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v6, :cond_0

    .line 1399
    move-object v6, v5

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    .line 1400
    .local v6, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    .line 1402
    .end local v6    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    if-nez v3, :cond_1

    .line 1403
    const-string v6, "isDeviceInRegulatedArea: Sid is zero"

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1405
    :cond_1
    const/4 v0, 0x1

    .line 1406
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedSIDRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    .line 1407
    .local v7, "sidRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1408
    or-int/lit8 v0, v0, 0x2

    .line 1409
    goto :goto_1

    .line 1411
    .end local v7    # "sidRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_2
    goto :goto_0

    .line 1412
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPSIDRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    .line 1413
    .restart local v7    # "sidRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1414
    or-int/lit8 v0, v0, 0x4

    .line 1415
    goto :goto_3

    .line 1417
    .end local v7    # "sidRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_4
    goto :goto_2

    .line 1419
    :cond_5
    :goto_3
    goto/16 :goto_4

    .line 1424
    .end local v5    # "location":Landroid/telephony/CellLocation;
    :pswitch_1
    iget-object v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 1425
    .local v5, "strNetworkOperator":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1426
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/qualcomm/location/osagent/OsAgent;->getMcc(II)I

    move-result v1

    .line 1427
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/qualcomm/location/osagent/OsAgent;->getMnc(II)I

    move-result v2

    .line 1430
    :cond_6
    if-nez v1, :cond_7

    .line 1431
    const-string v6, "isDeviceInRegulatedArea: MCC is zero"

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    goto :goto_4

    .line 1433
    :cond_7
    const/4 v0, 0x1

    .line 1434
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedCountryList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1435
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mEmbargoedCountryList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1436
    .local v6, "mncs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1437
    :cond_8
    or-int/lit8 v0, v0, 0x2

    .line 1440
    .end local v6    # "mncs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_9
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPCountryList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1441
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRegionalNLPCountryList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1442
    .restart local v6    # "mncs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1443
    :cond_a
    or-int/lit8 v0, v0, 0x4

    .line 1445
    .end local v6    # "mncs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_b
    goto :goto_4

    .line 1452
    .end local v5    # "strNetworkOperator":Ljava/lang/String;
    :pswitch_2
    nop

    .line 1460
    :cond_c
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After computing is n/w state in regulated area?, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 1463
    .end local v1    # "iMcc":I
    .end local v2    # "iMnc":I
    .end local v3    # "iSid":I
    .end local v4    # "phoneType":I
    :cond_d
    if-nez v0, :cond_e

    .line 1464
    const-string v1, "isDeviceInRegulatedArea: unknown - keeping previous state"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 1465
    iget v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInRegulatedArea:I

    .line 1468
    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "strToCheck"    # Ljava/lang/String;

    .line 2237
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    nop

    .line 2244
    const/4 v0, 0x1

    return v0

    .line 2239
    :catch_0
    move-exception v0

    .line 2241
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 2377
    sget-boolean v0, Lcom/qualcomm/location/osagent/OsAgent;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 2378
    const-string v0, "OsAgent"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_0
    return-void
.end method

.method private static final loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 2384
    sget-boolean v0, Lcom/qualcomm/location/osagent/OsAgent;->ERROR_LOG:Z

    if-eqz v0, :cond_0

    .line 2385
    const-string v0, "OsAgent"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_0
    return-void
.end method

.method private static final logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 2370
    sget-boolean v0, Lcom/qualcomm/location/osagent/OsAgent;->VERBOSE_LOG:Z

    if-eqz v0, :cond_0

    .line 2371
    const-string v0, "OsAgent"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    :cond_0
    return-void
.end method

.method private native native_battery_level_update(I)V
.end method

.method private native native_bool_dataitem_update([I[Z)V
.end method

.method private native native_bt_classic_scan_data_inject(ZI[BJJJI)V
.end method

.method private native native_btle_scan_data_inject(ZI[BJJJI)V
.end method

.method private native native_cell_update_cdma(IIIIIIIZII)V
.end method

.method private native native_cell_update_gw(IIIIIII)V
.end method

.method private native native_cell_update_lte(IIIIIIII)V
.end method

.method private native native_cell_update_ooo(II)V
.end method

.method private native native_networkinfo_update(ZILjava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method private native native_power_connect_status_update(Z)V
.end method

.method private native native_screen_status_update(Z)V
.end method

.method private native native_service_state_update(I)V
.end method

.method private native native_serviceinfo_update(ILjava/lang/String;II)V
.end method

.method private native native_shutdown_update()V
.end method

.method private native native_string_dataitem_update(ILjava/lang/String;)V
.end method

.method private static native native_subscription_class_init()V
.end method

.method private native native_subscription_deinit()V
.end method

.method private native native_subscription_init()V
.end method

.method private native native_time_change_update(JII)V
.end method

.method private native native_timezone_change_update(JII)V
.end method

.method private native native_wifi_supplicant_status_update(II[BI[C)V
.end method

.method private notifyBatteryPct(II)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "scale"    # I

    .line 2359
    if-lez p2, :cond_0

    if-ltz p1, :cond_0

    .line 2360
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 2361
    .local v0, "batteryPct":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery::Level - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Scale - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Pct - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2364
    invoke-direct {p0, v0}, Lcom/qualcomm/location/osagent/OsAgent;->native_battery_level_update(I)V

    .line 2366
    .end local v0    # "batteryPct":I
    :cond_0
    return-void
.end method

.method private populateCountryList(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 13
    .param p2, "configMccList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1350
    .local p1, "mapMccMnc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :try_start_0
    const-string v0, "~"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, "mccList":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1354
    .local v4, "mccStr":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1355
    const-string v5, "\\["

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1356
    .local v5, "mccMncsCombo":[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1357
    .local v7, "mncSingleString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1358
    .local v6, "mncs":[Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    array-length v9, v6

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 1359
    .local v8, "mnc_list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    array-length v9, v6

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v6, v10

    .line 1360
    .local v11, "mncStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1359
    .end local v11    # "mncStr":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1362
    :cond_0
    aget-object v9, v5, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    .end local v5    # "mccMncsCombo":[Ljava/lang/String;
    .end local v6    # "mncs":[Ljava/lang/String;
    .end local v7    # "mncSingleString":Ljava/lang/String;
    .end local v8    # "mnc_list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1364
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1374
    :cond_2
    :goto_2
    goto/16 :goto_3

    .line 1372
    :catch_0
    move-exception v5

    .line 1373
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OsAgent: Error in reading MCC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .end local v4    # "mccStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 1370
    .restart local v4    # "mccStr":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 1371
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OsAgent: Error in reading MNC for MCC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_2

    .line 1368
    :catch_2
    move-exception v5

    .line 1369
    .local v5, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OsAgent: Error in spliting MCC String"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/regex/PatternSyntaxException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/util/regex/PatternSyntaxException;
    goto :goto_2

    .line 1366
    :catch_3
    move-exception v5

    .line 1367
    .local v5, "e":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OsAgent: Error in reading MCC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_4

    .end local v5    # "e":Ljava/lang/NullPointerException;
    goto/16 :goto_2

    .line 1352
    .end local v4    # "mccStr":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1378
    .end local v0    # "mccList":[Ljava/lang/String;
    :cond_3
    goto :goto_4

    .line 1376
    :catch_4
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OsAgent: Error in reading configurations:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 1379
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_4
    return-void
.end method

.method private populateSIDRanges(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .param p2, "configSidRangeList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1313
    .local p1, "sidRangeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\["

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "sidRanges":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1317
    .local v4, "sidRangeStr":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1318
    .local v5, "sidRangeStr_t":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_0

    .line 1319
    goto/16 :goto_2

    .line 1321
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1322
    .local v6, "sidRange":[Ljava/lang/String;
    new-instance v8, Landroid/util/Range;

    aget-object v9, v6, v2

    .line 1323
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v7, v6, v7

    .line 1324
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v7, v8

    .line 1325
    .local v7, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "sidRangeStr_t":Ljava/lang/String;
    .end local v6    # "sidRange":[Ljava/lang/String;
    .end local v7    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 1332
    :catch_0
    move-exception v5

    .line 1333
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OsAgent: Error in reading SID range"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .end local v4    # "sidRangeStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 1329
    .restart local v4    # "sidRangeStr":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 1330
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OsAgent: Error in reading SID range "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    invoke-virtual {v5}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1330
    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_1

    .line 1326
    :catch_2
    move-exception v5

    .line 1327
    .local v5, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OsAgent: Error in spliting SID range"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    invoke-virtual {v5}, Ljava/util/regex/PatternSyntaxException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1327
    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1334
    .end local v4    # "sidRangeStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_1
    nop

    .line 1315
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1338
    .end local v0    # "sidRanges":[Ljava/lang/String;
    :cond_1
    goto :goto_3

    .line 1336
    :catch_3
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OsAgent: Error in reading configurations:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 1339
    .end local v0    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_3
    return-void
.end method

.method private queryChinaInfoCellList()Z
    .locals 4

    .line 766
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 767
    .local v0, "cellInfolist":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v0, :cond_0

    .line 768
    const/4 v1, 0x0

    return v1

    .line 770
    :cond_0
    const/4 v1, 0x0

    .line 771
    .local v1, "ret":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 772
    .local v3, "cellInfo":Landroid/telephony/CellInfo;
    invoke-direct {p0, v3}, Lcom/qualcomm/location/osagent/OsAgent;->getMccOrSidFromCellInfo(Landroid/telephony/CellInfo;)Z

    move-result v1

    .line 773
    if-eqz v1, :cond_1

    .line 774
    goto :goto_1

    .line 776
    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_1
    goto :goto_0

    .line 777
    :cond_2
    :goto_1
    return v1
.end method

.method private removeUpdateForContentData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 832
    .local p1, "removeDataItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 835
    .local v0, "iterList":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 837
    .local v1, "dataItemToRemove":I
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 838
    .end local v1    # "dataItemToRemove":I
    goto :goto_0

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 842
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    .line 844
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 846
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->subscribeForNewContentData()V

    .line 848
    :cond_1
    return-void
.end method

.method private sendCellUpdateInfo()V
    .locals 45

    .line 1818
    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1819
    return-void

    .line 1822
    :cond_0
    const/4 v0, 0x3

    .line 1823
    .local v0, "networkStatus":I
    const/4 v1, 0x0

    .line 1824
    .local v1, "air_interface_type":I
    const/4 v2, 0x0

    .line 1826
    .local v2, "valid_mask":I
    iget-object v3, v15, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    move-object v14, v3

    .line 1828
    .local v14, "location":Landroid/telephony/CellLocation;
    iget v3, v15, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_39

    iget v3, v15, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_39

    iget v3, v15, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 1832
    move-object/from16 v30, v14

    goto/16 :goto_23

    .line 1840
    :cond_1
    iget-object v3, v15, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    move v13, v3

    .line 1841
    .local v13, "nw_status":Z
    if-eqz v13, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    .line 1842
    .end local v0    # "networkStatus":I
    .local v3, "networkStatus":I
    :goto_0
    or-int/lit8 v0, v2, 0x1

    .line 1844
    .end local v2    # "valid_mask":I
    .local v0, "valid_mask":I
    iget-object v2, v15, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 1846
    .local v12, "strNetworkOperator":Ljava/lang/String;
    iget-object v2, v15, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    move v11, v2

    .line 1847
    .local v11, "nwtype":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network roaming status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", network type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1849
    const/16 v2, 0xd

    if-ne v11, v2, :cond_18

    .line 1852
    iget-object v2, v15, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    .line 1853
    .local v6, "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v6, :cond_17

    .line 1854
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    move-object v4, v2

    .line 1855
    .local v4, "ci":Landroid/telephony/CellInfo;
    instance-of v2, v4, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_15

    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1856
    const-string v2, "CellInfoLte instance is registered"

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1857
    move-object v2, v4

    check-cast v2, Landroid/telephony/CellInfoLte;

    .line 1858
    .local v2, "lteCell":Landroid/telephony/CellInfoLte;
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1860
    .local v17, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    move-object/from16 v10, v17

    if-eqz v10, :cond_15

    .line 1861
    .end local v17    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .local v10, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    const/16 v16, -0x1

    .line 1862
    .local v16, "cid":I
    const/16 v17, 0x0

    .line 1863
    .local v17, "iMcc":I
    const/16 v19, 0x0

    .line 1864
    .local v19, "iMnc":I
    const/16 v20, -0x1

    .line 1865
    .local v20, "pci":I
    const/16 v21, -0x1

    .line 1867
    .local v21, "tac":I
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v22

    move/from16 v23, v22

    .line 1868
    .end local v16    # "cid":I
    .local v23, "cid":I
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v16

    move/from16 v24, v16

    .line 1869
    .end local v17    # "iMcc":I
    .local v24, "iMcc":I
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v16

    move/from16 v25, v16

    .line 1870
    .end local v19    # "iMnc":I
    .local v25, "iMnc":I
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v16

    move/from16 v26, v16

    .line 1871
    .end local v20    # "pci":I
    .local v26, "pci":I
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v16

    move/from16 v27, v16

    .line 1873
    .end local v21    # "tac":I
    .local v27, "tac":I
    or-int/lit8 v0, v0, 0x2

    .line 1874
    const/16 v1, 0x8

    .line 1876
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RIL-TECH-TYPE = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " PCI = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v26

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v26    # "pci":I
    .local v8, "pci":I
    const-string v7, " CID = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v23

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v23    # "cid":I
    .local v7, "cid":I
    move-object/from16 v31, v2

    const-string v2, " TAC = "

    .end local v2    # "lteCell":Landroid/telephony/CellInfoLte;
    .local v31, "lteCell":Landroid/telephony/CellInfoLte;
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v27

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v27    # "tac":I
    .local v2, "tac":I
    move-object/from16 v32, v4

    const-string v4, " Network Operator = "

    .end local v4    # "ci":Landroid/telephony/CellInfo;
    .local v32, "ci":Landroid/telephony/CellInfo;
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Network Mcc = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v24

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v24    # "iMcc":I
    .local v4, "iMcc":I
    move-object/from16 v33, v5

    const-string v5, " Network Mnc = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v25

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v25    # "iMnc":I
    .local v5, "iMnc":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1883
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    const v9, 0x7fffffff

    if-ne v4, v9, :cond_3

    .line 1884
    move/from16 v34, v0

    goto :goto_3

    .line 1888
    :cond_3
    const/4 v9, -0x1

    if-lt v4, v9, :cond_6

    const/16 v9, 0x3e7

    if-le v4, v9, :cond_4

    goto :goto_2

    .line 1896
    :cond_4
    if-eqz v4, :cond_5

    .line 1897
    or-int/lit8 v0, v0, 0x8

    goto :goto_5

    .line 1901
    :cond_5
    move/from16 v34, v0

    goto :goto_4

    .line 1889
    :cond_6
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v0

    const-string v0, "RIL-TECH-TYPE = "

    .end local v0    # "valid_mask":I
    .local v34, "valid_mask":I
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " MCC= "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mcc out of valid range [0, 999]"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 1884
    .end local v34    # "valid_mask":I
    .restart local v0    # "valid_mask":I
    :cond_7
    move/from16 v34, v0

    .end local v0    # "valid_mask":I
    .restart local v34    # "valid_mask":I
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL-TECH-TYPE = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " MCC= "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mcc treated as unknown"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1901
    .end local v34    # "valid_mask":I
    .restart local v0    # "valid_mask":I
    :goto_4
    move/from16 v0, v34

    :goto_5
    const/4 v9, -0x1

    if-eq v5, v9, :cond_b

    const v9, 0x7fffffff

    if-ne v5, v9, :cond_8

    .line 1902
    move/from16 v35, v0

    move/from16 v36, v4

    goto :goto_7

    .line 1906
    :cond_8
    const/4 v9, -0x1

    if-lt v5, v9, :cond_a

    const/16 v9, 0x3e7

    if-le v5, v9, :cond_9

    goto :goto_6

    .line 1913
    :cond_9
    or-int/lit8 v0, v0, 0x10

    .line 1916
    move/from16 v36, v4

    goto :goto_9

    .line 1907
    :cond_a
    :goto_6
    const-string v9, "OsAgent"

    move/from16 v35, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "valid_mask":I
    .local v35, "valid_mask":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v4

    const-string v4, "RIL-TECH-TYPE = "

    .end local v4    # "iMcc":I
    .local v36, "iMcc":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " MNC= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mnc out of valid range [0, 999]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1902
    .end local v35    # "valid_mask":I
    .end local v36    # "iMcc":I
    .restart local v0    # "valid_mask":I
    .restart local v4    # "iMcc":I
    :cond_b
    move/from16 v35, v0

    move/from16 v36, v4

    .end local v0    # "valid_mask":I
    .end local v4    # "iMcc":I
    .restart local v35    # "valid_mask":I
    .restart local v36    # "iMcc":I
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL-TECH-TYPE = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " MNC= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mnc treated as unknown"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1916
    :goto_8
    move/from16 v0, v35

    .end local v35    # "valid_mask":I
    .restart local v0    # "valid_mask":I
    :goto_9
    const/4 v4, -0x1

    if-eq v2, v4, :cond_f

    const v9, 0x7fffffff

    if-ne v2, v9, :cond_c

    goto :goto_b

    .line 1921
    :cond_c
    if-lt v2, v4, :cond_e

    const v9, 0xffff

    if-le v2, v9, :cond_d

    goto :goto_a

    .line 1927
    :cond_d
    or-int/lit8 v0, v0, 0x20

    goto :goto_c

    .line 1922
    :cond_e
    const v9, 0xffff

    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " TAC = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tac out of valid range [0, 65535]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto :goto_c

    .line 1917
    :cond_f
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " TAC = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tac treated as unknown"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1930
    :goto_c
    const/4 v4, -0x1

    if-eq v7, v4, :cond_13

    const v9, 0x7fffffff

    if-ne v7, v9, :cond_10

    goto :goto_e

    .line 1935
    :cond_10
    if-lt v7, v4, :cond_12

    const v4, 0xfffffff

    if-le v7, v4, :cond_11

    goto :goto_d

    .line 1942
    :cond_11
    or-int/lit16 v0, v0, 0x80

    goto :goto_f

    .line 1936
    :cond_12
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " CID = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", cid out of valid range [0, 268435455]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto :goto_f

    .line 1931
    :cond_13
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " CID = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", cid treated as unknown"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1946
    :goto_f
    const/4 v9, -0x1

    if-eq v8, v9, :cond_14

    const v4, 0x7fffffff

    if-eq v8, v4, :cond_14

    const/16 v4, 0x1f7

    if-gt v8, v4, :cond_14

    .line 1947
    or-int/lit8 v0, v0, 0x40

    .line 1950
    :cond_14
    move/from16 v16, v1

    move-object v1, v15

    .end local v1    # "air_interface_type":I
    .local v16, "air_interface_type":I
    move/from16 v19, v2

    move-object/from16 v17, v31

    move/from16 v2, v16

    .end local v2    # "tac":I
    .end local v31    # "lteCell":Landroid/telephony/CellInfoLte;
    .local v17, "lteCell":Landroid/telephony/CellInfoLte;
    .local v19, "tac":I
    move-object/from16 v20, v32

    move/from16 v21, v36

    const v22, 0x7fffffff

    move/from16 v4, v21

    .end local v32    # "ci":Landroid/telephony/CellInfo;
    .end local v36    # "iMcc":I
    .local v20, "ci":Landroid/telephony/CellInfo;
    .local v21, "iMcc":I
    move/from16 v24, v5

    move-object/from16 v23, v33

    .end local v5    # "iMnc":I
    .local v24, "iMnc":I
    move-object/from16 v25, v6

    move v6, v7

    .end local v6    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .local v25, "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    move/from16 v26, v7

    move v7, v8

    .end local v7    # "cid":I
    .local v26, "cid":I
    move-object/from16 v37, v10

    move/from16 v10, v22

    move/from16 v22, v8

    move/from16 v8, v19

    .end local v8    # "pci":I
    .end local v10    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .local v22, "pci":I
    .local v37, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    move v10, v9

    move v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/qualcomm/location/osagent/OsAgent;->native_cell_update_lte(IIIIIIII)V

    .line 1953
    .end local v17    # "lteCell":Landroid/telephony/CellInfoLte;
    .end local v19    # "tac":I
    .end local v20    # "ci":Landroid/telephony/CellInfo;
    .end local v21    # "iMcc":I
    .end local v22    # "pci":I
    .end local v24    # "iMnc":I
    .end local v26    # "cid":I
    .end local v37    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    move/from16 v1, v16

    goto :goto_10

    .end local v16    # "air_interface_type":I
    .end local v25    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v1    # "air_interface_type":I
    .restart local v6    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :cond_15
    move-object/from16 v23, v5

    move-object/from16 v25, v6

    const/4 v10, -0x1

    .line 1854
    .end local v6    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v25    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :goto_10
    move-object/from16 v5, v23

    move-object/from16 v6, v25

    goto/16 :goto_1

    .line 1959
    .end local v25    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v6    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :cond_16
    move-object/from16 v25, v6

    .end local v6    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v25    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    goto :goto_11

    .line 1957
    .end local v25    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v6    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :cond_17
    move-object/from16 v25, v6

    .end local v6    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v25    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v2, "cellInfoValue = null"

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1959
    .end local v25    # "cellInfoValue":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :goto_11
    goto/16 :goto_24

    :cond_18
    const/4 v10, -0x1

    instance-of v2, v14, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_29

    .line 1960
    move-object v2, v14

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 1961
    .local v2, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v4, -0x1

    .line 1962
    .local v4, "psc":I
    const/4 v6, -0x1

    .line 1963
    .local v6, "cid":I
    const/4 v7, -0x1

    .line 1964
    .local v7, "lac":I
    const/4 v8, 0x0

    .line 1965
    .local v8, "iMcc":I
    const/4 v9, 0x0

    .line 1967
    .local v9, "iMnc":I
    const/16 v5, 0xf

    if-eq v11, v5, :cond_1a

    const/16 v5, 0x11

    if-eq v11, v5, :cond_1a

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    .line 2001
    .end local v4    # "psc":I
    .local v5, "psc":I
    :goto_12
    move v5, v4

    goto :goto_13

    .line 1971
    .end local v5    # "psc":I
    .restart local v4    # "psc":I
    :pswitch_0
    const/4 v1, 0x2

    .line 1972
    goto :goto_12

    .line 1987
    :pswitch_1
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v5

    move v4, v5

    .line 1988
    if-ne v4, v10, :cond_19

    .line 1990
    const/4 v1, 0x2

    goto :goto_12

    .line 1994
    :cond_19
    const/4 v1, 0x4

    .line 1996
    goto :goto_12

    .line 1984
    :cond_1a
    :pswitch_2
    const/4 v1, 0x4

    .line 1985
    goto :goto_12

    .line 2001
    .end local v4    # "psc":I
    .restart local v5    # "psc":I
    :goto_13
    const/4 v4, 0x4

    const/4 v10, 0x2

    if-eq v1, v10, :cond_1b

    if-ne v1, v4, :cond_1c

    .line 2004
    :cond_1b
    or-int/lit8 v0, v0, 0x2

    .line 2007
    :cond_1c
    if-eqz v12, :cond_1e

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1e

    .line 2009
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v15, v10, v4}, Lcom/qualcomm/location/osagent/OsAgent;->getMcc(II)I

    move-result v4

    .line 2010
    .end local v8    # "iMcc":I
    .local v4, "iMcc":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v15, v8, v10}, Lcom/qualcomm/location/osagent/OsAgent;->getMnc(II)I

    move-result v8

    .line 2018
    .end local v9    # "iMnc":I
    .local v8, "iMnc":I
    if-eqz v4, :cond_1d

    .line 2020
    or-int/lit8 v0, v0, 0x8

    .line 2023
    :cond_1d
    or-int/lit8 v0, v0, 0x10

    .line 2026
    move v10, v4

    move v9, v8

    goto :goto_14

    .end local v4    # "iMcc":I
    .local v8, "iMcc":I
    .restart local v9    # "iMnc":I
    :cond_1e
    move v10, v8

    .end local v8    # "iMcc":I
    .local v10, "iMcc":I
    :goto_14
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    move v8, v4

    .line 2027
    .end local v6    # "cid":I
    .local v8, "cid":I
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    move v7, v4

    .line 2034
    const/4 v4, -0x1

    if-eq v7, v4, :cond_22

    const v6, 0x7fffffff

    if-ne v7, v6, :cond_1f

    goto :goto_16

    .line 2040
    :cond_1f
    if-lt v7, v4, :cond_21

    const v4, 0xffff

    if-le v7, v4, :cond_20

    goto :goto_15

    .line 2048
    :cond_20
    or-int/lit8 v0, v0, 0x20

    goto :goto_17

    .line 2042
    :cond_21
    const v4, 0xffff

    :goto_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL-TECH-TYPE = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " LAC = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", lac out of valid range [0, 65535]"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto :goto_17

    .line 2036
    :cond_22
    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " LAC = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lac treated as unknown"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2052
    :goto_17
    const/4 v4, -0x1

    if-eq v8, v4, :cond_28

    const v6, 0x7fffffff

    if-ne v8, v6, :cond_23

    goto :goto_18

    .line 2058
    :cond_23
    const/4 v6, 0x2

    if-ne v1, v6, :cond_25

    if-lt v8, v4, :cond_24

    const v4, 0xffff

    if-le v8, v4, :cond_25

    .line 2061
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cid out of valid range [0, 65535]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto :goto_19

    .line 2065
    :cond_25
    const/4 v4, 0x4

    if-ne v1, v4, :cond_27

    const/4 v4, -0x1

    if-lt v8, v4, :cond_26

    const v4, 0xfffffff

    if-le v8, v4, :cond_27

    .line 2068
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cid out of valid range [0, 268435455]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto :goto_19

    .line 2074
    :cond_27
    or-int/lit8 v0, v0, 0x40

    goto :goto_19

    .line 2054
    :cond_28
    :goto_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cid treated as unknown"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2077
    :goto_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL-TECH-TYPE = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " PSC = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " LAC = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Network Operator = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Network Mcc = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Network Mnc = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2082
    move-object v4, v15

    move/from16 v16, v5

    move v5, v1

    .end local v5    # "psc":I
    .local v16, "psc":I
    move v6, v3

    move/from16 v17, v7

    move v7, v10

    .end local v7    # "lac":I
    .local v17, "lac":I
    move/from16 v18, v8

    move v8, v9

    .end local v8    # "cid":I
    .local v18, "cid":I
    move/from16 v19, v9

    move/from16 v9, v17

    .end local v9    # "iMnc":I
    .local v19, "iMnc":I
    move/from16 v20, v10

    move/from16 v10, v18

    .end local v10    # "iMcc":I
    .local v20, "iMcc":I
    move/from16 v21, v11

    move v11, v0

    .end local v11    # "nwtype":I
    .local v21, "nwtype":I
    invoke-direct/range {v4 .. v11}, Lcom/qualcomm/location/osagent/OsAgent;->native_cell_update_gw(IIIIIII)V

    .line 2083
    .end local v2    # "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v16    # "psc":I
    .end local v17    # "lac":I
    .end local v18    # "cid":I
    .end local v19    # "iMnc":I
    .end local v20    # "iMcc":I
    goto/16 :goto_24

    .end local v21    # "nwtype":I
    .restart local v11    # "nwtype":I
    :cond_29
    move/from16 v21, v11

    .end local v11    # "nwtype":I
    .restart local v21    # "nwtype":I
    instance-of v2, v14, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_38

    .line 2084
    const/4 v1, 0x1

    .line 2085
    const/4 v2, 0x2

    or-int/2addr v0, v2

    .line 2087
    move-object v2, v14

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 2088
    .local v2, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    const/4 v4, -0x1

    .local v4, "sid":I
    const/4 v5, -0x1

    .local v5, "nid":I
    const/4 v6, -0x1

    .local v6, "bsid":I
    const/4 v7, -0x1

    .local v7, "bslat":I
    const/4 v8, -0x1

    .local v8, "bslong":I
    const/16 v16, 0x0

    .line 2090
    .local v16, "iMcc":I
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    move v11, v9

    .line 2091
    .end local v4    # "sid":I
    .local v11, "sid":I
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    move v10, v4

    .line 2092
    .end local v5    # "nid":I
    .local v10, "nid":I
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    move v9, v4

    .line 2093
    .end local v6    # "bsid":I
    .local v9, "bsid":I
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v4

    move v7, v4

    .line 2094
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    move v8, v4

    .line 2096
    const/4 v4, -0x1

    if-eq v11, v4, :cond_2d

    const v5, 0x7fffffff

    if-ne v11, v5, :cond_2a

    goto :goto_1b

    .line 2101
    :cond_2a
    if-lt v11, v4, :cond_2c

    const/16 v4, 0x7fff

    if-le v11, v4, :cond_2b

    goto :goto_1a

    .line 2108
    :cond_2b
    or-int/lit8 v0, v0, 0x10

    goto :goto_1c

    .line 2103
    :cond_2c
    :goto_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL-TECH-TYPE = CDMA SID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sid out of valid range [0, 32767]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto :goto_1c

    .line 2098
    :cond_2d
    :goto_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL-TECH-TYPE = CDMA SID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sid treated as unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2111
    :goto_1c
    const/4 v4, -0x1

    if-eq v10, v4, :cond_31

    const v5, 0x7fffffff

    if-ne v10, v5, :cond_2e

    goto :goto_1e

    .line 2116
    :cond_2e
    if-lt v10, v4, :cond_30

    const v4, 0xffff

    if-le v10, v4, :cond_2f

    goto :goto_1d

    .line 2123
    :cond_2f
    or-int/lit8 v0, v0, 0x20

    goto :goto_1f

    .line 2118
    :cond_30
    :goto_1d
    const-string v4, "OsAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL-TECH-TYPE = CDMA NID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", nid out of valid range [0, 65535]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2113
    :cond_31
    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL-TECH-TYPE = CDMA NID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", nid treated as unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2126
    :goto_1f
    const/4 v4, -0x1

    if-eq v9, v4, :cond_35

    const v5, 0x7fffffff

    if-ne v9, v5, :cond_32

    goto :goto_21

    .line 2131
    :cond_32
    if-lt v9, v4, :cond_34

    const v4, 0xffff

    if-le v9, v4, :cond_33

    goto :goto_20

    .line 2138
    :cond_33
    or-int/lit8 v0, v0, 0x40

    goto :goto_22

    .line 2133
    :cond_34
    :goto_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL-TECH-TYPE = CDMA BSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bsid out of valid range [0, 65535]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto :goto_22

    .line 2128
    :cond_35
    :goto_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL-TECH-TYPE = CDMA BSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bsid treated as unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2141
    :goto_22
    const v4, 0x7fffffff

    if-eq v7, v4, :cond_36

    .line 2143
    or-int/lit16 v0, v0, 0x80

    .line 2145
    :cond_36
    if-eq v8, v4, :cond_37

    .line 2147
    or-int/lit16 v0, v0, 0x100

    .line 2151
    :cond_37
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    move-object v6, v4

    .line 2152
    .local v6, "timezone":Ljava/util/TimeZone;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object v5, v4

    .line 2153
    .local v5, "datenow":Ljava/util/Date;
    invoke-virtual {v6, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    .line 2155
    .local v4, "inDST":Z
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    move-wide/from16 v38, v17

    .line 2156
    .local v38, "timenow":J
    move/from16 v41, v13

    move-object/from16 v40, v14

    move-wide/from16 v13, v38

    invoke-virtual {v6, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v17

    .end local v14    # "location":Landroid/telephony/CellLocation;
    .end local v38    # "timenow":J
    .local v13, "timenow":J
    .local v40, "location":Landroid/telephony/CellLocation;
    .local v41, "nw_status":Z
    move/from16 v42, v17

    .line 2158
    .local v42, "UTCTimeOffset":I
    or-int/lit16 v0, v0, 0x200

    .line 2159
    or-int/lit16 v0, v0, 0x400

    .line 2161
    move-object/from16 v43, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    .local v43, "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v44, v5

    const-string v5, "RIL-TECH-TYPE = CDMA SID = "

    .end local v5    # "datenow":Ljava/util/Date;
    .local v44, "datenow":Ljava/util/Date;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " NID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " BSID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " BSLAT = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " BSLONG = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "DST = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "TimeOffset from UTC = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v42

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v42    # "UTCTimeOffset":I
    .local v5, "UTCTimeOffset":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2167
    move v2, v4

    move-object v4, v15

    .end local v4    # "inDST":Z
    .local v2, "inDST":Z
    move/from16 v18, v5

    move-object/from16 v17, v44

    move v5, v1

    .end local v5    # "UTCTimeOffset":I
    .end local v44    # "datenow":Ljava/util/Date;
    .local v17, "datenow":Ljava/util/Date;
    .local v18, "UTCTimeOffset":I
    move-object/from16 v19, v6

    move v6, v3

    .end local v6    # "timezone":Ljava/util/TimeZone;
    .local v19, "timezone":Ljava/util/TimeZone;
    move/from16 v20, v7

    move v7, v11

    .end local v7    # "bslat":I
    .local v20, "bslat":I
    move/from16 v22, v8

    move v8, v10

    .end local v8    # "bslong":I
    .local v22, "bslong":I
    move/from16 v23, v9

    .end local v9    # "bsid":I
    .local v23, "bsid":I
    move/from16 v24, v10

    move/from16 v10, v20

    .end local v10    # "nid":I
    .local v24, "nid":I
    move/from16 v25, v11

    move/from16 v11, v22

    .end local v11    # "sid":I
    .local v25, "sid":I
    move-object/from16 v26, v12

    move v12, v2

    .end local v12    # "strNetworkOperator":Ljava/lang/String;
    .local v26, "strNetworkOperator":Ljava/lang/String;
    move-wide/from16 v28, v13

    move/from16 v27, v41

    move/from16 v13, v18

    .end local v13    # "timenow":J
    .end local v41    # "nw_status":Z
    .local v27, "nw_status":Z
    .local v28, "timenow":J
    move-object/from16 v30, v40

    move v14, v0

    .end local v40    # "location":Landroid/telephony/CellLocation;
    .local v30, "location":Landroid/telephony/CellLocation;
    invoke-direct/range {v4 .. v14}, Lcom/qualcomm/location/osagent/OsAgent;->native_cell_update_cdma(IIIIIIIZII)V

    .line 2168
    .end local v2    # "inDST":Z
    .end local v16    # "iMcc":I
    .end local v17    # "datenow":Ljava/util/Date;
    .end local v18    # "UTCTimeOffset":I
    .end local v19    # "timezone":Ljava/util/TimeZone;
    .end local v20    # "bslat":I
    .end local v22    # "bslong":I
    .end local v23    # "bsid":I
    .end local v24    # "nid":I
    .end local v25    # "sid":I
    .end local v28    # "timenow":J
    .end local v43    # "cdmaCell":Landroid/telephony/cdma/CdmaCellLocation;
    goto :goto_24

    .line 2171
    .end local v26    # "strNetworkOperator":Ljava/lang/String;
    .end local v27    # "nw_status":Z
    .end local v30    # "location":Landroid/telephony/CellLocation;
    .restart local v12    # "strNetworkOperator":Ljava/lang/String;
    .local v13, "nw_status":Z
    .restart local v14    # "location":Landroid/telephony/CellLocation;
    :cond_38
    move-object/from16 v26, v12

    move/from16 v27, v13

    move-object/from16 v30, v14

    .end local v12    # "strNetworkOperator":Ljava/lang/String;
    .end local v13    # "nw_status":Z
    .end local v14    # "location":Landroid/telephony/CellLocation;
    .restart local v26    # "strNetworkOperator":Ljava/lang/String;
    .restart local v27    # "nw_status":Z
    .restart local v30    # "location":Landroid/telephony/CellLocation;
    const-string v2, "Unknown cell location type"

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .end local v0    # "valid_mask":I
    .end local v1    # "air_interface_type":I
    .end local v3    # "networkStatus":I
    .end local v21    # "nwtype":I
    .end local v26    # "strNetworkOperator":Ljava/lang/String;
    .end local v27    # "nw_status":Z
    .end local v30    # "location":Landroid/telephony/CellLocation;
    goto :goto_24

    .line 1832
    .local v0, "networkStatus":I
    .restart local v1    # "air_interface_type":I
    .local v2, "valid_mask":I
    .restart local v14    # "location":Landroid/telephony/CellLocation;
    :cond_39
    move-object/from16 v30, v14

    .end local v14    # "location":Landroid/telephony/CellLocation;
    .restart local v30    # "location":Landroid/telephony/CellLocation;
    :goto_23
    const/4 v0, 0x3

    .line 1833
    or-int/2addr v2, v4

    .line 1836
    invoke-direct {v15, v0, v2}, Lcom/qualcomm/location/osagent/OsAgent;->native_cell_update_ooo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    .end local v0    # "networkStatus":I
    .end local v1    # "air_interface_type":I
    .end local v2    # "valid_mask":I
    .end local v30    # "location":Landroid/telephony/CellLocation;
    :goto_24
    goto :goto_25

    .line 2174
    :catch_0
    move-exception v0

    .line 2175
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Cannot generate RIL Cell Update Information"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private sendServiceInfo()V
    .locals 8

    .line 1759
    const/4 v0, 0x0

    .local v0, "iMcc":I
    const/4 v1, 0x0

    .line 1765
    .local v1, "iMnc":I
    :try_start_0
    iget v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    iget v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto/16 :goto_0

    .line 1771
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    .line 1772
    .local v2, "nw_status":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1774
    iget-object v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 1776
    .local v5, "phoneType":I
    if-ne v5, v4, :cond_2

    .line 1777
    const-string v4, "Home carrier network is CDMA"

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1781
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMA Home Carrier = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1783
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCDMAHomeCarrier:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v6, v6}, Lcom/qualcomm/location/osagent/OsAgent;->native_serviceinfo_update(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 1786
    :cond_1
    const-string v3, "Unknown CDMA Home Carrier"

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1788
    :cond_2
    if-ne v5, v3, :cond_4

    .line 1789
    const-string v3, "Home carrier is G/W/L"

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1791
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 1792
    .local v3, "strSimOperator":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1794
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/qualcomm/location/osagent/OsAgent;->getMcc(II)I

    move-result v6

    move v0, v6

    .line 1795
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/qualcomm/location/osagent/OsAgent;->getMnc(II)I

    move-result v6

    move v1, v6

    .line 1798
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Carrier Mcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Carrier Mnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1800
    const-string v6, ""

    invoke-direct {p0, v4, v6, v0, v1}, Lcom/qualcomm/location/osagent/OsAgent;->native_serviceinfo_update(ILjava/lang/String;II)V

    .line 1801
    .end local v3    # "strSimOperator":Ljava/lang/String;
    goto :goto_1

    .line 1803
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot determine or unsupported phone type: Phone Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .end local v0    # "iMcc":I
    .end local v1    # "iMnc":I
    .end local v2    # "nw_status":Z
    .end local v5    # "phoneType":I
    goto :goto_1

    .line 1768
    .restart local v0    # "iMcc":I
    .restart local v1    # "iMnc":I
    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    .end local v0    # "iMcc":I
    .end local v1    # "iMnc":I
    :goto_1
    goto :goto_2

    .line 1807
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Cannot generate RIL Service Information"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1812
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private sendServiceStateInfo()V
    .locals 4

    .line 1737
    const/4 v0, 0x3

    .line 1739
    .local v0, "networkStatus":I
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1740
    iget v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentServiceState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 1747
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 1748
    .local v1, "nw_status":Z
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v0, v2

    .end local v1    # "nw_status":Z
    goto :goto_2

    .line 1743
    :cond_2
    :goto_1
    const/4 v0, 0x3

    .line 1751
    :goto_2
    invoke-direct {p0, v0}, Lcom/qualcomm/location/osagent/OsAgent;->native_service_state_update(I)V

    .line 1753
    :cond_3
    return-void
.end method

.method private sendTac()V
    .locals 4

    .line 2248
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2249
    .local v0, "imei":Ljava/lang/String;
    const-string v1, "-"

    .line 2251
    .local v1, "tac":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 2252
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2255
    :cond_0
    const/16 v2, 0x14

    invoke-direct {p0, v2, v1}, Lcom/qualcomm/location/osagent/OsAgent;->native_string_dataitem_update(ILjava/lang/String;)V

    .line 2256
    return-void
.end method

.method private sendTimeInfo()V
    .locals 9

    .line 1100
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1101
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1102
    .local v1, "currentTimeMillis":J
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 1103
    .local v3, "rawOffset":I
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    .line 1105
    .local v4, "dstSavings":I
    const-string v5, "Action time changed (%d, %d, %d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1106
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 1105
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1108
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qualcomm/location/osagent/OsAgent;->native_time_change_update(JII)V

    .line 1109
    return-void
.end method

.method private sendTimeZoneInfo()V
    .locals 9

    .line 1113
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1114
    .local v0, "tz":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1115
    .local v1, "currentTimeMillis":J
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 1116
    .local v3, "rawOffset":I
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    .line 1118
    .local v4, "dstSavings":I
    const-string v5, "Action timezone changed (%d, %d, %d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1119
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 1118
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1121
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/qualcomm/location/osagent/OsAgent;->native_timezone_change_update(JII)V

    .line 1123
    return-void
.end method

.method private setRegulatedFeatureAllowed()V
    .locals 6

    .line 1483
    iget v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInRegulatedArea:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 1485
    iget v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInRegulatedArea:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1487
    .local v0, "regulated":Z
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    if-nez v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-static {v3, v4, v5}, Lcom/qti/izat/XTProxy;->setFeatureAllowed(Landroid/content/Context;IZ)V

    .line 1489
    iget v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDeviceInRegulatedArea:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v0, v1

    .line 1491
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mNpProxy:Lcom/qualcomm/location/izatprovider/NpProxy;

    invoke-virtual {v1, v0}, Lcom/qualcomm/location/izatprovider/NpProxy;->setRegionalNpRegulate(Z)V

    .line 1493
    .end local v0    # "regulated":Z
    :cond_3
    return-void
.end method

.method private subscribeForNewContentData()V
    .locals 9

    .line 537
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 538
    .local v0, "iterList":Ljava/util/Iterator;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v1, "dataItemListForUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    if-nez v2, :cond_0

    .line 541
    new-instance v2, Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;-><init>(Lcom/qualcomm/location/osagent/OsAgent;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    .line 544
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 547
    .local v2, "newdataItem":I
    const/16 v3, 0xd

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v2, v3, :cond_6

    packed-switch v2, :pswitch_data_0

    .line 610
    const-string v3, "Unsupported data item"

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .end local v2    # "newdataItem":I
    goto/16 :goto_1

    .line 560
    .restart local v2    # "newdataItem":I
    :pswitch_0
    const-string v3, "wifi_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 561
    .local v3, "wifiOnUri":Landroid/net/Uri;
    const-string v6, "wifi_scan_always_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 563
    .local v6, "wifiScanAlwaysAvailableUri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    .line 564
    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    invoke-virtual {v7, v3, v5, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 566
    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    invoke-virtual {v7, v6, v5, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 568
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 570
    :cond_1
    if-nez v3, :cond_2

    .line 571
    const-string v4, "getUriFor(WIFI_ON) returned NULL"

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 573
    :cond_2
    if-nez v6, :cond_8

    .line 574
    const-string v4, "getUriFor(WIFI_SCAN_ALWAYS_AVAILABLE) returned null"

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 600
    .end local v3    # "wifiOnUri":Landroid/net/Uri;
    .end local v6    # "wifiScanAlwaysAvailableUri":Landroid/net/Uri;
    :pswitch_1
    const-string v3, "location_providers_allowed"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 601
    .local v3, "gpsStateUri":Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 602
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    invoke-virtual {v6, v3, v5, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 604
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 606
    :cond_3
    const-string v4, "getUriFor(LOCATION_PROVIDERS_ALLOWED) returned null"

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 608
    goto :goto_1

    .line 589
    .end local v3    # "gpsStateUri":Landroid/net/Uri;
    :pswitch_2
    const-string v3, "enhLocationServices_on"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 590
    .local v3, "eulaUri":Landroid/net/Uri;
    if-eqz v3, :cond_4

    .line 591
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    invoke-virtual {v6, v3, v5, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 593
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 595
    :cond_4
    const-string v4, "getUriFor(ENH_LOCATION_SERVICES_ENABLED) returned null"

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 597
    goto :goto_1

    .line 550
    .end local v3    # "eulaUri":Landroid/net/Uri;
    :pswitch_3
    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 551
    .local v3, "airplaneModeUri":Landroid/net/Uri;
    if-eqz v3, :cond_5

    .line 552
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    invoke-virtual {v6, v3, v5, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 554
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 556
    :cond_5
    const-string v4, "getUriFor(AIRPLANE_MODE_ON) returned null"

    invoke-static {v4}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 558
    goto :goto_1

    .line 579
    .end local v3    # "airplaneModeUri":Landroid/net/Uri;
    :cond_6
    const-string v6, "assisted_gps_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 580
    .local v6, "assistedGpsUri":Landroid/net/Uri;
    if-eqz v6, :cond_7

    .line 581
    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentObserver:Lcom/qualcomm/location/osagent/OsAgent$DataItemContentObserver;

    invoke-virtual {v7, v6, v5, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 583
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 585
    :cond_7
    const-string v3, "getUriFor(ASSISTED_GPS_ENABLED) returned null"

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 587
    nop

    .line 613
    .end local v2    # "newdataItem":I
    .end local v6    # "assistedGpsUri":Landroid/net/Uri;
    :cond_8
    :goto_1
    goto/16 :goto_0

    .line 615
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 616
    invoke-direct {p0, v1}, Lcom/qualcomm/location/osagent/OsAgent;->updateContentData(Ljava/util/List;)V

    .line 618
    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConnectivityStatus()V
    .locals 16

    .line 1128
    move-object/from16 v7, p0

    const-string v0, ""

    .line 1129
    .local v0, "type_name":Ljava/lang/String;
    const-string v1, ""

    .line 1130
    .local v1, "subtype_name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1131
    .local v2, "is_available":Z
    const/4 v3, 0x0

    .line 1132
    .local v3, "is_connected":Z
    const/4 v4, 0x0

    .line 1133
    .local v4, "is_roaming":Z
    const/16 v5, 0x12c

    .line 1134
    .local v5, "type":I
    const/4 v6, 0x0

    .line 1136
    .local v6, "rebindOsnlpZte":Z
    iget-object v8, v7, Lcom/qualcomm/location/osagent/OsAgent;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 1137
    .local v8, "active_network_info":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_2

    .line 1140
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1181
    :pswitch_0
    const/16 v5, 0x12c

    goto :goto_0

    .line 1149
    :pswitch_1
    const/16 v5, 0x65

    .line 1150
    goto :goto_0

    .line 1153
    :pswitch_2
    const/4 v6, 0x1

    .line 1154
    const/16 v5, 0x66

    .line 1155
    goto :goto_0

    .line 1174
    :pswitch_3
    const/16 v5, 0xdc

    .line 1175
    goto :goto_0

    .line 1165
    :pswitch_4
    const/16 v5, 0xcb

    .line 1166
    goto :goto_0

    .line 1162
    :pswitch_5
    const/16 v5, 0xca

    .line 1163
    goto :goto_0

    .line 1171
    :pswitch_6
    const/16 v5, 0xcd

    .line 1172
    goto :goto_0

    .line 1168
    :pswitch_7
    const/16 v5, 0xcc

    .line 1169
    goto :goto_0

    .line 1145
    :pswitch_8
    const/4 v6, 0x1

    .line 1146
    const/16 v5, 0x64

    .line 1147
    goto :goto_0

    .line 1159
    :pswitch_9
    const/16 v5, 0xc9

    .line 1160
    nop

    .line 1185
    :goto_0
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1186
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 1189
    :cond_0
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1190
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 1193
    :cond_1
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 1194
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 1195
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    .line 1198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update Connectivity Status isPhoneInServiceZte = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v7, Lcom/qualcomm/location/osagent/OsAgent;->isPhoneInServiceZte:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "; rebindOsnlpZte = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1200
    sget-boolean v9, Lcom/qualcomm/location/osagent/OsAgent;->ZTE_FEATURE_ENABLE_DUAL_NLP:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v7, Lcom/qualcomm/location/osagent/OsAgent;->isPhoneInServiceZte:Z

    if-nez v9, :cond_2

    if-eqz v6, :cond_2

    .line 1201
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/location/osagent/OsAgent;->queryChinaInfoCellList()Z

    move-result v9

    .line 1202
    .local v9, "isInChina":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update Connectivity Status isInChina = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1203
    if-eqz v9, :cond_2

    .line 1204
    iget-object v10, v7, Lcom/qualcomm/location/osagent/OsAgent;->mNpProxy:Lcom/qualcomm/location/izatprovider/NpProxy;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/qualcomm/location/izatprovider/NpProxy;->setRegionalNpRegulate(Z)V

    .line 1209
    .end local v9    # "isInChina":Z
    :cond_2
    move-object v11, v0

    move-object v12, v1

    move v13, v2

    move v9, v3

    move v14, v4

    move v10, v5

    move v15, v6

    .end local v0    # "type_name":Ljava/lang/String;
    .end local v1    # "subtype_name":Ljava/lang/String;
    .end local v2    # "is_available":Z
    .end local v3    # "is_connected":Z
    .end local v4    # "is_roaming":Z
    .end local v5    # "type":I
    .end local v6    # "rebindOsnlpZte":Z
    .local v9, "is_connected":Z
    .local v10, "type":I
    .local v11, "type_name":Ljava/lang/String;
    .local v12, "subtype_name":Ljava/lang/String;
    .local v13, "is_available":Z
    .local v14, "is_roaming":Z
    .local v15, "rebindOsnlpZte":Z
    move-object v0, v7

    move v1, v9

    move v2, v10

    move-object v3, v11

    move-object v4, v12

    move v5, v13

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/location/osagent/OsAgent;->native_networkinfo_update(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1210
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateContentData(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .local p1, "updateDataItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    .line 622
    iget-object v1, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 623
    return-void

    .line 628
    :cond_0
    if-eqz p1, :cond_1

    .line 629
    move-object/from16 v2, p1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    .line 631
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 632
    .local v3, "iterList":Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 633
    .local v4, "idxDataItem":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 634
    .local v5, "size":I
    new-array v6, v5, [I

    .line 635
    .local v6, "dataItemArray":[I
    new-array v7, v5, [Z

    .line 637
    .local v7, "dataItemValueArray":[Z
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 638
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 640
    .local v8, "newdataItem":I
    iget-object v9, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    if-eq v2, v9, :cond_2

    .line 641
    iget-object v9, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 642
    goto :goto_1

    .line 646
    :cond_2
    const/16 v9, 0xd

    if-eq v8, v9, :cond_c

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_7

    .line 666
    :pswitch_0
    const/4 v11, 0x0

    .line 668
    .local v11, "wifiState":Z
    iget-object v12, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 669
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_on"

    iget v14, v0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 668
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 671
    .local v12, "wifiHardwareStateStr":Ljava/lang/String;
    iget-object v13, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 672
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_scan_always_enabled"

    iget v15, v0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 671
    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 675
    .local v13, "wifiScanAlwaysAvailableStr":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 676
    iget-object v14, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 677
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_on"

    iget v9, v0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 676
    invoke-static {v14, v15, v9}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 680
    .local v9, "airplaneModeStr":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Wifi Hardware State: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "; airplane mode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 682
    const-string v14, "0"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "3"

    .line 683
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v9, :cond_3

    const-string v14, "1"

    .line 685
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    move/from16 v16, v10

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    :goto_2
    move/from16 v11, v16

    .line 686
    .end local v9    # "airplaneModeStr":Ljava/lang/String;
    goto :goto_3

    .line 687
    :cond_5
    const-string v9, "getString for Settings.Global.WIFI_ON returned null"

    invoke-static {v9}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 690
    :goto_3
    if-eqz v13, :cond_6

    .line 691
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Wifi Scan Always Available: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 692
    const-string v9, "1"

    invoke-virtual {v13, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    or-int/2addr v11, v9

    goto :goto_4

    .line 694
    :cond_6
    const-string v9, "getString for WIFI_SCAN_ALWAYS_AVAILABLE returned null"

    invoke-static {v9}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 697
    :goto_4
    if-nez v12, :cond_7

    if-eqz v13, :cond_e

    .line 698
    :cond_7
    const/4 v9, 0x4

    aput v9, v6, v4

    .line 699
    aput-boolean v11, v7, v4

    goto/16 :goto_7

    .line 741
    .end local v11    # "wifiState":Z
    .end local v12    # "wifiHardwareStateStr":Ljava/lang/String;
    .end local v13    # "wifiScanAlwaysAvailableStr":Ljava/lang/String;
    :pswitch_1
    iget-object v9, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 742
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "location_providers_allowed"

    iget v11, v0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 741
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 744
    .local v9, "nlpStateStr":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NlpState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 747
    const-string v10, "network"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 748
    .local v10, "nlpState":Z
    const/4 v11, 0x3

    aput v11, v6, v4

    .line 749
    aput-boolean v10, v7, v4

    .line 750
    .end local v10    # "nlpState":Z
    goto/16 :goto_7

    .line 751
    :cond_8
    const-string v10, "getStringForUser LOCATION_PROVIDERS_ALLOWED returned null"

    invoke-static {v10}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .end local v9    # "nlpStateStr":Ljava/lang/String;
    goto/16 :goto_7

    .line 727
    :pswitch_2
    iget-object v9, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 728
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "location_providers_allowed"

    iget v11, v0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 727
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 730
    .local v9, "gpsStateStr":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 731
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Gps state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 733
    const-string v10, "gps"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 734
    .local v10, "gpsState":Z
    const/4 v11, 0x2

    aput v11, v6, v4

    .line 735
    aput-boolean v10, v7, v4

    .line 736
    .end local v10    # "gpsState":Z
    goto/16 :goto_7

    .line 737
    :cond_9
    const-string v10, "getStringForUser LOCATION_PROVIDERS_ALLOWED returned null"

    invoke-static {v10}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 739
    goto/16 :goto_7

    .line 717
    .end local v9    # "gpsStateStr":Ljava/lang/String;
    :pswitch_3
    iget-object v9, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 718
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "enhLocationServices_on"

    const/4 v12, -0x1

    iget v13, v0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 717
    invoke-static {v9, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 720
    .local v9, "eula_state":I
    if-nez v9, :cond_a

    move/from16 v16, v10

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    :goto_5
    move/from16 v11, v16

    .line 721
    .local v11, "eulaState":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Eula: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 723
    aput v10, v6, v4

    .line 724
    aput-boolean v11, v7, v4

    .line 725
    goto :goto_7

    .line 650
    .end local v9    # "eula_state":I
    .end local v11    # "eulaState":Z
    :pswitch_4
    iget-object v9, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 651
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    iget v11, v0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 650
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "airplaneModeStr":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 655
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Airplane Mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 657
    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 658
    .local v10, "airplaneMode":Z
    const/4 v11, 0x0

    aput v11, v6, v4

    .line 659
    aput-boolean v10, v7, v4

    .line 660
    .end local v10    # "airplaneMode":Z
    goto :goto_6

    .line 661
    :cond_b
    const-string v10, "getString for AIRPLANE_MODE_ON returned null"

    invoke-static {v10}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 664
    .end local v9    # "airplaneModeStr":Ljava/lang/String;
    :goto_6
    goto :goto_7

    .line 703
    :cond_c
    iget-object v10, v0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    .line 704
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "assisted_gps_enabled"

    iget v12, v0, Lcom/qualcomm/location/osagent/OsAgent;->mCurrentUserId:I

    .line 703
    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 706
    .local v10, "assistedGpsStr":Ljava/lang/String;
    if-eqz v10, :cond_d

    .line 707
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Assisted Gps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 709
    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 710
    .local v11, "assistedGps":Z
    aput v9, v6, v4

    .line 711
    aput-boolean v11, v7, v4

    .line 712
    .end local v11    # "assistedGps":Z
    goto :goto_7

    .line 713
    :cond_d
    const-string v9, "getStringForUser ASSISTED_GPS_ENABLED returned null"

    invoke-static {v9}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 715
    nop

    .line 756
    .end local v10    # "assistedGpsStr":Ljava/lang/String;
    :cond_e
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 757
    .end local v8    # "newdataItem":I
    goto/16 :goto_1

    .line 760
    :cond_f
    invoke-direct {v0, v6, v7}, Lcom/qualcomm/location/osagent/OsAgent;->native_bool_dataitem_update([I[Z)V

    .line 761
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMccmnc()V
    .locals 12

    .line 2259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2261
    .local v0, "mccmnc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2262
    .local v1, "operator":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2267
    :cond_0
    const-string v5, "%s|%s"

    new-array v6, v3, [Ljava/lang/Object;

    .line 2268
    const/4 v7, 0x3

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2270
    .local v5, "mccmnc_formatted":Ljava/lang/String;
    const-string v6, "000|00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2271
    const-string v6, "operator MCCMNC is \"000|00\". filtered out."

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 2272
    const-string v6, "-"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2275
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5    # "mccmnc_formatted":Ljava/lang/String;
    goto :goto_1

    .line 2263
    :cond_2
    :goto_0
    const-string v5, "-"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2279
    :goto_1
    iget-object v5, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    .line 2280
    .local v5, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 2281
    .local v6, "siList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 2282
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 2283
    .local v8, "si":Landroid/telephony/SubscriptionInfo;
    const-string v9, "%d|%02d"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2284
    .local v9, "mccmnc_formatted":Ljava/lang/String;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2285
    .end local v8    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "mccmnc_formatted":Ljava/lang/String;
    goto :goto_2

    .line 2288
    :cond_3
    const-string v2, "+"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 2290
    .local v2, "mccmncStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2291
    const/16 v3, 0x15

    invoke-direct {p0, v3, v2}, Lcom/qualcomm/location/osagent/OsAgent;->native_string_dataitem_update(ILjava/lang/String;)V

    .line 2294
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->checkRegion()V

    .line 2295
    return-void
.end method


# virtual methods
.method public handleBleScan(Z)Z
    .locals 18
    .param p1, "enable"    # Z

    move-object/from16 v11, p0

    .line 1515
    move/from16 v12, p1

    const/4 v0, 0x0

    .line 1516
    .local v0, "retVal":Z
    const/4 v1, 0x0

    .line 1517
    .local v1, "state":I
    iget-object v2, v11, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 1519
    iget-object v2, v11, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    const-string v3, "bluetooth"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    .line 1520
    .local v2, "bluetoothMngr":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, v11, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1522
    .end local v2    # "bluetoothMngr":Landroid/bluetooth/BluetoothManager;
    :cond_0
    iget-object v2, v11, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_5

    iget-boolean v2, v11, Lcom/qualcomm/location/osagent/OsAgent;->mBtleScanStarted:Z

    if-eq v2, v12, :cond_5

    .line 1523
    iput-boolean v12, v11, Lcom/qualcomm/location/osagent/OsAgent;->mBtleScanStarted:Z

    .line 1524
    iget-object v2, v11, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v13

    .line 1525
    .end local v1    # "state":I
    .local v13, "state":I
    if-eqz v12, :cond_4

    .line 1527
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    .line 1528
    .local v14, "filter":Landroid/content/IntentFilter;
    iget-object v1, v11, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/qualcomm/location/osagent/OsAgent;->mBtLeStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1530
    iget-object v1, v11, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enableBLE()Z

    move-result v15

    .line 1531
    .end local v0    # "retVal":Z
    .local v15, "retVal":Z
    if-nez v15, :cond_1

    .line 1532
    const/4 v0, 0x2

    new-array v10, v0, [B

    .line 1534
    .local v10, "dummyBtApMacAddress":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v16, 0x3

    move-object v0, v11

    move-object v3, v10

    move-object/from16 v17, v10

    move/from16 v10, v16

    .end local v10    # "dummyBtApMacAddress":[B
    .local v17, "dummyBtApMacAddress":[B
    invoke-direct/range {v0 .. v10}, Lcom/qualcomm/location/osagent/OsAgent;->native_btle_scan_data_inject(ZI[BJJJI)V

    .line 1536
    .end local v17    # "dummyBtApMacAddress":[B
    goto :goto_0

    :cond_1
    const/16 v0, 0xf

    if-eq v0, v13, :cond_2

    const/16 v0, 0xc

    if-ne v0, v13, :cond_3

    .line 1539
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/location/osagent/OsAgent;->handleBleScanStart()V

    .line 1543
    .end local v14    # "filter":Landroid/content/IntentFilter;
    :cond_3
    :goto_0
    nop

    .line 1549
    move v0, v15

    goto :goto_1

    .line 1545
    .end local v15    # "retVal":Z
    .restart local v0    # "retVal":Z
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/qualcomm/location/osagent/OsAgent;->handleBleScanStop(Z)V

    .line 1546
    const/4 v0, 0x1

    goto :goto_1

    .line 1549
    .end local v13    # "state":I
    .restart local v1    # "state":I
    :cond_5
    move v13, v1

    .end local v1    # "state":I
    .restart local v13    # "state":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBleScan BTLE state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " retval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1550
    return v0
.end method

.method public handleBleScanStart()V
    .locals 14

    .line 1556
    const/4 v0, 0x0

    .line 1557
    .local v0, "retVal":Z
    const/4 v1, 0x0

    .line 1559
    .local v1, "state":I
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    .line 1560
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v1

    .line 1561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtLeScanStartTime:J

    .line 1562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBleScanStart startLeScan ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtLeScanStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1564
    if-nez v0, :cond_0

    .line 1565
    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 1567
    .local v2, "dummyBtApMacAddress":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    move-object v3, p0

    move-object v6, v2

    invoke-direct/range {v3 .. v13}, Lcom/qualcomm/location/osagent/OsAgent;->native_btle_scan_data_inject(ZI[BJJJI)V

    .line 1570
    .end local v2    # "dummyBtApMacAddress":[B
    :cond_0
    return-void
.end method

.method public handleBleScanStop(Z)V
    .locals 14
    .param p1, "sendErrMsg"    # Z

    .line 1575
    const/4 v0, 0x0

    .line 1576
    .local v0, "retVal":Z
    const/4 v1, 0x0

    .line 1578
    .local v1, "state":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBleScanStop sendErrMsg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1579
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtleScanStarted:Z

    .line 1581
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtLeStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1582
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 1583
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disableBLE()Z

    .line 1584
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBtLeScanStartTime:J

    .line 1585
    if-eqz p1, :cond_0

    .line 1586
    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 1588
    .local v2, "dummyBtApMacAddress":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    move-object v3, p0

    move-object v6, v2

    invoke-direct/range {v3 .. v13}, Lcom/qualcomm/location/osagent/OsAgent;->native_btle_scan_data_inject(ZI[BJJJI)V

    .line 1591
    .end local v2    # "dummyBtApMacAddress":[B
    :cond_0
    return-void
.end method

.method public handleClassicBtDevScan(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .line 1647
    const/4 v0, 0x0

    .line 1648
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 1651
    .local v1, "bluetoothMngr":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1653
    .end local v1    # "bluetoothMngr":Landroid/bluetooth/BluetoothManager;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    .line 1654
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz p1, :cond_1

    .line 1656
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->bBtClassicDevScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1657
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_0

    .line 1660
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->bBtClassicDevScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1661
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 1663
    :goto_0
    const/4 v0, 0x1

    .line 1665
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleclassicBtdevscan enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " retval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 1666
    return v0
.end method

.method public handleModuleTurnOff(I)V
    .locals 2
    .param p1, "dit"    # I

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSAgent handleModuleTurnOff+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 526
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/location/osagent/OsAgent;->handleClassicBtDevScan(Z)Z

    .line 528
    goto :goto_0

    .line 519
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/location/osagent/OsAgent;->handleBleScan(Z)Z

    .line 521
    nop

    .line 533
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleModuleTurnOn(II)V
    .locals 2
    .param p1, "dit"    # I
    .param p2, "timeOut"    # I

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSAgent handleModuleTurnOn+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 502
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/location/osagent/OsAgent;->handleClassicBtDevScan(Z)Z

    .line 504
    goto :goto_0

    .line 495
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/qualcomm/location/osagent/OsAgent;->handleBleScan(Z)Z

    .line 497
    nop

    .line 509
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleRequestData(Ljava/lang/Object;)V
    .locals 4
    .param p1, "dataItemsArray"    # Ljava/lang/Object;

    .line 379
    move-object v0, p1

    check-cast v0, [I

    .line 381
    .local v0, "dataItems":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 383
    aget v2, v0, v1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x14

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 394
    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendTimeInfo()V

    .line 395
    goto :goto_1

    .line 390
    :pswitch_1
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendTimeZoneInfo()V

    .line 391
    goto :goto_1

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendTac()V

    goto :goto_1

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendServiceInfo()V

    .line 387
    nop

    .line 381
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "index":I
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSubscribe(Ljava/lang/Object;)V
    .locals 9
    .param p1, "dataItemsArray"    # Ljava/lang/Object;

    .line 208
    move-object v0, p1

    check-cast v0, [I

    .line 210
    .local v0, "dataItems":[I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "index":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 212
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    goto/16 :goto_4

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    aget v3, v0, v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 304
    :pswitch_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v6, "Registering for battery change notifications  "

    invoke-static {v6}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 306
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBatteryLevelChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v3, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 311
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v6, "batteryFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 314
    .local v5, "batteryIntent":Landroid/content/Intent;
    const-string v7, "level"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 315
    .local v7, "level":I
    const-string v8, "scale"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 316
    .local v4, "scale":I
    invoke-direct {p0, v7, v4}, Lcom/qualcomm/location/osagent/OsAgent;->notifyBatteryPct(II)V

    .line 318
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "scale":I
    .end local v5    # "batteryIntent":Landroid/content/Intent;
    .end local v6    # "batteryFilter":Landroid/content/IntentFilter;
    .end local v7    # "level":I
    goto/16 :goto_4

    .line 354
    :pswitch_2
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v3, :cond_1

    .line 355
    new-instance v3, Lcom/qualcomm/location/osagent/OsAgent$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/location/osagent/OsAgent$1;-><init>(Lcom/qualcomm/location/osagent/OsAgent;)V

    iput-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 362
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 363
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->updateMccmnc()V

    goto/16 :goto_4

    .line 338
    :pswitch_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 342
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto/16 :goto_4

    .line 346
    :pswitch_4
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 347
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mWifiSupplicantStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 350
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto/16 :goto_4

    .line 330
    :pswitch_5
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 334
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto/16 :goto_4

    .line 322
    :pswitch_6
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTimeZoneChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 326
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto/16 :goto_4

    .line 283
    :pswitch_7
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v6, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mPowerConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v3, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 290
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .restart local v6    # "batteryFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 293
    .restart local v5    # "batteryIntent":Landroid/content/Intent;
    const-string v7, "plugged"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 294
    .local v4, "plugged":I
    const/4 v7, 0x1

    if-eq v4, v7, :cond_3

    const/4 v8, 0x2

    if-ne v4, v8, :cond_2

    goto :goto_1

    :cond_2
    move v8, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v7

    .line 296
    .local v8, "currentBatteryCharging":Z
    :goto_2
    if-eqz v8, :cond_4

    .line 297
    invoke-direct {p0, v7}, Lcom/qualcomm/location/osagent/OsAgent;->native_power_connect_status_update(Z)V

    .line 300
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "plugged":I
    .end local v5    # "batteryIntent":Landroid/content/Intent;
    .end local v6    # "batteryFilter":Landroid/content/IntentFilter;
    .end local v8    # "currentBatteryCharging":Z
    :cond_4
    goto/16 :goto_4

    .line 274
    :pswitch_8
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mScreenStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 279
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto/16 :goto_4

    .line 246
    :pswitch_9
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 247
    const/16 v3, 0xb

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/location/osagent/OsAgent;->native_string_dataitem_update(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 241
    :pswitch_a
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 242
    const/16 v3, 0xa

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/qualcomm/location/osagent/OsAgent;->native_string_dataitem_update(ILjava/lang/String;)V

    goto :goto_4

    .line 238
    :pswitch_b
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendServiceStateInfo()V

    .line 239
    goto :goto_4

    .line 252
    :pswitch_c
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->sendCellUpdateInfo()V

    .line 253
    goto :goto_4

    .line 258
    :pswitch_d
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 260
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_5

    .line 261
    const-string v1, "Fail to acquire connectivityManager service"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 262
    return-void

    .line 265
    :cond_5
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/qualcomm/location/osagent/OsAgent;->mNetworkConnChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 268
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->updateConnectivityStatus()V

    .line 270
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto :goto_4

    .line 223
    :pswitch_e
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 235
    :pswitch_f
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    goto :goto_4

    .line 227
    :goto_3
    :pswitch_10
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 228
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 372
    .end local v2    # "index":I
    :cond_7
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 373
    invoke-direct {p0}, Lcom/qualcomm/location/osagent/OsAgent;->subscribeForNewContentData()V

    .line 375
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleUnsubscribe(Ljava/lang/Object;)V
    .locals 6
    .param p1, "dataItemsArray"    # Ljava/lang/Object;

    .line 406
    move-object v0, p1

    check-cast v0, [I

    .line 409
    .local v0, "dataItems":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v1, "contentDataItemArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 413
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 415
    goto/16 :goto_2

    .line 419
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 420
    aget v3, v0, v2

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    const/16 v4, 0x15

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 456
    :pswitch_0
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 457
    goto :goto_2

    .line 459
    :pswitch_1
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mWifiSupplicantStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    .line 453
    :pswitch_2
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    goto :goto_2

    .line 450
    :pswitch_3
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTimeZoneChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 451
    goto :goto_2

    .line 444
    :pswitch_4
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mPowerConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    goto :goto_2

    .line 441
    :pswitch_5
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mScreenStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    goto :goto_2

    .line 438
    :pswitch_6
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mNetworkConnChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    goto :goto_2

    .line 428
    :pswitch_7
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    goto :goto_2

    .line 447
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mBatteryLevelChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 448
    goto :goto_2

    .line 461
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-eqz v3, :cond_4

    .line 462
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 463
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 465
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    goto :goto_2

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/qualcomm/location/osagent/OsAgent;->mRilListener:Lcom/qualcomm/location/osagent/OsAgent$RilListener;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 435
    nop

    .line 411
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 471
    .end local v2    # "index":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 472
    invoke-direct {p0, v1}, Lcom/qualcomm/location/osagent/OsAgent;->removeUpdateForContentData(Ljava/util/List;)V

    .line 474
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleUnsubscribeAll()V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 479
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/Integer;

    .line 480
    .local v1, "dataItemArray":[Ljava/lang/Integer;
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/Integer;

    .line 482
    invoke-virtual {p0, v1}, Lcom/qualcomm/location/osagent/OsAgent;->handleUnsubscribe(Ljava/lang/Object;)V

    .line 483
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mDataItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 484
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mContentSettingsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 485
    return-void
.end method

.method public requestData([I)V
    .locals 4
    .param p1, "dataItemArray"    # [I

    .line 148
    const-string v0, "OSAgent request data.... +"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 150
    if-nez p1, :cond_0

    .line 151
    const-string v0, "dataItemArray received is NULL"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 152
    return-void

    .line 155
    :cond_0
    move-object v0, p1

    .line 156
    .local v0, "dataItemsList":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OSAgent request data:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 162
    .local v1, "msgObj":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method public subscribe([I)V
    .locals 4
    .param p1, "dataItemArray"    # [I

    .line 129
    const-string v0, "OSAgent subscribe.... +"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 131
    if-nez p1, :cond_0

    .line 132
    const-string v0, "dataItemArray received is NULL"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 133
    return-void

    .line 136
    :cond_0
    move-object v0, p1

    .line 137
    .local v0, "dataItemsList":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OSAgent subscribe:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 143
    .local v1, "msgObj":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    return-void
.end method

.method public turnOff(I)V
    .locals 3
    .param p1, "dit"    # I

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSAgent turnOff+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 203
    .local v0, "msgObj":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    return-void
.end method

.method public turnOn(II)V
    .locals 2
    .param p1, "dit"    # I
    .param p2, "timeOut"    # I

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSAgent turnOn+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, "msgObj":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    return-void
.end method

.method public unsubscribe([I)V
    .locals 4
    .param p1, "dataItemArray"    # [I

    .line 167
    const-string v0, "OSAgent unsubscribe.... +"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 169
    if-nez p1, :cond_0

    .line 170
    const-string v0, "dataItemArray received is NULL"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->loge(Ljava/lang/String;)V

    .line 171
    return-void

    .line 174
    :cond_0
    move-object v0, p1

    .line 175
    .local v0, "dataItemsList":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OSAgent unsubscribe:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->logd(Ljava/lang/String;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 181
    .local v1, "msgObj":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    return-void
.end method

.method public unsubscribeAll()V
    .locals 2

    .line 186
    const-string v0, "OSAgent unsubscribeAll.... +"

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->logv(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "msgObj":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void
.end method
