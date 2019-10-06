.class public Lcom/qti/debugreport/IZatPDRDebugReport;
.super Ljava/lang/Object;
.source "IZatPDRDebugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatPDRDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADING_FILTER_ENGAGED:I = 0x1

.field private static final INS_FILTER_ENGAGED:I = 0x2

.field private static final PDR_ENGAGED:I = 0x4

.field private static final PDR_MAG_CALIBRATED:I = 0x8

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mPDRInfoMask:I

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "IZatPDR"

    sput-object v0, Lcom/qti/debugreport/IZatPDRDebugReport;->TAG:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/qti/debugreport/IZatPDRDebugReport;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatPDRDebugReport;->VERBOSE:Z

    .line 120
    new-instance v0, Lcom/qti/debugreport/IZatPDRDebugReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatPDRDebugReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatPDRDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 44
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mPDRInfoMask:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;I)V
    .locals 0
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "pdrInfoMask"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 38
    iput-object p2, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 39
    iput p3, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mPDRInfoMask:I

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public isHDGFilterEngaged()Z
    .locals 2

    .line 74
    iget v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mPDRInfoMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isINSFilterEngaged()Z
    .locals 1

    .line 83
    iget v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mPDRInfoMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPDREngaged()Z
    .locals 1

    .line 55
    iget v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mPDRInfoMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPDRMagCalibrated()Z
    .locals 1

    .line 65
    iget v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mPDRInfoMask:I

    and-int/lit8 v0, v0, 0x8

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

    .line 114
    iget-object v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-object v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget v0, p0, Lcom/qti/debugreport/IZatPDRDebugReport;->mPDRInfoMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return-void
.end method
