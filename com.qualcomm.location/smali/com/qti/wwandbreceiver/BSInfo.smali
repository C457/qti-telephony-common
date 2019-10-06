.class public final Lcom/qti/wwandbreceiver/BSInfo;
.super Ljava/lang/Object;
.source "BSInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wwandbreceiver/BSInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCellLocalTimestamp:I

.field public mCellRegionID1:I

.field public mCellRegionID2:I

.field public mCellRegionID3:I

.field public mCellRegionID4:I

.field public mCellType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/qti/wwandbreceiver/BSInfo$1;

    invoke-direct {v0}, Lcom/qti/wwandbreceiver/BSInfo$1;-><init>()V

    sput-object v0, Lcom/qti/wwandbreceiver/BSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p0, p1}, Lcom/qti/wwandbreceiver/BSInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wwandbreceiver/BSInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wwandbreceiver/BSInfo$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/qti/wwandbreceiver/BSInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellType:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellRegionID1:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellRegionID2:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellRegionID3:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellRegionID4:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellLocalTimestamp:I

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 41
    iget v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellRegionID1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellRegionID2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellRegionID3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellRegionID4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/qti/wwandbreceiver/BSInfo;->mCellLocalTimestamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void
.end method
