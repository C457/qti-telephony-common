.class Lcom/qti/debugreport/IZatErrorRecoveryReport$1;
.super Ljava/lang/Object;
.source "IZatErrorRecoveryReport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatErrorRecoveryReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/debugreport/IZatErrorRecoveryReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/debugreport/IZatErrorRecoveryReport;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 73
    new-instance v0, Lcom/qti/debugreport/IZatErrorRecoveryReport;

    invoke-direct {v0, p1}, Lcom/qti/debugreport/IZatErrorRecoveryReport;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/qti/debugreport/IZatErrorRecoveryReport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/debugreport/IZatErrorRecoveryReport;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qti/debugreport/IZatErrorRecoveryReport;
    .locals 1
    .param p1, "size"    # I

    .line 77
    new-array v0, p1, [Lcom/qti/debugreport/IZatErrorRecoveryReport;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/qti/debugreport/IZatErrorRecoveryReport$1;->newArray(I)[Lcom/qti/debugreport/IZatErrorRecoveryReport;

    move-result-object p1

    return-object p1
.end method
