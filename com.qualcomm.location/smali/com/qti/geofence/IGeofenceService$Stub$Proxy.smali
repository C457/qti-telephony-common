.class Lcom/qti/geofence/IGeofenceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeofenceService.java"

# interfaces
.implements Lcom/qti/geofence/IGeofenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/geofence/IGeofenceService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 220
    return-void
.end method


# virtual methods
.method public addGeofence(DDDIIIII)I
    .locals 17
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D
    .param p7, "transitionTypes"    # I
    .param p8, "responsiveness"    # I
    .param p9, "confidence"    # I
    .param p10, "dwellTime"    # I
    .param p11, "dwellTimeMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 262
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v2, v0

    .line 265
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    move-wide/from16 v3, p1

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 267
    move-wide/from16 v5, p3

    :try_start_1
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 268
    move-wide/from16 v7, p5

    :try_start_2
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 269
    move/from16 v9, p7

    :try_start_3
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 270
    move/from16 v10, p8

    :try_start_4
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 271
    move/from16 v11, p9

    :try_start_5
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 272
    move/from16 v12, p10

    :try_start_6
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 273
    move/from16 v13, p11

    :try_start_7
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 274
    move-object/from16 v14, p0

    :try_start_8
    iget-object v0, v14, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 276
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 279
    .local v0, "_result":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    nop

    .line 280
    nop

    .line 282
    return v0

    .line 279
    .end local v0    # "_result":I
    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    :catchall_8
    move-exception v0

    move-object/from16 v14, p0

    move-wide/from16 v5, p3

    :goto_0
    move-wide/from16 v7, p5

    :goto_1
    move/from16 v9, p7

    :goto_2
    move/from16 v10, p8

    :goto_3
    move/from16 v11, p9

    :goto_4
    move/from16 v12, p10

    :goto_5
    move/from16 v13, p11

    :goto_6
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addGeofenceObj(Lcom/qti/geofence/GeofenceData;)I
    .locals 5
    .param p1, "gfData"    # Lcom/qti/geofence/GeofenceData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 353
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 354
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    invoke-virtual {p1, v0, v2}, Lcom/qti/geofence/GeofenceData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    :goto_0
    iget-object v3, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 367
    nop

    .line 366
    nop

    .line 368
    return v2

    .line 365
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 227
    const-string v0, "com.qti.geofence.IGeofenceService"

    return-object v0
.end method

.method public pauseGeofence(I)V
    .locals 5
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 321
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v2, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    nop

    .line 330
    return-void

    .line 327
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public recoverGeofences(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/geofence/GeofenceData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    .local p1, "gfList":Ljava/util/List;, "Ljava/util/List<Lcom/qti/geofence/GeofenceData;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 419
    iget-object v2, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 421
    sget-object v2, Lcom/qti/geofence/GeofenceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    nop

    .line 427
    return-void

    .line 424
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerCallback(Lcom/qti/geofence/IGeofenceCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/qti/geofence/IGeofenceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/qti/geofence/IGeofenceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 236
    iget-object v2, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    nop

    .line 243
    return-void

    .line 240
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerPendingIntent(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "notifyIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 373
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 375
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 376
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 377
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    :goto_0
    iget-object v3, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    nop

    .line 390
    return-void

    .line 387
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeGeofence(I)V
    .locals 5
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v2, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resumeGeofence(I)V
    .locals 5
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v2, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    nop

    .line 345
    return-void

    .line 342
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterCallback(Lcom/qti/geofence/IGeofenceCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/qti/geofence/IGeofenceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/qti/geofence/IGeofenceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 251
    iget-object v2, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    nop

    .line 258
    return-void

    .line 255
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterPendingIntent(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "notifyIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 396
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 398
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    invoke-virtual {p1, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    :goto_0
    iget-object v3, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    nop

    .line 411
    return-void

    .line 408
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateGeofence(III)V
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "transitionTypes"    # I
    .param p3, "responsiveness"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v2, p0, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    nop

    .line 315
    return-void

    .line 312
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateGeofenceData(IDDDIIIIII)V
    .locals 17
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 431
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v2, v0

    .line 433
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.qti.geofence.IGeofenceService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 434
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 436
    move-wide/from16 v6, p4

    :try_start_1
    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 437
    move-wide/from16 v8, p6

    :try_start_2
    invoke-virtual {v1, v8, v9}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 438
    move/from16 v10, p8

    :try_start_3
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 439
    move/from16 v11, p9

    :try_start_4
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 440
    move/from16 v12, p10

    :try_start_5
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 441
    move/from16 v13, p11

    :try_start_6
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 442
    move/from16 v14, p12

    :try_start_7
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 443
    move/from16 v15, p13

    :try_start_8
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 445
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 448
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 450
    nop

    .line 451
    return-void

    .line 448
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    goto :goto_2

    :catchall_6
    move-exception v0

    goto :goto_1

    :catchall_7
    move-exception v0

    goto :goto_0

    :catchall_8
    move-exception v0

    move-wide/from16 v6, p4

    :goto_0
    move-wide/from16 v8, p6

    :goto_1
    move/from16 v10, p8

    :goto_2
    move/from16 v11, p9

    :goto_3
    move/from16 v12, p10

    :goto_4
    move/from16 v13, p11

    :goto_5
    move/from16 v14, p12

    :goto_6
    move/from16 v15, p13

    :goto_7
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
