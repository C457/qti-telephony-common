.class Lcom/qti/debugreport/IZatXoStateDebugReport$1;
.super Ljava/lang/Object;
.source "IZatXoStateDebugReport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatXoStateDebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/debugreport/IZatXoStateDebugReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/debugreport/IZatXoStateDebugReport;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 91
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport;

    invoke-direct {v0, p1}, Lcom/qti/debugreport/IZatXoStateDebugReport;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/qti/debugreport/IZatXoStateDebugReport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/debugreport/IZatXoStateDebugReport;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qti/debugreport/IZatXoStateDebugReport;
    .locals 1
    .param p1, "size"    # I

    .line 95
    new-array v0, p1, [Lcom/qti/debugreport/IZatXoStateDebugReport;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/qti/debugreport/IZatXoStateDebugReport$1;->newArray(I)[Lcom/qti/debugreport/IZatXoStateDebugReport;

    move-result-object p1

    return-object p1
.end method
