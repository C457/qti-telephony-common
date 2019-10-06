.class public final Lcom/qti/wifidbreceiver/APLocationData;
.super Ljava/lang/Object;
.source "APLocationData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AP_LOC_HORIZONTAL_ERR_VALID:I = 0x2

.field public static final AP_LOC_MAR_VALID:I = 0x1

.field public static final AP_LOC_RELIABILITY_VALID:I = 0x4

.field public static final AP_LOC_WITH_LAT_LON:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/wifidbreceiver/APLocationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mHorizontalError:F

.field public mLatitude:F

.field public mLongitude:F

.field public mMacAddress:Ljava/lang/String;

.field public mMaxAntenaRange:F

.field public mReliability:I

.field public mValidBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/qti/wifidbreceiver/APLocationData$1;

    invoke-direct {v0}, Lcom/qti/wifidbreceiver/APLocationData$1;-><init>()V

    sput-object v0, Lcom/qti/wifidbreceiver/APLocationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/qti/wifidbreceiver/APLocationData;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qti/wifidbreceiver/APLocationData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qti/wifidbreceiver/APLocationData$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/qti/wifidbreceiver/APLocationData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mMacAddress:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mLatitude:F

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mLongitude:F

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mMaxAntenaRange:F

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mHorizontalError:F

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mReliability:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mValidBits:I

    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 47
    iget-object v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mLatitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 49
    iget v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mLongitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 50
    iget v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mMaxAntenaRange:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 51
    iget v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mHorizontalError:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 52
    iget v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mReliability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/qti/wifidbreceiver/APLocationData;->mValidBits:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
