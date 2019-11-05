.class final Lcom/dts/dtsxultra/b/n$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/n;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/n$2;->a:Lcom/dts/dtsxultra/b/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n$2;->a:Lcom/dts/dtsxultra/b/n;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.dts.STEREO_PREFERENCE_SELECTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/n$2;->a:Lcom/dts/dtsxultra/b/n;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/n;->a(Lcom/dts/dtsxultra/b/n;Lcom/dts/dtssdk/a/n;)V

    :cond_0
    return-void
.end method
