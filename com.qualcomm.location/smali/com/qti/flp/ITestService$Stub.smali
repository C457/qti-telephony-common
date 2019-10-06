.class public abstract Lcom/qti/flp/ITestService$Stub;
.super Landroid/os/Binder;
.source "ITestService.java"

# interfaces
.implements Lcom/qti/flp/ITestService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/flp/ITestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/flp/ITestService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qti.flp.ITestService"

.field static final TRANSACTION_deleteAidingData:I = 0x1

.field static final TRANSACTION_registerMaxPowerChangeCallback:I = 0x3

.field static final TRANSACTION_unregisterMaxPowerChangeCallback:I = 0x4

.field static final TRANSACTION_updateXtraThrottle:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qti.flp.ITestService"

    invoke-virtual {p0, p0, v0}, Lcom/qti/flp/ITestService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/flp/ITestService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qti.flp.ITestService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/flp/ITestService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qti/flp/ITestService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qti/flp/ITestService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qti/flp/ITestService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "com.qti.flp.ITestService"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/flp/IMaxPowerAllocatedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/flp/IMaxPowerAllocatedCallback;

    move-result-object v1

    .line 78
    .local v1, "_arg0":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    invoke-virtual {p0, v1}, Lcom/qti/flp/ITestService$Stub;->unregisterMaxPowerChangeCallback(Lcom/qti/flp/IMaxPowerAllocatedCallback;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v2

    .line 66
    .end local v1    # "_arg0":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/flp/IMaxPowerAllocatedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/flp/IMaxPowerAllocatedCallback;

    move-result-object v1

    .line 69
    .restart local v1    # "_arg0":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    invoke-virtual {p0, v1}, Lcom/qti/flp/ITestService$Stub;->registerMaxPowerChangeCallback(Lcom/qti/flp/IMaxPowerAllocatedCallback;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v2

    .line 57
    .end local v1    # "_arg0":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/qti/flp/ITestService$Stub;->updateXtraThrottle(Z)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v2

    .line 48
    .end local v1    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 51
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Lcom/qti/flp/ITestService$Stub;->deleteAidingData(J)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v2

    .line 43
    .end local v3    # "_arg0":J
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
