.class public abstract Lcom/qti/izat/IIzatService$Stub;
.super Landroid/os/Binder;
.source "IIzatService.java"

# interfaces
.implements Lcom/qti/izat/IIzatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/izat/IIzatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/izat/IIzatService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qti.izat.IIzatService"

.field static final TRANSACTION_getDebugReportService:I = 0x5

.field static final TRANSACTION_getFlpService:I = 0x1

.field static final TRANSACTION_getGeofenceService:I = 0x3

.field static final TRANSACTION_getGnssConfigService:I = 0x8

.field static final TRANSACTION_getTestService:I = 0x2

.field static final TRANSACTION_getVersion:I = 0x4

.field static final TRANSACTION_getWWANDBProvider:I = 0xa

.field static final TRANSACTION_getWWANDBReceiver:I = 0x7

.field static final TRANSACTION_getWiFiDBProvider:I = 0x9

.field static final TRANSACTION_getWiFiDBReceiver:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qti.izat.IIzatService"

    invoke-virtual {p0, p0, v0}, Lcom/qti/izat/IIzatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/izat/IIzatService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qti.izat.IIzatService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/izat/IIzatService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qti/izat/IIzatService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qti/izat/IIzatService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qti/izat/IIzatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const-string v0, "com.qti.izat.IIzatService"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 120
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getWWANDBProvider()Lcom/qti/wwandbprovider/IWWANDBProvider;

    move-result-object v3

    .line 122
    .local v3, "_result":Lcom/qti/wwandbprovider/IWWANDBProvider;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/qti/wwandbprovider/IWWANDBProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    return v2

    .line 112
    .end local v3    # "_result":Lcom/qti/wwandbprovider/IWWANDBProvider;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getWiFiDBProvider()Lcom/qti/wifidbprovider/IWiFiDBProvider;

    move-result-object v3

    .line 114
    .local v3, "_result":Lcom/qti/wifidbprovider/IWiFiDBProvider;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/qti/wifidbprovider/IWiFiDBProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 116
    return v2

    .line 104
    .end local v3    # "_result":Lcom/qti/wifidbprovider/IWiFiDBProvider;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getGnssConfigService()Lcom/qti/gnssconfig/IGnssConfigService;

    move-result-object v3

    .line 106
    .local v3, "_result":Lcom/qti/gnssconfig/IGnssConfigService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/qti/gnssconfig/IGnssConfigService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    return v2

    .line 96
    .end local v3    # "_result":Lcom/qti/gnssconfig/IGnssConfigService;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getWWANDBReceiver()Lcom/qti/wwandbreceiver/IWWANDBReceiver;

    move-result-object v3

    .line 98
    .local v3, "_result":Lcom/qti/wwandbreceiver/IWWANDBReceiver;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/qti/wwandbreceiver/IWWANDBReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 100
    return v2

    .line 88
    .end local v3    # "_result":Lcom/qti/wwandbreceiver/IWWANDBReceiver;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getWiFiDBReceiver()Lcom/qti/wifidbreceiver/IWiFiDBReceiver;

    move-result-object v3

    .line 90
    .local v3, "_result":Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 92
    return v2

    .line 80
    .end local v3    # "_result":Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getDebugReportService()Lcom/qti/debugreport/IDebugReportService;

    move-result-object v3

    .line 82
    .local v3, "_result":Lcom/qti/debugreport/IDebugReportService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/qti/debugreport/IDebugReportService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 84
    return v2

    .line 72
    .end local v3    # "_result":Lcom/qti/debugreport/IDebugReportService;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v2

    .line 64
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getGeofenceService()Lcom/qti/geofence/IGeofenceService;

    move-result-object v3

    .line 66
    .local v3, "_result":Lcom/qti/geofence/IGeofenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/qti/geofence/IGeofenceService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 68
    return v2

    .line 56
    .end local v3    # "_result":Lcom/qti/geofence/IGeofenceService;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getTestService()Lcom/qti/flp/ITestService;

    move-result-object v3

    .line 58
    .local v3, "_result":Lcom/qti/flp/ITestService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/qti/flp/ITestService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 60
    return v2

    .line 48
    .end local v3    # "_result":Lcom/qti/flp/ITestService;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/qti/izat/IIzatService$Stub;->getFlpService()Lcom/qti/flp/IFlpService;

    move-result-object v3

    .line 50
    .local v3, "_result":Lcom/qti/flp/IFlpService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/qti/flp/IFlpService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 52
    return v2

    .line 43
    .end local v3    # "_result":Lcom/qti/flp/IFlpService;
    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
