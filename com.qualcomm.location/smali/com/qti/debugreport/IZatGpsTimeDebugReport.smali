.class public Lcom/qti/debugreport/IZatGpsTimeDebugReport;
.super Ljava/lang/Object;
.source "IZatGpsTimeDebugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatGpsTimeDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mClockFrequencyBias:I

.field private mClockFrequencyBiasUncertainity:I

.field private mGpsTimeOfWeekInMs:J

.field private mGpsWeek:I

.field private mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field private mTimeUncertainity:I

.field private mTimeValid:Z

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-string v0, "IZatGpsTimeReport"

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->VERBOSE:Z

    .line 223
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 105
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsWeek:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsTimeOfWeekInMs:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeValid:Z

    .line 110
    invoke-static {}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->values()[Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeUncertainity:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBias:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBiasUncertainity:I

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IJZIIII)V
    .locals 2
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "gpsWeek"    # I
    .param p4, "gpsTimeOfweekInMs"    # J
    .param p6, "timeValid"    # Z
    .param p7, "timeSource"    # I
    .param p8, "timeUncertainity"    # I
    .param p9, "clockfrequencyBias"    # I
    .param p10, "clockfrequencyBiasUncertainity"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 86
    iput-object p2, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 88
    iput p3, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsWeek:I

    .line 89
    iput-wide p4, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsTimeOfWeekInMs:J

    .line 91
    iput-boolean p6, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeValid:Z

    .line 93
    :try_start_0
    invoke-static {}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->values()[Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    move-result-object v0

    aget-object v0, v0, p7

    iput-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_INVALID:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    iput-object v1, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 97
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    iput p8, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeUncertainity:I

    .line 99
    iput p9, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBias:I

    .line 100
    iput p10, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBiasUncertainity:I

    .line 101
    return-void
.end method


# virtual methods
.method public IsTimeValid()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeValid:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getClockFrequencyBias()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBias:I

    return v0
.end method

.method public getClockFrequencyBiasUncertainity()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBiasUncertainity:I

    return v0
.end method

.method public getGpsTimeOfWeek()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsTimeOfWeekInMs:J

    return-wide v0
.end method

.method public getGpsWeek()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsWeek:I

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getTimeSource()Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    return-object v0
.end method

.method public getTimeUncertainity()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeUncertainity:I

    return v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 208
    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 211
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-wide v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mGpsTimeOfWeekInMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 213
    iget-boolean v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeValid:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeSource:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    invoke-virtual {v0}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mTimeUncertainity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBias:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport;->mClockFrequencyBiasUncertainity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return-void
.end method
