.class Lcom/qti/wifidbprovider/APObsLocData$1;
.super Ljava/lang/Object;
.source "APObsLocData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wifidbprovider/APObsLocData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/wifidbprovider/APObsLocData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/wifidbprovider/APObsLocData;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 28
    new-instance v0, Lcom/qti/wifidbprovider/APObsLocData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qti/wifidbprovider/APObsLocData;-><init>(Landroid/os/Parcel;Lcom/qti/wifidbprovider/APObsLocData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/qti/wifidbprovider/APObsLocData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/wifidbprovider/APObsLocData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qti/wifidbprovider/APObsLocData;
    .locals 1
    .param p1, "size"    # I

    .line 32
    new-array v0, p1, [Lcom/qti/wifidbprovider/APObsLocData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/qti/wifidbprovider/APObsLocData$1;->newArray(I)[Lcom/qti/wifidbprovider/APObsLocData;

    move-result-object p1

    return-object p1
.end method
