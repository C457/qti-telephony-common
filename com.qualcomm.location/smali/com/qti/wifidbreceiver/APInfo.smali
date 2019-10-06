.class public final Lcom/qti/wifidbreceiver/APInfo;
.super Ljava/lang/Object;
.source "APInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wifidbreceiver/APInfo;",
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

.field public mMacAddress:Ljava/lang/String;

.field public mSSID:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/qti/wifidbreceiver/APInfo$1;

    invoke-direct {v0}, Lcom/qti/wifidbreceiver/APInfo$1;-><init>()V

    sput-object v0, Lcom/qti/wifidbreceiver/APInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wifidbreceiver/APInfo$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/qti/wifidbreceiver/APInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mMacAddress:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellType:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID1:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID2:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID3:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID4:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mSSID:[B

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 43
    iget-object v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mCellRegionID4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lcom/qti/wifidbreceiver/APInfo;->mSSID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 50
    return-void
.end method
