.class public Lcom/qti/debugreport/IZatUtcSpec;
.super Ljava/lang/Object;
.source "IZatUtcSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatUtcSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mNanoSeconds:J

.field private mWholeSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "IZatUtcSpec"

    sput-object v0, Lcom/qti/debugreport/IZatUtcSpec;->TAG:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/qti/debugreport/IZatUtcSpec;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatUtcSpec;->VERBOSE:Z

    .line 71
    new-instance v0, Lcom/qti/debugreport/IZatUtcSpec$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatUtcSpec$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatUtcSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "seconds"    # J
    .param p3, "nanoseconds"    # J

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/qti/debugreport/IZatUtcSpec;->mWholeSeconds:J

    .line 32
    iput-wide p3, p0, Lcom/qti/debugreport/IZatUtcSpec;->mNanoSeconds:J

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mWholeSeconds:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mNanoSeconds:J

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getNanoSeconds()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mNanoSeconds:J

    return-wide v0
.end method

.method public getSeconds()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mWholeSeconds:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mWholeSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lcom/qti/debugreport/IZatUtcSpec;->mNanoSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    return-void
.end method
