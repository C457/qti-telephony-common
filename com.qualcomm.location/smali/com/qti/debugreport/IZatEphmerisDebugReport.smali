.class public Lcom/qti/debugreport/IZatEphmerisDebugReport;
.super Ljava/lang/Object;
.source "IZatEphmerisDebugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatEphmerisDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mBdsEphemrisDataValidity:J

.field private mGalEphemrisDataValidity:J

.field private mGlonassEphemrisDataValidity:I

.field private mGpsEphemrisDataValidity:I

.field private mQzssEphemrisDataValidity:B

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-string v0, "IZatEphmeris"

    sput-object v0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->VERBOSE:Z

    .line 154
    new-instance v0, Lcom/qti/debugreport/IZatEphmerisDebugReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatEphmerisDebugReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 52
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGpsEphemrisDataValidity:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGlonassEphemrisDataValidity:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mBdsEphemrisDataValidity:J

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGalEphemrisDataValidity:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mQzssEphemrisDataValidity:B

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IIJJB)V
    .locals 0
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "gpsEphDataValidity"    # I
    .param p4, "glonassEphDataValidity"    # I
    .param p5, "bdsEphDataValidity"    # J
    .param p7, "galEphDataValidity"    # J
    .param p9, "qzssEphDataValidity"    # B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 41
    iput-object p2, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 43
    iput p3, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGpsEphemrisDataValidity:I

    .line 44
    iput p4, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGlonassEphemrisDataValidity:I

    .line 45
    iput-wide p5, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mBdsEphemrisDataValidity:J

    .line 46
    iput-wide p7, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGalEphemrisDataValidity:J

    .line 47
    iput-byte p9, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mQzssEphemrisDataValidity:B

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getEphmerisForBDS()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mBdsEphemrisDataValidity:J

    return-wide v0
.end method

.method public getEphmerisForGPS()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGpsEphemrisDataValidity:I

    return v0
.end method

.method public getEphmerisForGal()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGalEphemrisDataValidity:J

    return-wide v0
.end method

.method public getEphmerisForGlonass()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGlonassEphemrisDataValidity:I

    return v0
.end method

.method public getEphmerisForQzss()B
    .locals 1

    .line 113
    iget-byte v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mQzssEphemrisDataValidity:B

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    iget-object v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGpsEphemrisDataValidity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGlonassEphemrisDataValidity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mBdsEphemrisDataValidity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-wide v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mGalEphemrisDataValidity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-byte v0, p0, Lcom/qti/debugreport/IZatEphmerisDebugReport;->mQzssEphemrisDataValidity:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    return-void
.end method
