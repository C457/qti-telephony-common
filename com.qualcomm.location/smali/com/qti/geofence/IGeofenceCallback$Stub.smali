.class public abstract Lcom/qti/geofence/IGeofenceCallback$Stub;
.super Landroid/os/Binder;
.source "IGeofenceCallback.java"

# interfaces
.implements Lcom/qti/geofence/IGeofenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/geofence/IGeofenceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/geofence/IGeofenceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qti.geofence.IGeofenceCallback"

.field static final TRANSACTION_onEngineReportStatus:I = 0x3

.field static final TRANSACTION_onRequestResultReturned:I = 0x2

.field static final TRANSACTION_onTransitionEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qti.geofence.IGeofenceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/qti/geofence/IGeofenceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/geofence/IGeofenceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.qti.geofence.IGeofenceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/geofence/IGeofenceCallback;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/qti/geofence/IGeofenceCallback;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/qti/geofence/IGeofenceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qti/geofence/IGeofenceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const-string v0, "com.qti.geofence.IGeofenceCallback"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 77
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .local v1, "_arg1":Landroid/location/Location;
    goto :goto_0

    .line 85
    .end local v1    # "_arg1":Landroid/location/Location;
    :cond_0
    nop

    .line 87
    .restart local v1    # "_arg1":Landroid/location/Location;
    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/qti/geofence/IGeofenceCallback$Stub;->onEngineReportStatus(ILandroid/location/Location;)V

    .line 88
    return v2

    .line 65
    .end local v1    # "_arg1":Landroid/location/Location;
    .end local v3    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/qti/geofence/IGeofenceCallback$Stub;->onRequestResultReturned(III)V

    .line 73
    return v2

    .line 48
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .local v1, "_arg2":Landroid/location/Location;
    goto :goto_1

    .line 58
    .end local v1    # "_arg2":Landroid/location/Location;
    :cond_1
    nop

    .line 60
    .restart local v1    # "_arg2":Landroid/location/Location;
    :goto_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/qti/geofence/IGeofenceCallback$Stub;->onTransitionEvent(IILandroid/location/Location;)V

    .line 61
    return v2

    .line 43
    .end local v1    # "_arg2":Landroid/location/Location;
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :cond_2
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
