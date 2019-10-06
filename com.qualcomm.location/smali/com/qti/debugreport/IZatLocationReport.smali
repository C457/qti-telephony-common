.class public Lcom/qti/debugreport/IZatLocationReport;
.super Ljava/lang/Object;
.source "IZatLocationReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatLocationReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_HORIZONTAL_COMPONENT:I = 0x1

.field private static final HAS_SOURCE:I = 0x4

.field private static final HAS_VERTICAL_COMPONENT:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mAltitudeUncertainity:F

.field private mLatitude:D

.field private mLongitude:D

.field private mSource:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

.field private mValidityBit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "IZatLocationReport"

    sput-object v0, Lcom/qti/debugreport/IZatLocationReport;->TAG:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/qti/debugreport/IZatLocationReport;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatLocationReport;->VERBOSE:Z

    .line 253
    new-instance v0, Lcom/qti/debugreport/IZatLocationReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatLocationReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatLocationReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 98
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    .line 101
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLatitude:D

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLongitude:D

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAccuracy:F

    .line 107
    :cond_0
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitude:D

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitudeUncertainity:F

    .line 112
    :cond_1
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 114
    :try_start_0
    invoke-static {}, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->values()[Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_UNKNOWN:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    iput-object v1, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    .line 119
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IDDFDFI)V
    .locals 2
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "validityMask"    # I
    .param p4, "lat"    # D
    .param p6, "lon"    # D
    .param p8, "horzAccuracy"    # F
    .param p9, "alt"    # D
    .param p11, "altUnc"    # F
    .param p12, "source"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 69
    iput-object p2, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 70
    iput p3, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    .line 72
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 73
    iput-wide p4, p0, Lcom/qti/debugreport/IZatLocationReport;->mLatitude:D

    .line 74
    iput-wide p6, p0, Lcom/qti/debugreport/IZatLocationReport;->mLongitude:D

    .line 75
    iput p8, p0, Lcom/qti/debugreport/IZatLocationReport;->mAccuracy:F

    .line 78
    :cond_0
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 79
    iput-wide p9, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitude:D

    .line 80
    iput p11, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitudeUncertainity:F

    .line 83
    :cond_1
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 89
    :try_start_0
    invoke-static {}, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->values()[Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    move-result-object v0

    aget-object v0, v0, p12

    iput-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_UNKNOWN:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    iput-object v1, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    .line 94
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitude:D

    return-wide v0
.end method

.method public getAltitudeUncertainity()F
    .locals 1

    .line 193
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitudeUncertainity:F

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLongitude:D

    return-wide v0
.end method

.method public getSource()Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public hasHorizontalFix()Z
    .locals 2

    .line 128
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSource()Z
    .locals 1

    .line 147
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVerticalFix()Z
    .locals 1

    .line 138
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 231
    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 232
    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 236
    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 237
    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 238
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 241
    :cond_0
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 242
    iget-wide v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 243
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mAltitudeUncertainity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 246
    :cond_1
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mValidityBit:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/qti/debugreport/IZatLocationReport;->mSource:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    invoke-virtual {v0}, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    :cond_2
    return-void
.end method
