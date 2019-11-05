.class final Lcom/dts/dtsxultra/b/k$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/k$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/k$6;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/k$6;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$6$1;->a:Lcom/dts/dtsxultra/b/k$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$6$1;->a:Lcom/dts/dtsxultra/b/k$6;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k$6;->b:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->k(Lcom/dts/dtsxultra/b/k;)Landroid/media/AudioManager;

    move-result-object v0

    const/16 v1, -0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$6$1;->a:Lcom/dts/dtsxultra/b/k$6;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k$6;->b:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->k(Lcom/dts/dtsxultra/b/k;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$6$1;->a:Lcom/dts/dtsxultra/b/k$6;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/k$6;->b:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->k(Lcom/dts/dtsxultra/b/k;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0
.end method
