.class public final Lcom/qti/wwandbprovider/BSObsLocationData;
.super Ljava/lang/Object;
.source "BSObsLocationData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wwandbprovider/BSObsLocationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

.field public mLocation:Landroid/location/Location;

.field public mScanTimestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/qti/wwandbprovider/BSObsLocationData$1;

    invoke-direct {v0}, Lcom/qti/wwandbprovider/BSObsLocationData$1;-><init>()V

    sput-object v0, Lcom/qti/wwandbprovider/BSObsLocationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/qti/wwandbprovider/BSObsLocationData;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wwandbprovider/BSObsLocationData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wwandbprovider/BSObsLocationData$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/qti/wwandbprovider/BSObsLocationData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mLocation:Landroid/location/Location;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/qti/wwandbreceiver/BSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/qti/wwandbreceiver/BSInfo;

    nop

    :cond_1
    iput-object v1, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mScanTimestamp:I

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 40
    iget-object v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mLocation:Landroid/location/Location;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-object v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 45
    iget-object v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

    invoke-virtual {v0, p1, p2}, Lcom/qti/wwandbreceiver/BSInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 48
    :cond_3
    iget v0, p0, Lcom/qti/wwandbprovider/BSObsLocationData;->mScanTimestamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
