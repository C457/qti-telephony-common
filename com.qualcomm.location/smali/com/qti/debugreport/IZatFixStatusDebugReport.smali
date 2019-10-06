.class public Lcom/qti/debugreport/IZatFixStatusDebugReport;
.super Ljava/lang/Object;
.source "IZatFixStatusDebugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatFixStatusDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_FINAL_FIX_SUCCESSFUL:I = 0x1

.field private static final IS_HEPE_CHECK_FAIL:I = 0x4

.field private static final IS_TOO_FEW_SV_SEEN:I = 0x2

.field private static final IS_VERY_LOW_RELAIBILITY:I = 0x8

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

.field private mFixStatusMask:I

.field private mHepeLimit:J

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "IZatFixStatus"

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->TAG:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->VERBOSE:Z

    .line 158
    new-instance v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatFixStatusDebugReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 82
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    .line 85
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    goto :goto_0

    .line 87
    :cond_0
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    goto :goto_0

    .line 89
    :cond_1
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    goto :goto_0

    .line 91
    :cond_2
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 92
    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    .line 96
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mHepeLimit:J

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IJ)V
    .locals 3
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "fixStatusMask"    # I
    .param p4, "hepeLimit"    # J

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 64
    iput-object p2, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 66
    iput p3, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    .line 67
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    goto :goto_0

    .line 69
    :cond_0
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    goto :goto_0

    .line 71
    :cond_1
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    goto :goto_0

    .line 73
    :cond_2
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 74
    invoke-static {}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    .line 77
    :cond_3
    :goto_0
    iput-wide p4, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mHepeLimit:J

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getFixStatus()Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatus:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    return-object v0
.end method

.method public getHEPELimit()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mHepeLimit:J

    return-wide v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 152
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mFixStatusMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-wide v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport;->mHepeLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    return-void
.end method
