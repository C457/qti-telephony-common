.class final Lcom/a/b/ay$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/ay;


# direct methods
.method public constructor <init>(Lcom/a/b/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ay$a;->a:Lcom/a/b/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/b/ay$a;->a:Lcom/a/b/ay;

    invoke-static {v0, p1}, Lcom/a/b/ay;->a(Lcom/a/b/ay;Landroid/location/Location;)Landroid/location/Location;

    :cond_0
    iget-object v0, p0, Lcom/a/b/ay$a;->a:Lcom/a/b/ay;

    invoke-static {v0}, Lcom/a/b/ay;->c(Lcom/a/b/ay;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-static {}, Lcom/a/b/ay;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Max location reports reached, stopping"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/ay$a;->a:Lcom/a/b/ay;

    invoke-static {v0}, Lcom/a/b/ay;->b(Lcom/a/b/ay;)V

    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
