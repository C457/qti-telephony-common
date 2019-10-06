.class public final Lcom/qti/wwandbreceiver/BSLocationData;
.super Ljava/lang/Object;
.source "BSLocationData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BS_LOC_ALTITUDE_CONFIDENCE_VALID:I = 0x20

.field public static final BS_LOC_ALTITUDE_RELIABILITY_VALID:I = 0x40

.field public static final BS_LOC_ALTITUDE_UNCERTAINTY_VALID:I = 0x10

.field public static final BS_LOC_ALTITUDE_VALID:I = 0x8

.field public static final BS_LOC_HORIZONTAL_CONFIDENCE_VALID:I = 0x2

.field public static final BS_LOC_HORIZONTAL_COV_RADIUS_VALID:I = 0x1

.field public static final BS_LOC_HORIZONTAL_RELIABILITY_VALID:I = 0x4

.field public static final BS_LOC_WITH_LAT_LON:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wwandbreceiver/BSLocationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAltitude:F

.field public mAltitudeConfidence:F

.field public mAltitudeReliability:I

.field public mAltitudeUncertainty:F

.field public mCellRegionID1:I

.field public mCellRegionID2:I

.field public mCellRegionID3:I

.field public mCellRegionID4:I

.field public mCellType:I

.field public mHorizontalConfidence:I

.field public mHorizontalCoverageRadius:F

.field public mHorizontalReliability:I

.field public mLatitude:F

.field public mLongitude:F

.field public mValidBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/qti/wwandbreceiver/BSLocationData$1;

    invoke-direct {v0}, Lcom/qti/wwandbreceiver/BSLocationData$1;-><init>()V

    sput-object v0, Lcom/qti/wwandbreceiver/BSLocationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mValidBits:I

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/qti/wwandbreceiver/BSLocationData;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wwandbreceiver/BSLocationData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wwandbreceiver/BSLocationData$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/qti/wwandbreceiver/BSLocationData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellType:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellRegionID1:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellRegionID2:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellRegionID3:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellRegionID4:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mLatitude:F

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mLongitude:F

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mValidBits:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mHorizontalCoverageRadius:F

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mHorizontalConfidence:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mHorizontalReliability:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mAltitude:F

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mAltitudeUncertainty:F

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mAltitudeConfidence:F

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mAltitudeReliability:I

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellRegionID1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellRegionID2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellRegionID3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mCellRegionID4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mLatitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 68
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mLongitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 69
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mValidBits:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mHorizontalCoverageRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 71
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mHorizontalConfidence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mHorizontalReliability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mAltitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 74
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mAltitudeUncertainty:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 75
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mAltitudeConfidence:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 76
    iget v0, p0, Lcom/qti/wwandbreceiver/BSLocationData;->mAltitudeReliability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
