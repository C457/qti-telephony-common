.class Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;
.super Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub;
.source "WWANDBReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    .line 55
    iput-object p1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-direct {p0}, Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public pushWWANDB(Ljava/util/List;Ljava/util/List;I)I
    .locals 3
    .param p3, "daysValid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSSpecialInfo;",
            ">;I)I"
        }
    .end annotation

    .line 135
    .local p1, "locData":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wwandbreceiver/BSLocationData;>;"
    .local p2, "splData":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wwandbreceiver/BSSpecialInfo;>;"
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "WWANDBReceiver"

    const-string v1, "in IWWANDBReceiver.Stub(): pushWWANDB() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/qti/wwandbreceiver/BSLocationData;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/qti/wwandbreceiver/BSLocationData;

    .line 140
    .local v1, "locs":[Lcom/qti/wwandbreceiver/BSLocationData;
    new-array v0, v0, [Lcom/qti/wwandbreceiver/BSSpecialInfo;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/wwandbreceiver/BSSpecialInfo;

    .line 141
    .local v0, "spls":[Lcom/qti/wwandbreceiver/BSSpecialInfo;
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-static {v2, v1, v0, p3}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$700(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;[Lcom/qti/wwandbreceiver/BSLocationData;[Lcom/qti/wwandbreceiver/BSSpecialInfo;I)I

    move-result v2

    return v2
.end method

.method public registerResponseListener(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)Z
    .locals 2
    .param p1, "callback"    # Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$002(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;Z)Z

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->registerResponseListenerExt(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public registerResponseListenerExt(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "callback"    # Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
    .param p2, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 66
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 67
    const-string v1, "WWANDBReceiver"

    const-string v2, "callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v0

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    const-string v1, "WWANDBReceiver"

    const-string v2, "notifyIntent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-static {v1}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$100(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 76
    const-string v1, "WWANDBReceiver"

    const-string v2, "Response listener already provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v0

    .line 80
    :cond_2
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-static {v2, p1}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$102(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    .line 82
    iget-object v2, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-static {v2, p2}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$302(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    invoke-interface {p1}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1$1;-><init>(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;)V

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    nop

    .line 99
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const-string v0, "WWANDBReceiver"

    const-string v1, "WWANDBReceiver GTPClientHelper.SetClientRegistrationStatus IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$500(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qualcomm/location/izat/GTPClientHelper;->SetClientRegistrationStatus(Landroid/content/Context;IZ)V

    .line 105
    return v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed unregister WWAN DB provider cb"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public removeResponseListener(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)V
    .locals 3
    .param p1, "callback"    # Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    .line 109
    if-nez p1, :cond_0

    .line 110
    const-string v0, "WWANDBReceiver"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$102(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    .line 115
    iget-object v1, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$302(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "WWANDBReceiver"

    const-string v1, "WWANDBReceiver GTPClientHelper.SetClientRegistrationStatus OUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-static {v0}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$500(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/qualcomm/location/izat/GTPClientHelper;->SetClientRegistrationStatus(Landroid/content/Context;IZ)V

    .line 122
    return-void

    .line 116
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestBSList(I)I
    .locals 2
    .param p1, "expireInDays"    # I

    .line 126
    invoke-static {}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "WWANDBReceiver"

    const-string v1, "in IWWANDBReceiver.Stub(): requestBSList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver$1;->this$0:Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;

    invoke-static {v0, p1}, Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;->access$600(Lcom/qualcomm/location/izat/wwandbreceiver/WWANDBReceiver;I)I

    move-result v0

    return v0
.end method
