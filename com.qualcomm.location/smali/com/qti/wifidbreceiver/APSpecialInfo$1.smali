.class Lcom/qti/wifidbreceiver/APSpecialInfo$1;
.super Ljava/lang/Object;
.source "APSpecialInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wifidbreceiver/APSpecialInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/wifidbreceiver/APSpecialInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/wifidbreceiver/APSpecialInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    new-instance v0, Lcom/qti/wifidbreceiver/APSpecialInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qti/wifidbreceiver/APSpecialInfo;-><init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APSpecialInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APSpecialInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/wifidbreceiver/APSpecialInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qti/wifidbreceiver/APSpecialInfo;
    .locals 1
    .param p1, "size"    # I

    .line 27
    new-array v0, p1, [Lcom/qti/wifidbreceiver/APSpecialInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APSpecialInfo$1;->newArray(I)[Lcom/qti/wifidbreceiver/APSpecialInfo;

    move-result-object p1

    return-object p1
.end method
