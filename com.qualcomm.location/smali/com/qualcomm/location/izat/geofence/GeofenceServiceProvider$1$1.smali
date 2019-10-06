.class Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;
.super Ljava/lang/Object;
.source "GeofenceServiceProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->registerCallback(Lcom/qti/geofence/IGeofenceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

.field final synthetic val$callback:Lcom/qti/geofence/IGeofenceCallback;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;Lcom/qti/geofence/IGeofenceCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    .line 123
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->this$1:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    iput-object p2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->val$callback:Lcom/qti/geofence/IGeofenceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .line 126
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->this$1:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 128
    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->val$callback:Lcom/qti/geofence/IGeofenceCallback;

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getDataByCallback(Landroid/os/IInterface;)Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 130
    .local v1, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 131
    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$202(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;Lcom/qti/geofence/IGeofenceCallback;)Lcom/qti/geofence/IGeofenceCallback;

    .line 132
    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$400(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 133
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const-string v3, "GeofenceServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client died, no intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->this$1:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    iget-object v5, v5, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 135
    invoke-static {v5}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " remove all geofences"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->this$1:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    iget-object v2, v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2, v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$600(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const-string v3, "GeofenceServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client died:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->this$1:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    iget-object v5, v5, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 142
    invoke-static {v5}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " notify on breach by intent"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_2
    const-string v3, "GeofenceServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client died but no clientData found!: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->this$1:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    iget-object v5, v5, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 148
    invoke-static {v5}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->this$1:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    iget-object v2, v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$300(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;->val$callback:Lcom/qti/geofence/IGeofenceCallback;

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 152
    .end local v1    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
