.class Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;
.super Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;
.source "WiFiDBProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    .line 53
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-direct {p0}, Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerResponseListener(Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "callback"    # Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    .param p2, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 57
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "WiFiDBProvider"

    const-string v1, "WiFiDBProvider registerResponseListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 62
    const-string v1, "WiFiDBProvider"

    const-string v2, "callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v0

    .line 66
    :cond_1
    if-nez p2, :cond_2

    .line 67
    const-string v1, "WiFiDBProvider"

    const-string v2, "notifyIntent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$100(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "WiFiDBProvider"

    const-string v2, "Response listener already provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v0

    .line 75
    :cond_3
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-static {v2, p1}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$102(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;)Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    .line 77
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-static {v2, p2}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$302(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-interface {p1}, Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1$1;-><init>(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;)V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    nop

    .line 95
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    const-string v0, "WiFiDBProvider"

    const-string v1, "WiFiDBProvider GTPClientHelper.SetClientRegistrationStatus IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$400(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qualcomm/location/izat/GTPClientHelper;->SetClientRegistrationStatus(Landroid/content/Context;IZ)V

    .line 101
    return v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed unregister WiFi DB provider cb"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public removeResponseListener(Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    .line 105
    if-nez p1, :cond_0

    .line 106
    const-string v0, "WiFiDBProvider"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$102(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;)Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    .line 111
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$302(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "WiFiDBProvider"

    const-string v1, "WiFiDBProvider GTPClientHelper.SetClientRegistrationStatus OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$400(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qualcomm/location/izat/GTPClientHelper;->SetClientRegistrationStatus(Landroid/content/Context;IZ)V

    .line 118
    return-void

    .line 112
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestAPObsLocData()I
    .locals 2

    .line 122
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "WiFiDBProvider"

    const-string v1, "in IWiFiDBProvider.Stub(): requestAPObsLocData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;->access$500(Lcom/qualcomm/location/izat/wifidbprovider/WiFiDBProvider;)I

    move-result v0

    return v0
.end method
