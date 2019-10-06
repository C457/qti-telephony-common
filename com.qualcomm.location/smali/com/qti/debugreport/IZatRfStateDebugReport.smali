.class public Lcom/qti/debugreport/IZatRfStateDebugReport;
.super Ljava/lang/Object;
.source "IZatRfStateDebugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatRfStateDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mADCAmplitudeI:J

.field private mADCAmplitudeQ:J

.field private mBDSBPAmpI:J

.field private mBDSBPAmpQ:J

.field private mErrorRecovery:J

.field private mGALBPAmpI:J

.field private mGALBPAmpQ:J

.field private mGLOBPAmpI:J

.field private mGLOBPAmpQ:J

.field private mGPSBPAmpI:J

.field private mGPSBPAmpQ:J

.field private mJammerMetricBds:J

.field private mJammerMetricGPS:J

.field private mJammerMetricGal:J

.field private mJammerMetricGlonass:J

.field private mPGAGain:I

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "IZatRfStateReport"

    sput-object v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->TAG:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->VERBOSE:Z

    .line 284
    new-instance v0, Lcom/qti/debugreport/IZatRfStateDebugReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatRfStateDebugReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 76
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mPGAGain:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeI:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeQ:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGPS:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGlonass:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricBds:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGal:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpI:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpQ:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpI:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpQ:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpI:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpQ:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpI:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpQ:J

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IJJJJJJJJJJJJJJ)V
    .locals 17
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "pgaGain"    # I
    .param p4, "adcAmplI"    # J
    .param p6, "adcAmplQ"    # J
    .param p8, "jammermetricGps"    # J
    .param p10, "jammermetricGlonass"    # J
    .param p12, "jammermetricBds"    # J
    .param p14, "jammermetricGal"    # J
    .param p16, "gpsBpAmpI"    # J
    .param p18, "gpsBpAmpQ"    # J
    .param p20, "gloBpAmpI"    # J
    .param p22, "gloBpAmpQ"    # J
    .param p24, "bdsBpAmpI"    # J
    .param p26, "bdsBpAmpQ"    # J
    .param p28, "galBpAmpI"    # J
    .param p30, "galBpAmpQ"    # J

    move-object/from16 v0, p0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 53
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 55
    move/from16 v3, p3

    iput v3, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mPGAGain:I

    .line 56
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeI:J

    .line 57
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeQ:J

    .line 59
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGPS:J

    .line 60
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGlonass:J

    .line 61
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricBds:J

    .line 62
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGal:J

    .line 64
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpI:J

    .line 65
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpQ:J

    .line 66
    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpI:J

    .line 67
    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpQ:J

    .line 68
    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpI:J

    .line 69
    move-wide/from16 v1, p26

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpQ:J

    .line 70
    move-wide/from16 v1, p28

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpI:J

    .line 71
    move-wide/from16 v1, p30

    iput-wide v1, v0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpQ:J

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getADCAmplitudeI()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeI:J

    return-wide v0
.end method

.method public getADCAmplitudeQ()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeQ:J

    return-wide v0
.end method

.method public getBDSBPAmpI()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpI:J

    return-wide v0
.end method

.method public getBDSBPAmpQ()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpQ:J

    return-wide v0
.end method

.method public getGALBPAmpI()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpI:J

    return-wide v0
.end method

.method public getGALBPAmpQ()J
    .locals 2

    .line 249
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpQ:J

    return-wide v0
.end method

.method public getGLOBPAmpI()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpI:J

    return-wide v0
.end method

.method public getGLOBPAmpQ()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpQ:J

    return-wide v0
.end method

.method public getGPSBPAmpI()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpI:J

    return-wide v0
.end method

.method public getGPSBPAmpQ()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpQ:J

    return-wide v0
.end method

.method public getJammerMetricBds()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricBds:J

    return-wide v0
.end method

.method public getJammerMetricGPS()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGPS:J

    return-wide v0
.end method

.method public getJammerMetricGal()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGal:J

    return-wide v0
.end method

.method public getJammerMetricGlonass()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGlonass:J

    return-wide v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getPGAGain()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mPGAGain:I

    return v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 260
    iget-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 261
    iget-object v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 263
    iget v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mPGAGain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 265
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mADCAmplitudeQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGPS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGlonass:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 269
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricBds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mJammerMetricGal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 272
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 273
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGPSBPAmpQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 274
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGLOBPAmpQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 277
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mBDSBPAmpQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 278
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpI:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget-wide v0, p0, Lcom/qti/debugreport/IZatRfStateDebugReport;->mGALBPAmpQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    return-void
.end method
