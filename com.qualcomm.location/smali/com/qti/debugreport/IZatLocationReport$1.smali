.class Lcom/qti/debugreport/IZatLocationReport$1;
.super Ljava/lang/Object;
.source "IZatLocationReport.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatLocationReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qti/debugreport/IZatLocationReport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/debugreport/IZatLocationReport;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 257
    new-instance v0, Lcom/qti/debugreport/IZatLocationReport;

    invoke-direct {v0, p1}, Lcom/qti/debugreport/IZatLocationReport;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/qti/debugreport/IZatLocationReport$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/debugreport/IZatLocationReport;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qti/debugreport/IZatLocationReport;
    .locals 1
    .param p1, "size"    # I

    .line 261
    new-array v0, p1, [Lcom/qti/debugreport/IZatLocationReport;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/qti/debugreport/IZatLocationReport$1;->newArray(I)[Lcom/qti/debugreport/IZatLocationReport;

    move-result-object p1

    return-object p1
.end method
