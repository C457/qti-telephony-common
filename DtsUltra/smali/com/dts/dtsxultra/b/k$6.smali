.class final Lcom/dts/dtsxultra/b/k$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dts/dtsxultra/b/k;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/k;)V
    .locals 2

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$6;->b:Lcom/dts/dtsxultra/b/k;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/dts/dtsxultra/b/k$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/dts/dtsxultra/b/k$6;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$6;->b:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->j(Lcom/dts/dtsxultra/b/k;)Landroid/support/v4/app/f;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/b/k$6$1;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/b/k$6$1;-><init>(Lcom/dts/dtsxultra/b/k$6;)V

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
