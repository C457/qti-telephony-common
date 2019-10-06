.class public abstract Lcom/qti/flp/IFlpService$Stub;
.super Landroid/os/Binder;
.source "IFlpService.java"

# interfaces
.implements Lcom/qti/flp/IFlpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/flp/IFlpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/flp/IFlpService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qti.flp.IFlpService"

.field static final TRANSACTION_getAllSupportedFeatures:I = 0x3

.field static final TRANSACTION_pullLocations:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerForSessionStatus:I = 0x8

.field static final TRANSACTION_startFlpSession:I = 0x4

.field static final TRANSACTION_startFlpSessionWithPower:I = 0xa

.field static final TRANSACTION_stopFlpSession:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unregisterForSessionStatus:I = 0x9

.field static final TRANSACTION_updateFlpSession:I = 0x5

.field static final TRANSACTION_updateFlpSessionWithPower:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qti.flp.IFlpService"

    invoke-virtual {p0, p0, v0}, Lcom/qti/flp/IFlpService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/flp/IFlpService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qti.flp.IFlpService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/flp/IFlpService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qti/flp/IFlpService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qti/flp/IFlpService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qti/flp/IFlpService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 38
    const-string v15, "com.qti.flp.IFlpService"

    .line 39
    .local v15, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v16, 0x1

    if-eq v12, v0, :cond_0

    packed-switch v12, :pswitch_data_0

    .line 206
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 184
    :pswitch_0
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 188
    .local v17, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 190
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 192
    .local v19, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 194
    .local v21, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 196
    .local v22, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 198
    .local v24, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 199
    .local v25, "_arg6":J
    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    move-wide/from16 v3, v19

    move/from16 v5, v21

    move-wide/from16 v6, v22

    move/from16 v8, v24

    move-wide/from16 v9, v25

    invoke-virtual/range {v0 .. v10}, Lcom/qti/flp/IFlpService$Stub;->updateFlpSessionWithPower(IIJIJIJ)I

    move-result v0

    .line 200
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return v16

    .line 162
    .end local v0    # "_result":I
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":J
    .end local v21    # "_arg3":I
    .end local v22    # "_arg4":J
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":J
    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 166
    .restart local v17    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 168
    .restart local v18    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 170
    .restart local v19    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 172
    .restart local v21    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 174
    .restart local v22    # "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 176
    .restart local v24    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 177
    .restart local v25    # "_arg6":J
    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    move-wide/from16 v3, v19

    move/from16 v5, v21

    move-wide/from16 v6, v22

    move/from16 v8, v24

    move-wide/from16 v9, v25

    invoke-virtual/range {v0 .. v10}, Lcom/qti/flp/IFlpService$Stub;->startFlpSessionWithPower(IIJIJIJ)I

    move-result v0

    .line 178
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v16

    .line 153
    .end local v0    # "_result":I
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":J
    .end local v21    # "_arg3":I
    .end local v22    # "_arg4":J
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":J
    :pswitch_2
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/flp/ISessionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/flp/ISessionStatusCallback;

    move-result-object v0

    .line 156
    .local v0, "_arg0":Lcom/qti/flp/ISessionStatusCallback;
    invoke-virtual {v11, v0}, Lcom/qti/flp/IFlpService$Stub;->unregisterForSessionStatus(Lcom/qti/flp/ISessionStatusCallback;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v16

    .line 142
    .end local v0    # "_arg0":Lcom/qti/flp/ISessionStatusCallback;
    :pswitch_3
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/flp/ISessionStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/flp/ISessionStatusCallback;

    move-result-object v1

    .line 147
    .local v1, "_arg1":Lcom/qti/flp/ISessionStatusCallback;
    invoke-virtual {v11, v0, v1}, Lcom/qti/flp/IFlpService$Stub;->registerForSessionStatus(ILcom/qti/flp/ISessionStatusCallback;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v16

    .line 128
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/qti/flp/ISessionStatusCallback;
    :pswitch_4
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/flp/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/flp/ILocationCallback;

    move-result-object v0

    .line 132
    .local v0, "_arg0":Lcom/qti/flp/ILocationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 134
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 135
    .local v3, "_arg2":I
    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/qti/flp/IFlpService$Stub;->pullLocations(Lcom/qti/flp/ILocationCallback;JI)I

    move-result v4

    .line 136
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v16

    .line 118
    .end local v0    # "_arg0":Lcom/qti/flp/ILocationCallback;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_5
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Lcom/qti/flp/IFlpService$Stub;->stopFlpSession(I)I

    move-result v1

    .line 122
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v16

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_6
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 104
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 106
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 108
    .local v17, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 110
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 111
    .local v19, "_arg4":J
    move-object v0, v11

    move v1, v8

    move v2, v9

    move-wide/from16 v3, v17

    move v5, v10

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Lcom/qti/flp/IFlpService$Stub;->updateFlpSession(IIJIJ)I

    move-result v0

    .line 112
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v16

    .line 82
    .end local v0    # "_result":I
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg2":J
    .end local v19    # "_arg4":J
    :pswitch_7
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 86
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 88
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 90
    .restart local v17    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 92
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 93
    .restart local v19    # "_arg4":J
    move-object v0, v11

    move v1, v8

    move v2, v9

    move-wide/from16 v3, v17

    move v5, v10

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Lcom/qti/flp/IFlpService$Stub;->startFlpSession(IIJIJ)I

    move-result v0

    .line 94
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v16

    .line 74
    .end local v0    # "_result":I
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg2":J
    .end local v19    # "_arg4":J
    :pswitch_8
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/qti/flp/IFlpService$Stub;->getAllSupportedFeatures()I

    move-result v0

    .line 76
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v16

    .line 63
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/flp/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/flp/ILocationCallback;

    move-result-object v1

    .line 68
    .local v1, "_arg1":Lcom/qti/flp/ILocationCallback;
    invoke-virtual {v11, v0, v1}, Lcom/qti/flp/IFlpService$Stub;->unregisterCallback(ILcom/qti/flp/ILocationCallback;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v16

    .line 48
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/qti/flp/ILocationCallback;
    :pswitch_a
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 52
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 54
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/flp/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/flp/ILocationCallback;

    move-result-object v8

    .line 56
    .local v8, "_arg2":Lcom/qti/flp/ILocationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 57
    .local v9, "_arg3":J
    move-object v0, v11

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/qti/flp/IFlpService$Stub;->registerCallback(IILcom/qti/flp/ILocationCallback;J)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v16

    .line 43
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Lcom/qti/flp/ILocationCallback;
    .end local v9    # "_arg3":J
    :cond_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v16

    :pswitch_data_0
    .packed-switch 0x1
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
