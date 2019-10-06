.class Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;
.super Lcom/qti/wwandbprovider/IWWANDBProvider$Stub;
.source "WWANDBProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    .line 53
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-direct {p0}, Lcom/qti/wwandbprovider/IWWANDBProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerResponseListener(Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "callback"    # Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;
    .param p2, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 57
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "WWANDBProvider"

    const-string v1, "WWANDBProvider registerResponseListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 62
    const-string v1, "WWANDBProvider"

    const-string v2, "callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v0

    .line 66
    :cond_1
    if-nez p2, :cond_2

    .line 67
    const-string v1, "WWANDBProvider"

    const-string v2, "notifyIntent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$100(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "WWANDBProvider"

    const-string v2, "Response listener already provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v0

    .line 75
    :cond_3
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-static {v2, p1}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$102(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;)Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    .line 77
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-static {v2, p2}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$302(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    invoke-interface {p1}, Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1$1;-><init>(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;)V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    nop

    .line 94
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    const-string v0, "WWANDBProvider"

    const-string v1, "WWANDBProvider GTPClientHelper.SetClientRegistrationStatus IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$400(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qualcomm/location/izat/GTPClientHelper;->SetClientRegistrationStatus(Landroid/content/Context;IZ)V

    .line 100
    return v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to unregister WWWAN DB provider cb"

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

.method public removeResponseListener(Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string v0, "WWANDBProvider"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$102(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;)Lcom/qti/wwandbprovider/IWWANDBProviderResponseListener;

    .line 110
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$302(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "WWANDBProvider"

    const-string v1, "WWANDBProvider GTPClientHelper.SetClientRegistrationStatus OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$400(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qualcomm/location/izat/GTPClientHelper;->SetClientRegistrationStatus(Landroid/content/Context;IZ)V

    .line 117
    return-void

    .line 111
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestBSObsLocData()I
    .locals 2

    .line 121
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "WWANDBProvider"

    const-string v1, "in IWWANDBProvider.Stub(): requestBSObsLocData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider$1;->this$0:Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;->access$500(Lcom/qualcomm/location/izat/wwandbprovider/WWANDBProvider;)I

    move-result v0

    return v0
.end method
