.class Lcom/qti/wwandbreceiver/BSLocationData$1;
.super Ljava/lang/Object;
.source "BSLocationData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wwandbreceiver/BSLocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/wwandbreceiver/BSLocationData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/wwandbreceiver/BSLocationData;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Lcom/qti/wwandbreceiver/BSLocationData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qti/wwandbreceiver/BSLocationData;-><init>(Landroid/os/Parcel;Lcom/qti/wwandbreceiver/BSLocationData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/qti/wwandbreceiver/BSLocationData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/wwandbreceiver/BSLocationData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qti/wwandbreceiver/BSLocationData;
    .locals 1
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lcom/qti/wwandbreceiver/BSLocationData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/qti/wwandbreceiver/BSLocationData$1;->newArray(I)[Lcom/qti/wwandbreceiver/BSLocationData;

    move-result-object p1

    return-object p1
.end method
