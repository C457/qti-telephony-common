.class Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$PackageRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GeofenceServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageRemovedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 597
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$PackageRemovedReceiver;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "conext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 600
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 601
    :try_start_0
    const-string v1, "GeofenceServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package uninstalled, removing its geofences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$PackageRemovedReceiver;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    .line 605
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-virtual {v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getAllDataPerPackageName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 606
    .local v2, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    iget-object v3, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$PackageRemovedReceiver;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v3, v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$600(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)V

    .line 607
    .end local v2    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    goto :goto_0

    .line 608
    :cond_0
    monitor-exit v0

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
