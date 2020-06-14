.class final Lcom/dts/dtsxultra/b/k$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtsxultra/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/k;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$5;->a:Lcom/dts/dtsxultra/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$5;->a:Lcom/dts/dtsxultra/b/k;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k;->ac:Landroid/support/v4/app/f;

    check-cast v0, Lcom/dts/dtsxultra/c/c;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k$5;->a:Lcom/dts/dtsxultra/b/k;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/k;->ac:Landroid/support/v4/app/f;

    invoke-virtual {v1}, Landroid/support/v4/app/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dts/dtsxultra/c/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    const-string v1, "Hosting activity does not implement SnackBarListener. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
