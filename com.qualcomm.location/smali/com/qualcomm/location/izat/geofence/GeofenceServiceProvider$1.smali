.class Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;
.super Lcom/qti/geofence/IGeofenceService$Stub;
.source "GeofenceServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 100
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-direct {p0}, Lcom/qti/geofence/IGeofenceService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofence(DDDIIIII)I
    .locals 19
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D
    .param p7, "transitionTypes"    # I
    .param p8, "responsiveness"    # I
    .param p9, "confidence"    # I
    .param p10, "dwellTime"    # I
    .param p11, "dwellTimeMask"    # I

    move-object/from16 v1, p0

    .line 212
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$708()I

    move-result v15

    .line 214
    .local v15, "geofenceId":I
    iget-object v0, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 215
    .local v14, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-eqz v14, :cond_0

    .line 216
    new-instance v0, Lcom/qti/geofence/GeofenceData;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v0

    move/from16 v3, p8

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    move/from16 v12, p11

    move/from16 v13, p10

    move-object v1, v14

    move-object/from16 v14, v16

    .end local v14    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .local v1, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    move/from16 v18, v15

    move-object/from16 v15, v17

    .end local v15    # "geofenceId":I
    .local v18, "geofenceId":I
    move/from16 v16, v18

    invoke-direct/range {v2 .. v16}, Lcom/qti/geofence/GeofenceData;-><init>(IDDDIIIILjava/lang/String;Landroid/os/Bundle;I)V

    .line 219
    .local v2, "gfData":Lcom/qti/geofence/GeofenceData;
    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 220
    :try_start_0
    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v15, v18

    :try_start_1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .end local v18    # "geofenceId":I
    .restart local v15    # "geofenceId":I
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v15    # "geofenceId":I
    .restart local v18    # "geofenceId":I
    :catchall_1
    move-exception v0

    move/from16 v15, v18

    .end local v18    # "geofenceId":I
    .restart local v15    # "geofenceId":I
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 224
    .end local v1    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .end local v2    # "gfData":Lcom/qti/geofence/GeofenceData;
    .restart local v14    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_0
    move-object v1, v14

    .end local v14    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v1    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :goto_1
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "GeofenceServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in IGeofenceService.Stub(): addGeofence(); Calling package is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 227
    .end local v1    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .local v16, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    invoke-static {v3}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; geofenceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; latitude is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p1

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "; longitude is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p3

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "; radius is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p5

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "; transitionTypes is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; responsiveness is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; confidence is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p9

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; dwellTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; dwellTimeMask is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 238
    .end local v16    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v1    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_1
    move-wide/from16 v13, p1

    move-wide/from16 v11, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v4, p10

    move/from16 v5, p11

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    .end local v1    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v16    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :goto_2
    iget-object v2, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    move v3, v15

    move-wide v4, v13

    move-wide v6, v11

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v2 .. v14}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$900(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;IDDDIIIII)V

    .line 241
    return v15
.end method

.method public addGeofenceObj(Lcom/qti/geofence/GeofenceData;)I
    .locals 30
    .param p1, "gfData"    # Lcom/qti/geofence/GeofenceData;

    move-object/from16 v1, p0

    .line 245
    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 246
    const-string v0, "GeofenceServiceProvider"

    const-string v3, "in addGeofence() gfData is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, -0x1

    return v0

    .line 251
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getLatitude()D

    move-result-wide v14

    .line 252
    .local v14, "latitude":D
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getLongitude()D

    move-result-wide v12

    .line 253
    .local v12, "longitude":D
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getRadius()D

    move-result-wide v9

    .line 254
    .local v9, "radius":D
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getTransitionType()Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->getValue()I

    move-result v11

    .line 255
    .local v11, "transitionTypes":I
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getNotifyResponsiveness()I

    move-result v7

    .line 256
    .local v7, "responsiveness":I
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getConfidence()Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->getValue()I

    move-result v8

    .line 257
    .local v8, "confidence":I
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getDwellTime()I

    move-result v5

    .line 258
    .local v5, "dwellTime":I
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getDwellType()Lcom/qti/geofence/GeofenceData$DwellTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$DwellTypes;->getValue()I

    move-result v6

    .line 259
    .local v6, "dwellTimeMask":I
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getAppBundleData()Landroid/os/Bundle;

    move-result-object v16

    .line 260
    .local v16, "appBundleData":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/qti/geofence/GeofenceData;->getAppTextData()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "appTextData":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$708()I

    move-result v3

    .line 264
    .local v3, "geofenceId":I
    iget-object v0, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v0

    move-object/from16 v17, v4

    move-object v4, v0

    check-cast v4, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 265
    .local v4, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .local v17, "appTextData":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {v2, v3}, Lcom/qti/geofence/GeofenceData;->setGeofenceId(I)V

    .line 268
    invoke-static {v4}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v18

    monitor-enter v18

    .line 269
    :try_start_0
    invoke-static {v4}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v19, v4

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .end local v4    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .local v19, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v18

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v19    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v4    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v4

    .end local v4    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v19    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :goto_0
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 273
    .end local v19    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v4    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_1
    move-object/from16 v19, v4

    .end local v4    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v19    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :goto_1
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "GeofenceServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IGeofenceService.Stub(): addGeofence(); Calling package is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 276
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; geofenceId is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; latitude is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; longitude is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; radius is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "; transitionTypes is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; responsiveness is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; confidence is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; dwellTime is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; dwellTimeMask is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; appTextData is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v17    # "appTextData":Ljava/lang/String;
    .local v1, "appTextData":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 288
    .end local v1    # "appTextData":Ljava/lang/String;
    .restart local v17    # "appTextData":Ljava/lang/String;
    :cond_2
    move-object/from16 v1, v17

    .end local v17    # "appTextData":Ljava/lang/String;
    .restart local v1    # "appTextData":Ljava/lang/String;
    :goto_2
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    move/from16 v17, v3

    move-object v3, v0

    .end local v3    # "geofenceId":I
    .local v17, "geofenceId":I
    move-object/from16 v18, v19

    move/from16 v4, v17

    .end local v19    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .local v18, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    move/from16 v19, v5

    move/from16 v20, v6

    move-wide v5, v14

    .end local v5    # "dwellTime":I
    .end local v6    # "dwellTimeMask":I
    .local v19, "dwellTime":I
    .local v20, "dwellTimeMask":I
    move/from16 v21, v7

    move/from16 v22, v8

    move-wide v7, v12

    .end local v7    # "responsiveness":I
    .end local v8    # "confidence":I
    .local v21, "responsiveness":I
    .local v22, "confidence":I
    move-wide/from16 v23, v9

    .end local v9    # "radius":D
    .local v23, "radius":D
    move/from16 v25, v11

    .end local v11    # "transitionTypes":I
    .local v25, "transitionTypes":I
    move-wide/from16 v26, v12

    move/from16 v12, v21

    .end local v12    # "longitude":D
    .local v26, "longitude":D
    move/from16 v13, v22

    move-wide/from16 v28, v14

    move/from16 v14, v19

    .end local v14    # "latitude":D
    .local v28, "latitude":D
    move/from16 v15, v20

    invoke-static/range {v3 .. v15}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$900(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;IDDDIIIII)V

    .line 291
    return v17
.end method

.method public pauseGeofence(I)V
    .locals 4
    .param p1, "geofenceId"    # I

    .line 410
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IGeofenceService.Stub(): pauseGeofence(); Calling package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 413
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; geofenceId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 418
    .local v0, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-eqz v0, :cond_1

    .line 419
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/geofence/GeofenceData;

    .line 421
    .local v1, "gfData":Lcom/qti/geofence/GeofenceData;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qti/geofence/GeofenceData;->setPausedStatus(Z)V

    .line 422
    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$1200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;I)V

    .line 425
    .end local v1    # "gfData":Lcom/qti/geofence/GeofenceData;
    :cond_1
    return-void
.end method

.method public recoverGeofences(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/geofence/GeofenceData;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p1, "gfList":Ljava/util/List;, "Ljava/util/List<Lcom/qti/geofence/GeofenceData;>;"
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IGeofenceService.Stub(): recoverGeofences(); Calling package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 453
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 457
    .local v0, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-eqz v0, :cond_1

    .line 458
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/qti/geofence/IGeofenceCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/qti/geofence/IGeofenceCallback;

    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string v0, "GeofenceServiceProvider"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 109
    .local v1, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-nez v1, :cond_1

    .line 110
    new-instance v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    iget-object v3, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-direct {v2, v3, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;-><init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Lcom/qti/geofence/IGeofenceCallback;)V

    move-object v1, v2

    .line 111
    invoke-static {v1, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$202(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;Lcom/qti/geofence/IGeofenceCallback;)Lcom/qti/geofence/IGeofenceCallback;

    .line 113
    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->setData(Lcom/qualcomm/location/izat/CallbackData;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Lcom/qti/geofence/IGeofenceCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$300(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Lcom/qti/geofence/IGeofenceCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 118
    :cond_2
    invoke-static {v1, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$202(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;Lcom/qti/geofence/IGeofenceCallback;)Lcom/qti/geofence/IGeofenceCallback;

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$300(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 121
    .end local v1    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    invoke-interface {p1}, Lcom/qti/geofence/IGeofenceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1$1;-><init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;Lcom/qti/geofence/IGeofenceCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed unregister geofence cb"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerPendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v0, "GeofenceServiceProvider"

    const-string v1, "in registerPendingIntent() notifyIntent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 179
    .local v0, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-nez v0, :cond_1

    .line 180
    new-instance v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-direct {v1, v2, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;-><init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Landroid/app/PendingIntent;)V

    move-object v0, v1

    .line 181
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->setData(Lcom/qualcomm/location/izat/CallbackData;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {v0, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$402(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 185
    :goto_0
    return-void
.end method

.method public removeGeofence(I)V
    .locals 4
    .param p1, "geofenceId"    # I

    .line 295
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IGeofenceService.Stub(): removeGeofence(); Calling package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 298
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; geofenceId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 303
    .local v0, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-eqz v0, :cond_1

    .line 304
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 305
    :try_start_0
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 309
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v1, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$1000(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;I)V

    .line 310
    return-void
.end method

.method public resumeGeofence(I)V
    .locals 5
    .param p1, "geofenceId"    # I

    .line 428
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IGeofenceService.Stub(): resumeGeofence(); Calling package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 431
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; geofenceId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 436
    .local v0, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-eqz v0, :cond_1

    .line 437
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/geofence/GeofenceData;

    .line 440
    .local v1, "gfData":Lcom/qti/geofence/GeofenceData;
    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData;->getTransitionType()Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    move-result-object v2

    .line 441
    .local v2, "transitionTypes":Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/qti/geofence/GeofenceData;->setPausedStatus(Z)V

    .line 444
    iget-object v3, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-virtual {v2}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->getValue()I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$1300(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;II)V

    .line 447
    .end local v1    # "gfData":Lcom/qti/geofence/GeofenceData;
    .end local v2    # "transitionTypes":Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/qti/geofence/IGeofenceCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/qti/geofence/IGeofenceCallback;

    .line 161
    if-nez p1, :cond_0

    .line 162
    const-string v0, "GeofenceServiceProvider"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$600(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)V

    .line 167
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$300(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 188
    if-nez p1, :cond_0

    .line 189
    const-string v0, "GeofenceServiceProvider"

    const-string v1, "in unregisterPendingIntent() notifyIntent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "callingPackageAndUser":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const-string v1, "GeofenceServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterPendingIntent() for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    invoke-static {v1, v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$600(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)V

    .line 201
    return-void
.end method

.method public updateGeofence(III)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "transitionTypes"    # I
    .param p3, "notifyResponsiveness"    # I

    .line 315
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IGeofenceService.Stub(): updateGeofence(); Calling package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 318
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; geofenceId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 323
    .local v0, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-eqz v0, :cond_1

    .line 324
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-static {v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/geofence/GeofenceData;

    .line 326
    .local v1, "gfData":Lcom/qti/geofence/GeofenceData;
    invoke-virtual {v1, p2}, Lcom/qti/geofence/GeofenceData;->setTransitionType(I)V

    .line 327
    invoke-virtual {v1, p3}, Lcom/qti/geofence/GeofenceData;->setNotifyResponsiveness(I)V

    .line 331
    .end local v1    # "gfData":Lcom/qti/geofence/GeofenceData;
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v1, p1, p2, p3}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$1100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;III)V

    .line 334
    return-void
.end method

.method public updateGeofenceData(IDDDIIIIII)V
    .locals 19
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "transitionTypes"    # I
    .param p9, "responsiveness"    # I
    .param p10, "confidence"    # I
    .param p11, "dwellTime"    # I
    .param p12, "dwellTimeMask"    # I
    .param p13, "updatedFieldsFlags"    # I

    move-object/from16 v0, p0

    move/from16 v14, p1

    move-wide/from16 v12, p2

    move-wide/from16 v10, p4

    move-wide/from16 v7, p6

    move/from16 v15, p8

    move/from16 v9, p9

    move/from16 v5, p10

    move/from16 v6, p11

    move/from16 v3, p12

    .line 346
    move/from16 v4, p13

    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "GeofenceServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "in IGeofenceService.Stub(): updateGeofenceData(); Calling package is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 349
    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; geofenceId is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; latitude is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "; longitude is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "; radius is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "; transitionTypes is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; responsiveness is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; confidence is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; dwellTime is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; dwellTimeMask is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; updatedFieldsFlags is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    move-object/from16 v1, v16

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 363
    .local v2, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    if-eqz v2, :cond_b

    .line 364
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 365
    nop

    .line 366
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/geofence/GeofenceData;

    .line 368
    .local v0, "gfData":Lcom/qti/geofence/GeofenceData;
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_1

    .line 369
    invoke-virtual {v0, v15}, Lcom/qti/geofence/GeofenceData;->setTransitionType(I)V

    .line 371
    :cond_1
    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {v0, v9}, Lcom/qti/geofence/GeofenceData;->setNotifyResponsiveness(I)V

    .line 374
    :cond_2
    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_3

    .line 375
    invoke-virtual {v0, v12, v13}, Lcom/qti/geofence/GeofenceData;->setLatitude(D)V

    .line 377
    :cond_3
    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_4

    .line 378
    invoke-virtual {v0, v10, v11}, Lcom/qti/geofence/GeofenceData;->setLongitude(D)V

    .line 380
    :cond_4
    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_5

    .line 381
    invoke-virtual {v0, v7, v8}, Lcom/qti/geofence/GeofenceData;->setRadius(D)V

    .line 383
    :cond_5
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_6

    .line 384
    invoke-virtual {v0, v15}, Lcom/qti/geofence/GeofenceData;->setTransitionType(I)V

    .line 386
    :cond_6
    and-int/lit8 v1, v4, 0x10

    if-eqz v1, :cond_7

    .line 387
    invoke-virtual {v0, v5}, Lcom/qti/geofence/GeofenceData;->setConfidence(I)V

    .line 389
    :cond_7
    and-int/lit8 v1, v4, 0x20

    if-eqz v1, :cond_8

    .line 390
    invoke-virtual {v0, v6}, Lcom/qti/geofence/GeofenceData;->setDwellTime(I)V

    .line 391
    invoke-virtual {v0, v3}, Lcom/qti/geofence/GeofenceData;->setDwellType(I)V

    .line 394
    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .end local v2    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .local v17, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    invoke-static {v2, v14}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$1000(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;I)V

    .line 395
    iget-object v2, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    move-object v1, v2

    move-object/from16 v16, v17

    move v2, v14

    .end local v17    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .local v16, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    move-wide v3, v12

    move-wide v5, v10

    move-wide/from16 v7, p6

    move v9, v15

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-static/range {v1 .. v13}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$900(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;IDDDIIIII)V

    .line 399
    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 400
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-static {v2, v14}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->access$1200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;I)V

    .end local v0    # "gfData":Lcom/qti/geofence/GeofenceData;
    goto :goto_0

    .line 403
    :cond_9
    move-object/from16 v1, p0

    :goto_0
    goto :goto_1

    .line 404
    .end local v16    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v2    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_a
    move-object/from16 v16, v2

    move-object/from16 v1, p0

    .end local v2    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v16    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    const-string v0, "GeofenceServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofence id not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 407
    .end local v16    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v2    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_b
    move-object v1, v0

    move-object/from16 v16, v2

    .end local v2    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    .restart local v16    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :goto_1
    return-void
.end method
