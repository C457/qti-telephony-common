.class public Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;
.super Ljava/lang/Object;
.source "WWANDBProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WWANDBProvider"

.field private static final VERBOSE:Z

.field private static final sCallBacksLock:Ljava/lang/Object;

.field public static sInstance:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;


# instance fields
.field private final mBinder:Lcom/qti/wwandbprovider/IWWANDBProvider$Stub;

.field private final mContext:Landroid/content/Context;

.field private mListenerIntent:Landroid/app/PendingIntent;

.field private mWWANDBProviderResponseListener:Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "WWANDBProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->VERBOSE:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->sCallBacksLock:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->sInstance:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    .line 179
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->native_wwan_db_provider_class_init()V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mWWANDBProviderResponseListener:Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    .line 34
    iput-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mListenerIntent:Landroid/app/PendingIntent;

    .line 53
    new-instance v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;-><init>(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mBinder:Lcom/qti/wwandbprovider/IWWANDBProvider$Stub;

    .line 45
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "WWANDBProvider"

    const-string v1, "WWANDBProvider construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->native_wwan_db_provider_init()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    .line 25
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mWWANDBProviderResponseListener:Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;)Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;
    .param p1, "x1"    # Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    .line 25
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mWWANDBProviderResponseListener:Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->sCallBacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 25
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mListenerIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    .line 25
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    .line 25
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->native_wwan_db_provider_request_bs_obs_data()I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->sInstance:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->sInstance:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    .line 41
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->sInstance:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    return-object v0
.end method

.method private static native native_wwan_db_provider_class_init()V
.end method

.method private native native_wwan_db_provider_deinit()V
.end method

.method private native native_wwan_db_provider_init()V
.end method

.method private native native_wwan_db_provider_request_bs_obs_data()I
.end method

.method private onBsObsLocDataAvailable([Lcom/qti/wwandbprovider/BSObsLocationData;I)V
    .locals 6
    .param p1, "obsDataArray"    # [Lcom/qti/wwandbprovider/BSObsLocationData;
    .param p2, "status"    # I

    .line 131
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "WWANDBProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBsObsLocDataAvailable status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "obsDataList":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wwandbprovider/BSObsLocationData;>;"
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "WWANDBProvider"

    const-string v3, "onAPListAvailable: AP List is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    sget-object v1, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mWWANDBProviderResponseListener:Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 144
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mWWANDBProviderResponseListener:Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    invoke-interface {v2, v0, p2}, Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;->onBsObsLocDataAvailable(Ljava/util/List;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    goto :goto_1

    .line 146
    :catch_1
    move-exception v2

    .line 147
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "WWANDBProvider"

    const-string v4, "onBsObsLocDataAvailable remote exception, sending intent"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v5, "WWANDBProvider"

    invoke-static {v3, v4, v5}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 151
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private onServiceRequest()V
    .locals 5

    .line 155
    sget-boolean v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "WWANDBProvider"

    const-string v1, "onServiceRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mWWANDBProviderResponseListener:Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mWWANDBProviderResponseListener:Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    invoke-interface {v1}, Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;->onServiceRequest()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WWANDBProvider"

    const-string v3, "onServiceRequest remote exception, sending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v4, "WWANDBProvider"

    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 167
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 168
    return-void

    .line 167
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

    .line 175
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->native_wwan_db_provider_deinit()V

    .line 176
    return-void
.end method

.method public getWWANDBProviderBinder()Lcom/qti/wwandbprovider/IWWANDBProvider;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->mBinder:Lcom/qti/wwandbprovider/IWWANDBProvider$Stub;

    return-object v0
.end method
