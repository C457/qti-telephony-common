.class Lcom/qti/geofence/GeofenceData$1;
.super Ljava/lang/Object;
.source "GeofenceData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/geofence/GeofenceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/geofence/GeofenceData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/geofence/GeofenceData;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 264
    new-instance v0, Lcom/qti/geofence/GeofenceData;

    invoke-direct {v0, p1}, Lcom/qti/geofence/GeofenceData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/qti/geofence/GeofenceData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/geofence/GeofenceData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qti/geofence/GeofenceData;
    .locals 1
    .param p1, "size"    # I

    .line 268
    new-array v0, p1, [Lcom/qti/geofence/GeofenceData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/qti/geofence/GeofenceData$1;->newArray(I)[Lcom/qti/geofence/GeofenceData;

    move-result-object p1

    return-object p1
.end method
