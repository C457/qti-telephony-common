.class public final Lcom/qti/wifidbreceiver/APInfoExt;
.super Ljava/lang/Object;
.source "APInfoExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wifidbreceiver/APInfoExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCellRegionID1:I

.field public mCellRegionID2:I

.field public mCellRegionID3:I

.field public mCellRegionID4:I

.field public mCellType:I

.field public mFdalStatus:I

.field public mMacAddress:Ljava/lang/String;

.field public mSSID:[B

.field public mTimestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/qti/wifidbreceiver/APInfoExt$1;

    invoke-direct {v0}, Lcom/qti/wifidbreceiver/APInfoExt$1;-><init>()V

    sput-object v0, Lcom/qti/wifidbreceiver/APInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APInfoExt;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APInfoExt$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wifidbreceiver/APInfoExt$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/qti/wifidbreceiver/APInfoExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mMacAddress:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellType:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID1:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID2:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID3:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID4:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mSSID:[B

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mTimestamp:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mFdalStatus:I

    .line 67
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 46
    iget-object v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mCellRegionID4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mSSID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 53
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mTimestamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfoExt;->mFdalStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
