.class public abstract Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;
.super Landroid/os/Binder;
.source "IWiFiDBProvider.java"

# interfaces
.implements Lcom/qti/wifidbprovider/IWiFiDBProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wifidbprovider/IWiFiDBProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qti.wifidbprovider.IWiFiDBProvider"

.field static final TRANSACTION_registerResponseListener:I = 0x1

.field static final TRANSACTION_removeResponseListener:I = 0x3

.field static final TRANSACTION_requestAPObsLocData:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qti.wifidbprovider.IWiFiDBProvider"

    invoke-virtual {p0, p0, v0}, Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/wifidbprovider/IWiFiDBProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qti.wifidbprovider.IWiFiDBProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/wifidbprovider/IWiFiDBProvider;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qti/wifidbprovider/IWiFiDBProvider;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "com.qti.wifidbprovider.IWiFiDBProvider"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    move-result-object v1

    .line 76
    .local v1, "_arg0":Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    invoke-virtual {p0, v1}, Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;->removeResponseListener(Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    return v2

    .line 65
    .end local v1    # "_arg0":Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;->requestAPObsLocData()I

    move-result v1

    .line 67
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v2

    .line 48
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .local v3, "_arg1":Landroid/app/PendingIntent;
    goto :goto_0

    .line 56
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    :cond_0
    const/4 v3, 0x0

    .line 58
    .restart local v3    # "_arg1":Landroid/app/PendingIntent;
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/qti/wifidbprovider/IWiFiDBProvider$Stub;->registerResponseListener(Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;Landroid/app/PendingIntent;)Z

    move-result v4

    .line 59
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v2

    .line 43
    .end local v1    # "_arg0":Lcom/qti/wifidbprovider/IWiFiDBProviderResponseListener;
    .end local v3    # "_arg1":Landroid/app/PendingIntent;
    .end local v4    # "_result":Z
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
