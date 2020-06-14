.class final Lcom/dts/dtsxultra/b/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/k;->s()V
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$3;->a:Lcom/dts/dtsxultra/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$3;->a:Lcom/dts/dtsxultra/b/k;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k;->ac:Landroid/support/v4/app/f;

    new-instance v1, Lcom/dts/dtsxultra/b/k$3$1;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/k$3$1;-><init>(Lcom/dts/dtsxultra/b/k$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/f;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
