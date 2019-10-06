.class public abstract Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;
.super Landroid/os/Binder;
.source "IWWANDBReceiverResponseListener.java"

# interfaces
.implements Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qti.wwandbreceiver.IWWANDBReceiverResponseListener"

.field static final TRANSACTION_onBSListAvailable:I = 0x1

.field static final TRANSACTION_onBSListAvailableExt:I = 0x4

.field static final TRANSACTION_onServiceRequest:I = 0x3

.field static final TRANSACTION_onStatusUpdate:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qti.wwandbreceiver.IWWANDBReceiverResponseListener"

    invoke-virtual {p0, p0, v0}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qti.wwandbreceiver.IWWANDBReceiverResponseListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.qti.wwandbreceiver.IWWANDBReceiverResponseListener"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/qti/wwandbreceiver/BSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 76
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wwandbreceiver/BSInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 78
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    .local v4, "_arg2":Landroid/location/Location;
    goto :goto_0

    .line 82
    .end local v4    # "_arg2":Landroid/location/Location;
    :cond_0
    const/4 v4, 0x0

    .line 84
    .restart local v4    # "_arg2":Landroid/location/Location;
    :goto_0
    invoke-virtual {p0, v1, v3, v4}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;->onBSListAvailableExt(Ljava/util/List;ILandroid/location/Location;)V

    .line 85
    return v2

    .line 66
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wwandbreceiver/BSInfo;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/location/Location;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;->onServiceRequest()V

    .line 68
    return v2

    .line 56
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 60
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;->onStatusUpdate(ZLjava/lang/String;)V

    .line 62
    return v2

    .line 48
    .end local v1    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/qti/wwandbreceiver/BSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wwandbreceiver/BSInfo;>;"
    invoke-virtual {p0, v1}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;->onBSListAvailable(Ljava/util/List;)V

    .line 52
    return v2

    .line 43
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/qti/wwandbreceiver/BSInfo;>;"
    :cond_2
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
