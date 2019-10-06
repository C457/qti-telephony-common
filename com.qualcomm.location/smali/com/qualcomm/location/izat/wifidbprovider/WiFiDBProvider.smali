.class public Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;
.super Ljava/lang/Object;
.source "WiFiDBProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WiFiDBProvider"

.field private static final VERBOSE_DBG:Z

.field private static final sCallBacksLock:Ljava/lang/Object;

.field public static sInstance:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;


# instance fields
.field private final mBinder:Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;

.field private final mContext:Landroid/content/Context;

.field private mListenerIntent:Landroid/app/PendingIntent;

.field private mWiFiDBProviderResponseListener:Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "WiFiDBProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->VERBOSE_DBG:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->sCallBacksLock:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->sInstance:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    .line 180
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->native_wifi_db_provider_class_init()V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mWiFiDBProviderResponseListener:Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    .line 34
    iput-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mListenerIntent:Landroid/app/PendingIntent;

    .line 53
    new-instance v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;-><init>(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mBinder:Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;

    .line 45
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->VERBOSE_DBG:Z

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "WiFiDBProvider"

    const-string v1, "WiFiDBProvider construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->native_wifi_db_provider_init()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->VERBOSE_DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    .line 25
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mWiFiDBProviderResponseListener:Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;)Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;
    .param p1, "x1"    # Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    .line 25
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mWiFiDBProviderResponseListener:Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->sCallBacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 25
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mListenerIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    .line 25
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    .line 25
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->native_wifi_db_provider_request_ap_obs_data()I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->sInstance:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->sInstance:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    .line 41
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->sInstance:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    return-object v0
.end method

.method private static native native_wifi_db_provider_class_init()V
.end method

.method private native native_wifi_db_provider_deinit()V
.end method

.method private native native_wifi_db_provider_init()V
.end method

.method private native native_wifi_db_provider_request_ap_obs_data()I
.end method

.method private onApObsLocDataAvailable([Lcom/qti/wifidbprovider/APObsLocData;I)V
    .locals 6
    .param p1, "obsDataArray"    # [Lcom/qti/wifidbprovider/APObsLocData;
    .param p2, "status"    # I

    .line 132
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->VERBOSE_DBG:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "WiFiDBProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApObsLocDataAvailable status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "obsDataList":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wifidbprovider/APObsLocData;>;"
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "WiFiDBProvider"

    const-string v3, "onAPListAvailable: AP List is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    sget-object v1, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mWiFiDBProviderResponseListener:Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 145
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mWiFiDBProviderResponseListener:Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    invoke-interface {v2, v0, p2}, Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;->onApObsLocDataAvailable(Ljava/util/List;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    goto :goto_1

    .line 147
    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "WiFiDBProvider"

    const-string v4, "onApObsLocDataAvailable remote exception, sending intent"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v3, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v5, "WiFiDBProvider"

    invoke-static {v3, v4, v5}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 152
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private onServiceRequest()V
    .locals 5

    .line 156
    sget-boolean v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->VERBOSE_DBG:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "WiFiDBProvider"

    const-string v1, "onServiceRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mWiFiDBProviderResponseListener:Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 162
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mWiFiDBProviderResponseListener:Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    invoke-interface {v1}, Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;->onServiceRequest()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "WiFiDBProvider"

    const-string v3, "onServiceRequest remote exception, sending intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mListenerIntent:Landroid/app/PendingIntent;

    const-string v4, "WiFiDBProvider"

    invoke-static {v2, v3, v4}, Lcom/qualcomm/location/izat/GTPClientHelper;->SendPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 168
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 169
    return-void

    .line 168
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

    .line 176
    invoke-direct {p0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->native_wifi_db_provider_deinit()V

    .line 177
    return-void
.end method

.method public getWiFiDBProviderBinder()Lcom/qti/wifidbprovider/IWiFiDBProvider;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->mBinder:Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;

    return-object v0
.end method
