.class public final Lcom/qti/wwandbreceiver/BSSpecialInfo;
.super Ljava/lang/Object;
.source "BSSpecialInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wwandbreceiver/BSSpecialInfo;",
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

.field public mInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/qti/wwandbreceiver/BSSpecialInfo$1;

    invoke-direct {v0}, Lcom/qti/wwandbreceiver/BSSpecialInfo$1;-><init>()V

    sput-object v0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p0, p1}, Lcom/qti/wwandbreceiver/BSSpecialInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wwandbreceiver/BSSpecialInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wwandbreceiver/BSSpecialInfo$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/qti/wwandbreceiver/BSSpecialInfo;-><init>(Landroid/os/Parcel;)V

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
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellType:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID1:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID2:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID3:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID4:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mInfo:I

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 40
    iget v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mCellRegionID4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/qti/wwandbreceiver/BSSpecialInfo;->mInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void
.end method
