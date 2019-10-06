.class public final Lcom/qti/wifidbprovider/APObsLocData;
.super Ljava/lang/Object;
.source "APObsLocData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wifidbprovider/APObsLocData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

.field public mLocation:Landroid/location/Location;

.field public mScanList:[Lcom/qti/wifidbprovider/APScan;

.field public mScanTimestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/qti/wifidbprovider/APObsLocData$1;

    invoke-direct {v0}, Lcom/qti/wifidbprovider/APObsLocData$1;-><init>()V

    sput-object v0, Lcom/qti/wifidbprovider/APObsLocData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/qti/wifidbprovider/APObsLocData;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wifidbprovider/APObsLocData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wifidbprovider/APObsLocData$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/qti/wifidbprovider/APObsLocData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    sget-object v0, Lcom/qti/wifidbprovider/APScan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/wifidbprovider/APScan;

    iput-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mScanList:[Lcom/qti/wifidbprovider/APScan;

    .line 55
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
    iput-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mLocation:Landroid/location/Location;

    .line 56
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
    iput-object v1, p0, Lcom/qti/wifidbprovider/APObsLocData;->mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mScanTimestamp:I

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 41
    iget-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mScanList:[Lcom/qti/wifidbprovider/APScan;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mLocation:Landroid/location/Location;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mCellInfo:Lcom/qti/wwandbreceiver/BSInfo;

    invoke-virtual {v0, p1, p2}, Lcom/qti/wwandbreceiver/BSInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 50
    :cond_3
    iget v0, p0, Lcom/qti/wifidbprovider/APObsLocData;->mScanTimestamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
