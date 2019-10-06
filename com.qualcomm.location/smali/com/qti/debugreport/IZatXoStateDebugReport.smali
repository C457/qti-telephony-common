.class public Lcom/qti/debugreport/IZatXoStateDebugReport;
.super Ljava/lang/Object;
.source "IZatXoStateDebugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatXoStateDebugReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

.field private mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatXoStateDebugReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 42
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 44
    invoke-static {}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->values()[Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;I)V
    .locals 2
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "xoState"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 31
    iput-object p2, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 34
    :try_start_0
    invoke-static {}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->values()[Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    move-result-object v0

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FAILED:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    iput-object v1, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 38
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getXoState()Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget-object v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport;->mXoState:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    invoke-virtual {v0}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
