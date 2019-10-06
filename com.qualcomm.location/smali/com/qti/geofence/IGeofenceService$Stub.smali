.class public abstract Lcom/qti/geofence/IGeofenceService$Stub;
.super Landroid/os/Binder;
.source "IGeofenceService.java"

# interfaces
.implements Lcom/qti/geofence/IGeofenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/geofence/IGeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/geofence/IGeofenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qti.geofence.IGeofenceService"

.field static final TRANSACTION_addGeofence:I = 0x3

.field static final TRANSACTION_addGeofenceObj:I = 0x8

.field static final TRANSACTION_pauseGeofence:I = 0x6

.field static final TRANSACTION_recoverGeofences:I = 0xb

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerPendingIntent:I = 0x9

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_resumeGeofence:I = 0x7

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unregisterPendingIntent:I = 0xa

.field static final TRANSACTION_updateGeofence:I = 0x5

.field static final TRANSACTION_updateGeofenceData:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qti.geofence.IGeofenceService"

    invoke-virtual {p0, p0, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/geofence/IGeofenceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qti.geofence.IGeofenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/geofence/IGeofenceService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qti/geofence/IGeofenceService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qti/geofence/IGeofenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 38
    const-string v11, "com.qti.geofence.IGeofenceService"

    .line 39
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v15, v0, :cond_3

    const/4 v0, 0x0

    packed-switch v15, :pswitch_data_0

    .line 210
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 183
    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 187
    .local v17, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .line 189
    .local v18, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 191
    .local v20, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    .line 193
    .local v22, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 195
    .local v24, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 197
    .local v25, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 199
    .local v26, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 201
    .local v27, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 203
    .local v28, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 204
    .local v29, "_arg9":I
    move-object v0, v14

    move/from16 v1, v17

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move-wide/from16 v6, v22

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    move-object v15, v11

    move/from16 v11, v27

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    move/from16 v12, v28

    move-object v14, v13

    move/from16 v13, v29

    invoke-virtual/range {v0 .. v13}, Lcom/qti/geofence/IGeofenceService$Stub;->updateGeofenceData(IDDDIIIIII)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    return v16

    .line 173
    .end local v15    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":D
    .end local v20    # "_arg2":D
    .end local v22    # "_arg3":D
    .end local v24    # "_arg4":I
    .end local v25    # "_arg5":I
    .end local v26    # "_arg6":I
    .end local v27    # "_arg7":I
    .end local v28    # "_arg8":I
    .end local v29    # "_arg9":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1
    move-object v15, v11

    move-object v14, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/qti/geofence/GeofenceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/qti/geofence/GeofenceData;>;"
    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->recoverGeofences(Ljava/util/List;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v14, p3

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 179
    return v16

    .line 159
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/qti/geofence/GeofenceData;>;"
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .local v0, "_arg0":Landroid/app/PendingIntent;
    goto :goto_0

    .line 165
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :cond_0
    nop

    .line 167
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_0
    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->unregisterPendingIntent(Landroid/app/PendingIntent;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v16

    .line 145
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_1

    .line 151
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :cond_1
    nop

    .line 153
    .restart local v0    # "_arg0":Landroid/app/PendingIntent;
    :goto_1
    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->registerPendingIntent(Landroid/app/PendingIntent;)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v16

    .line 130
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    sget-object v0, Lcom/qti/geofence/GeofenceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/geofence/GeofenceData;

    .local v0, "_arg0":Lcom/qti/geofence/GeofenceData;
    goto :goto_2

    .line 136
    .end local v0    # "_arg0":Lcom/qti/geofence/GeofenceData;
    :cond_2
    nop

    .line 138
    .restart local v0    # "_arg0":Lcom/qti/geofence/GeofenceData;
    :goto_2
    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->addGeofenceObj(Lcom/qti/geofence/GeofenceData;)I

    move-result v1

    .line 139
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return v16

    .line 121
    .end local v0    # "_arg0":Lcom/qti/geofence/GeofenceData;
    .end local v1    # "_result":I
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "_arg0":I
    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->resumeGeofence(I)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v16

    .line 112
    .end local v0    # "_arg0":I
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->pauseGeofence(I)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v16

    .line 99
    .end local v0    # "_arg0":I
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg2":I
    invoke-virtual {v12, v0, v1, v2}, Lcom/qti/geofence/IGeofenceService$Stub;->updateGeofence(III)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v16

    .line 90
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->removeGeofence(I)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v16

    .line 66
    .end local v0    # "_arg0":I
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 70
    .local v17, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 72
    .local v19, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 74
    .local v21, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 76
    .local v23, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 78
    .restart local v24    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 80
    .restart local v25    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 82
    .restart local v26    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 83
    .restart local v27    # "_arg7":I
    move-object v0, v12

    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    move/from16 v7, v23

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v11, v27

    invoke-virtual/range {v0 .. v11}, Lcom/qti/geofence/IGeofenceService$Stub;->addGeofence(DDDIIIII)I

    move-result v0

    .line 84
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v16

    .line 57
    .end local v0    # "_result":I
    .end local v15    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg0":D
    .end local v19    # "_arg1":D
    .end local v21    # "_arg2":D
    .end local v23    # "_arg3":I
    .end local v24    # "_arg4":I
    .end local v25    # "_arg5":I
    .end local v26    # "_arg6":I
    .end local v27    # "_arg7":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_a
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/geofence/IGeofenceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/geofence/IGeofenceCallback;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Lcom/qti/geofence/IGeofenceCallback;
    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->unregisterCallback(Lcom/qti/geofence/IGeofenceCallback;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v16

    .line 48
    .end local v0    # "_arg0":Lcom/qti/geofence/IGeofenceCallback;
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/geofence/IGeofenceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/geofence/IGeofenceCallback;

    move-result-object v0

    .line 51
    .restart local v0    # "_arg0":Lcom/qti/geofence/IGeofenceCallback;
    invoke-virtual {v12, v0}, Lcom/qti/geofence/IGeofenceService$Stub;->registerCallback(Lcom/qti/geofence/IGeofenceCallback;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v16

    .line 43
    .end local v0    # "_arg0":Lcom/qti/geofence/IGeofenceCallback;
    .end local v15    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :cond_3
    move-object v15, v11

    move-object/from16 v30, v14

    move-object v14, v12

    move-object/from16 v12, v30

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v15    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
