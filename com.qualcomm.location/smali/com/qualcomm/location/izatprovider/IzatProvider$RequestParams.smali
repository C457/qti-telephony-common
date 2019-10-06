.class Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;
.super Ljava/lang/Object;
.source "IzatProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izatprovider/IzatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestParams"
.end annotation


# instance fields
.field public request:Lcom/android/location/provider/ProviderRequestUnbundled;

.field public source:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "request"    # Lcom/android/location/provider/ProviderRequestUnbundled;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;->request:Lcom/android/location/provider/ProviderRequestUnbundled;

    .line 447
    iput-object p2, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$RequestParams;->source:Landroid/os/WorkSource;

    .line 448
    return-void
.end method
