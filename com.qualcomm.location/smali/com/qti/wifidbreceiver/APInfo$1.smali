.class Lcom/qti/wifidbreceiver/APInfo$1;
.super Ljava/lang/Object;
.source "APInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wifidbreceiver/APInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/wifidbreceiver/APInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/wifidbreceiver/APInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 30
    new-instance v0, Lcom/qti/wifidbreceiver/APInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qti/wifidbreceiver/APInfo;-><init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/wifidbreceiver/APInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qti/wifidbreceiver/APInfo;
    .locals 1
    .param p1, "size"    # I

    .line 34
    new-array v0, p1, [Lcom/qti/wifidbreceiver/APInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APInfo$1;->newArray(I)[Lcom/qti/wifidbreceiver/APInfo;

    move-result-object p1

    return-object p1
.end method
