.class Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;
.super Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub;
.source "WiFiDBReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    .line 58
    iput-object p1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-direct {p0}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public pushLookupResult(Ljava/util/List;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APSpecialInfo;",
            ">;)I"
        }
    .end annotation

    .line 164
    .local p1, "locData":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wifidbreceiver/APLocationData;>;"
    .local p2, "splData":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wifidbreceiver/APSpecialInfo;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/qti/wifidbreceiver/APLocationData;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/qti/wifidbreceiver/APLocationData;

    .line 165
    .local v1, "locs":[Lcom/qti/wifidbreceiver/APLocationData;
    new-array v2, v0, [Lcom/qti/wifidbreceiver/APSpecialInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/qti/wifidbreceiver/APSpecialInfo;

    .line 166
    .local v2, "spls":[Lcom/qti/wifidbreceiver/APSpecialInfo;
    iget-object v3, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v0, v4}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$900(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;[Lcom/qti/wifidbreceiver/APLocationData;[Lcom/qti/wifidbreceiver/APSpecialInfo;IZ)I

    move-result v0

    return v0
.end method

.method public pushWiFiDB(Ljava/util/List;Ljava/util/List;I)I
    .locals 4
    .param p3, "daysValid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APSpecialInfo;",
            ">;I)I"
        }
    .end annotation

    .line 148
    .local p1, "locData":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wifidbreceiver/APLocationData;>;"
    .local p2, "splData":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wifidbreceiver/APSpecialInfo;>;"
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$000(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/wifidbreceiver/APLocationData;

    .line 150
    .local v1, "apLocationData":Lcom/qti/wifidbreceiver/APLocationData;
    iget-object v2, v1, Lcom/qti/wifidbreceiver/APLocationData;->mMacAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qti/wifidbreceiver/APLocationData;->mMacAddress:Ljava/lang/String;

    .line 151
    .end local v1    # "apLocationData":Lcom/qti/wifidbreceiver/APLocationData;
    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/wifidbreceiver/APSpecialInfo;

    .line 153
    .local v1, "apSpecialInfo":Lcom/qti/wifidbreceiver/APSpecialInfo;
    iget-object v2, v1, Lcom/qti/wifidbreceiver/APSpecialInfo;->mMacAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qti/wifidbreceiver/APSpecialInfo;->mMacAddress:Ljava/lang/String;

    .line 154
    .end local v1    # "apSpecialInfo":Lcom/qti/wifidbreceiver/APSpecialInfo;
    goto :goto_1

    .line 157
    :cond_1
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/qti/wifidbreceiver/APLocationData;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/qti/wifidbreceiver/APLocationData;

    .line 158
    .local v1, "locs":[Lcom/qti/wifidbreceiver/APLocationData;
    new-array v2, v0, [Lcom/qti/wifidbreceiver/APSpecialInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/qti/wifidbreceiver/APSpecialInfo;

    .line 159
    .local v2, "spls":[Lcom/qti/wifidbreceiver/APSpecialInfo;
    iget-object v3, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v3, v1, v2, p3, v0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$900(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;[Lcom/qti/wifidbreceiver/APLocationData;[Lcom/qti/wifidbreceiver/APSpecialInfo;IZ)I

    move-result v0

    return v0
.end method

.method public registerResponseListener(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Z
    .locals 2
    .param p1, "callback"    # Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$002(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Z)Z

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->registerResponseListenerExt(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public registerResponseListenerExt(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "callback"    # Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
    .param p2, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    const-string v1, "WiFiDBReceiver"

    const-string v2, "callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0

    .line 74
    :cond_0
    if-nez p2, :cond_1

    .line 75
    const-string v1, "WiFiDBReceiver"

    const-string v2, "notifyIntent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v1}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$100(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    const-string v1, "WiFiDBReceiver"

    const-string v2, "Response listener already provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v0

    .line 83
    :cond_2
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v2, p1}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$102(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    .line 85
    iget-object v2, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v2, p2}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$302(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    invoke-interface {p1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1$1;-><init>(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;)V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    nop

    .line 102
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const-string v0, "WiFiDBReceiver"

    const-string v1, "WiFiDBReceiver GTPClientHelper.SetClientRegistrationStatus IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$500(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/qualcomm/location/izat/GTPClientHelper;->SetClientRegistrationStatus(Landroid/content/Context;IZ)V

    .line 108
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed unregister WiFi DB provider cb"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public removeResponseListener(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    .line 112
    if-nez p1, :cond_0

    .line 113
    const-string v0, "WiFiDBReceiver"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$102(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    .line 118
    iget-object v1, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$302(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const-string v0, "WiFiDBReceiver"

    const-string v1, "WiFiDBReceiver GTPClientHelper.SetClientRegistrationStatus OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$500(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qualcomm/location/izat/GTPClientHelper;->SetClientRegistrationStatus(Landroid/content/Context;IZ)V

    .line 125
    return-void

    .line 119
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestAPList(I)I
    .locals 2
    .param p1, "expireInDays"    # I

    .line 129
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "WiFiDBReceiver"

    const-string v1, "in IWiFiDBReceiver.Stub(): requestAPList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v0, p1}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$600(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;I)I

    move-result v0

    return v0
.end method

.method public requestScanList()I
    .locals 2

    .line 137
    invoke-static {}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "WiFiDBReceiver"

    const-string v1, "in IWiFiDBReceiver.Stub(): requestScanList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;->access$700(Lcom/qualcomm/location/izat/wifidbreceiver/WiFiDBReceiver;)I

    move-result v0

    return v0
.end method
