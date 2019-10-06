.class Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$UserChanged;
.super Ljava/lang/Object;
.source "GeofenceServiceProvider.java"

# interfaces
.implements Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserChanged"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener<",
        "Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 612
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChange(Ljava/util/Map;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;",
            ">;)V"
        }
    .end annotation

    .local p1, "prevUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;>;"
    .local p2, "currentUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;>;"
    move-object/from16 v1, p0

    .line 616
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string v0, "GeofenceServiceProvider"

    const-string v2, "Active user has changed, updating geofences..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 622
    .local v2, "geofenceData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 623
    :try_start_0
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/geofence/GeofenceData;

    .line 624
    .local v5, "geofence":Lcom/qti/geofence/GeofenceData;
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 625
    const-string v6, "GeofenceServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing geofence id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getGeofenceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_1
    iget-object v6, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getGeofenceId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$1000(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;I)V

    .line 628
    .end local v5    # "geofence":Lcom/qti/geofence/GeofenceData;
    goto :goto_1

    .line 629
    :cond_2
    monitor-exit v3

    .line 630
    .end local v2    # "geofenceData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    goto :goto_0

    .line 629
    .restart local v2    # "geofenceData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 633
    .end local v2    # "geofenceData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 634
    .restart local v2    # "geofenceData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 635
    :try_start_1
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qti/geofence/GeofenceData;

    .line 636
    .restart local v5    # "geofence":Lcom/qti/geofence/GeofenceData;
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 637
    const-string v6, "GeofenceServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding geofence id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getGeofenceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_4
    iget-object v8, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$UserChanged;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getGeofenceId()I

    move-result v9

    .line 640
    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getLongitude()D

    move-result-wide v12

    .line 641
    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getRadius()D

    move-result-wide v14

    .line 642
    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getTransitionType()Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->getValue()I

    move-result v16

    .line 643
    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getNotifyResponsiveness()I

    move-result v17

    .line 644
    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getConfidence()Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->getValue()I

    move-result v18

    .line 645
    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getDwellTime()I

    move-result v19

    .line 646
    invoke-virtual {v5}, Lcom/qti/geofence/GeofenceData;->getDwellType()Lcom/qti/geofence/GeofenceData$DwellTypes;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qti/geofence/GeofenceData$DwellTypes;->getValue()I

    move-result v20

    .line 639
    invoke-static/range {v8 .. v20}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$900(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;IDDDIIIII)V

    .line 647
    .end local v5    # "geofence":Lcom/qti/geofence/GeofenceData;
    goto :goto_3

    .line 648
    :cond_5
    monitor-exit v3

    .line 649
    .end local v2    # "geofenceData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    goto/16 :goto_2

    .line 648
    .restart local v2    # "geofenceData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 650
    .end local v2    # "geofenceData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_6
    return-void
.end method
