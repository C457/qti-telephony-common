.class public Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
.super Ljava/lang/Object;
.source "WWANDBReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WWANDBReceiver"

.field private static final VERBOSE:Z

.field private static final sCallBacksLock:Ljava/lang/Object;

.field public static sInstance:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;


# instance fields
.field private final mBinder:Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub;

.field private final mContext:Landroid/content/Context;

.field private mIsLegacySDKClient:Z

.field private mListenerIntent:Landroid/app/PendingIntent;

.field private mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "WWANDBReceiver"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->VERBOSE:Z

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sInstance:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    .line 216
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->native_wwan_db_receiver_class_init()V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mIsLegacySDKClient:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    .line 36
    iput-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    .line 55
    new-instance v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;-><init>(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mBinder:Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub;

    .line 47
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "WWANDBReceiver"

    const-string v1, "WWANDBReceiver construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->native_wwan_db_receiver_init()V

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mIsLegacySDKClient:Z

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    .line 26
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
    .param p1, "x1"    # Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    .line 26
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 26
    sget-object v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 26
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    .line 26
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;I)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->native_wwan_db_receiver_request_bs_list(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;[Lcom/qti/wwandbreceiver/BSLocationData;[Lcom/qti/wwandbreceiver/BSSpecialInfo;I)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
    .param p1, "x1"    # [Lcom/qti/wwandbreceiver/BSLocationData;
    .param p2, "x2"    # [Lcom/qti/wwandbreceiver/BSSpecialInfo;
    .param p3, "x3"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->native_wwan_db_receiver_push_ad([Lcom/qti/wwandbreceiver/BSLocationData;[Lcom/qti/wwandbreceiver/BSSpecialInfo;I)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sInstance:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sInstance:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    .line 43
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sInstance:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    return-object v0
.end method

.method private static native native_wwan_db_receiver_class_init()V
.end method

.method private native native_wwan_db_receiver_deinit()V
.end method

.method private native native_wwan_db_receiver_init()V
.end method

.method private native native_wwan_db_receiver_push_ad([Lcom/qti/wwandbreceiver/BSLocationData;[Lcom/qti/wwandbreceiver/BSSpecialInfo;I)I
.end method

.method private native native_wwan_db_receiver_request_bs_list(I)I
.end method

.method private onBSListAvailable([Lcom/qti/wwandbreceiver/BSInfo;ILandroid/location/Location;)V
    .locals 6
    .param p1, "bsInfoList"    # [Lcom/qti/wwandbreceiver/BSInfo;
    .param p2, "status"    # I
    .param p3, "location"    # Landroid/location/Location;

    .line 146
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "WWANDBReceiver"

    const-string v1, "onBSListAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "bsList":Ljava/util/List;
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "WWANDBReceiver"

    const-string v3, "onBSListAvailable: BS List is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    sget-object v1, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 158
    :try_start_2
    iget-boolean v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mIsLegacySDKClient:Z

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    invoke-interface {v2, v0}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;->onBSListAvailable(Ljava/util/List;)V

    goto :goto_1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    invoke-interface {v2, v0, p2, p3}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;->onBSListAvailableExt(Ljava/util/List;ILandroid/location/Location;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :goto_1
    goto :goto_2

    .line 164
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "WWANDBReceiver"

    const-string v4, "onBSListAvailable remote exception, sending intent"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v5, "WWANDBReceiver"

    invoke-static {v3, v4, v5}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 169
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private onServiceRequest()V
    .locals 5

    .line 192
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "WWANDBReceiver"

    const-string v1, "onServiceRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 198
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    invoke-interface {v1}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;->onServiceRequest()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WWANDBReceiver"

    const-string v3, "onServiceRequest remote exception, sending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v4, "WWANDBReceiver"

    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 204
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 205
    return-void

    .line 204
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

    .line 173
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "WWANDBReceiver"

    const-string v1, "onStatusUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mWWANDBReceiverResponseListener:Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    invoke-interface {v1, p1, p2}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;->onStatusUpdate(ZLjava/lang/String;)V

    .line 180
    sget-boolean v1, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->VERBOSE:Z

    if-eqz v1, :cond_1

    .line 181
    const-string v1, "WWANDBReceiver"

    const-string v2, "onStatusUpdate: send update to listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_1
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WWANDBReceiver"

    const-string v3, "onStatusUpdate remote exception, sending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v4, "WWANDBReceiver"

    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 188
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->native_wwan_db_receiver_deinit()V

    .line 213
    return-void
.end method

.method public getWWANDBReceiverBinder()Lcom/qti/wwandbreceiver/IWWANDBReceiver;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->mBinder:Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub;

    return-object v0
.end method
