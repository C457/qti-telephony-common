.class public Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
.super Ljava/lang/Object;
.source "WiFiDBReceiver.java"


# static fields
.field private static final LOOKUP_STATUS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WiFiDBReceiver"

.field private static final VERBOSE:Z

.field private static final sCallBacksLock:Ljava/lang/Object;

.field public static sInstance:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;


# instance fields
.field private final mBinder:Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub;

.field private final mContext:Landroid/content/Context;

.field private mIsLegacySDKClient:Z

.field private mListenerIntent:Landroid/app/PendingIntent;

.field private mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "WiFiDBReceiver"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->VERBOSE:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sInstance:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    .line 274
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->native_wifi_db_receiver_class_init()V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mIsLegacySDKClient:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    .line 39
    iput-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    .line 58
    new-instance v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;-><init>(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mBinder:Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub;

    .line 50
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "WiFiDBReceiver"

    const-string v1, "WiFiDBReceiver construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->native_wifi_db_receiver_init()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    .line 26
    iget-boolean v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mIsLegacySDKClient:Z

    return v0
.end method

.method static synthetic access$002(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mIsLegacySDKClient:Z

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    .line 26
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
    .param p1, "x1"    # Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    .line 26
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 26
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    .line 26
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;I)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->native_wifi_db_receiver_request_ap_list(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    .line 26
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->native_wifi_db_receiver_request_scan_list()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->reverseLo24Hi24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;[Lcom/qti/wifidbreceiver/APLocationData;[Lcom/qti/wifidbreceiver/APSpecialInfo;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
    .param p1, "x1"    # [Lcom/qti/wifidbreceiver/APLocationData;
    .param p2, "x2"    # [Lcom/qti/wifidbreceiver/APSpecialInfo;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->native_wifi_db_receiver_push_ad([Lcom/qti/wifidbreceiver/APLocationData;[Lcom/qti/wifidbreceiver/APSpecialInfo;IZ)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sInstance:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sInstance:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    .line 46
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sInstance:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    return-object v0
.end method

.method private static native native_wifi_db_receiver_class_init()V
.end method

.method private native native_wifi_db_receiver_deinit()V
.end method

.method private native native_wifi_db_receiver_init()V
.end method

.method private native native_wifi_db_receiver_push_ad([Lcom/qti/wifidbreceiver/APLocationData;[Lcom/qti/wifidbreceiver/APSpecialInfo;IZ)I
.end method

.method private native native_wifi_db_receiver_request_ap_list(I)I
.end method

.method private native native_wifi_db_receiver_request_scan_list()I
.end method

.method private onAPListAvailable([Lcom/qti/wifidbreceiver/APInfoExt;ILandroid/location/Location;)V
    .locals 7
    .param p1, "apInfoExtArray"    # [Lcom/qti/wifidbreceiver/APInfoExt;
    .param p2, "status"    # I
    .param p3, "location"    # Landroid/location/Location;

    .line 171
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "WiFiDBReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAPListAvailable status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "apInfoExtList":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wifidbreceiver/APInfoExt;>;"
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "WiFiDBReceiver"

    const-string v3, "onAPListAvailable: AP List is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    sget-object v1, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 183
    :try_start_2
    iget-boolean v2, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mIsLegacySDKClient:Z

    if-eqz v2, :cond_2

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "apInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wifidbreceiver/APInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qti/wifidbreceiver/APInfoExt;

    .line 186
    .local v4, "apInfoExt":Lcom/qti/wifidbreceiver/APInfoExt;
    new-instance v5, Lcom/qti/wifidbreceiver/APInfo;

    invoke-direct {v5}, Lcom/qti/wifidbreceiver/APInfo;-><init>()V

    .line 187
    .local v5, "apInfo":Lcom/qti/wifidbreceiver/APInfo;
    iget-object v6, v4, Lcom/qti/wifidbreceiver/APInfoExt;->mMacAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mMacAddress:Ljava/lang/String;

    .line 189
    iget-object v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mMacAddress:Ljava/lang/String;

    invoke-static {v6}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->reverseLo24Hi24(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mMacAddress:Ljava/lang/String;

    .line 190
    iget-object v6, v4, Lcom/qti/wifidbreceiver/APInfoExt;->mSSID:[B

    iput-object v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mSSID:[B

    .line 191
    iget v6, v4, Lcom/qti/wifidbreceiver/APInfoExt;->mCellType:I

    iput v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mCellType:I

    .line 192
    iget v6, v4, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID1:I

    iput v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID1:I

    .line 193
    iget v6, v4, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID2:I

    iput v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID2:I

    .line 194
    iget v6, v4, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID3:I

    iput v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID3:I

    .line 195
    iget v6, v4, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID4:I

    iput v6, v5, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID4:I

    .line 197
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v4    # "apInfoExt":Lcom/qti/wifidbreceiver/APInfoExt;
    .end local v5    # "apInfo":Lcom/qti/wifidbreceiver/APInfo;
    goto :goto_1

    .line 200
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    invoke-interface {v3, v2}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->onAPListAvailable(Ljava/util/List;)V

    .line 202
    .end local v2    # "apInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wifidbreceiver/APInfo;>;"
    goto :goto_2

    .line 204
    :cond_2
    const/4 v2, 0x3

    if-ne v2, p2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    invoke-interface {v2, v0, p3}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->onLookupRequest(Ljava/util/List;Landroid/location/Location;)V

    goto :goto_2

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    invoke-interface {v2, v0, p2, p3}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->onAPListAvailableExt(Ljava/util/List;ILandroid/location/Location;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :goto_2
    goto :goto_3

    .line 212
    :catch_1
    move-exception v2

    .line 213
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "WiFiDBReceiver"

    const-string v4, "onAPListAvailable remote exception, sending intent"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v3, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v5, "WiFiDBReceiver"

    invoke-static {v3, v4, v5}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 217
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private onServiceRequest()V
    .locals 5

    .line 241
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "WiFiDBReceiver"

    const-string v1, "onServiceRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 247
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    invoke-interface {v1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->onServiceRequest()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WiFiDBReceiver"

    const-string v3, "onServiceRequest remote exception, sending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v4, "WiFiDBReceiver"

    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onStatusUpdate(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isSuccess"    # Z
    .param p2, "error"    # Ljava/lang/String;

    .line 221
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "WiFiDBReceiver"

    const-string v1, "onStatusUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 227
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mWiFiDBReceiverResponseListener:Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    invoke-interface {v1, p1, p2}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->onStatusUpdate(ZLjava/lang/String;)V

    .line 229
    sget-boolean v1, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->VERBOSE:Z

    if-eqz v1, :cond_1

    .line 230
    const-string v1, "WiFiDBReceiver"

    const-string v2, "onStatusUpdate: send update to listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :cond_1
    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WiFiDBReceiver"

    const-string v3, "onStatusUpdate remote exception, sending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v4, "WiFiDBReceiver"

    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 237
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static reverseLo24Hi24(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mac"    # Ljava/lang/String;

    .line 266
    move-object v0, p0

    .line 267
    .local v0, "res":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->native_wifi_db_receiver_deinit()V

    .line 263
    return-void
.end method

.method public getWiFiDBReceiverBinder()Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->mBinder:Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub;

    return-object v0
.end method
