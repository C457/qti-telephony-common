.class final Lcom/dts/dtsxultra/b/m$13;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/m;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/m;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.dts.HEADPHONE_X_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-virtual {v0, v3}, Lcom/dts/dtsxultra/b/m;->c(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtsxultra/b/m;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_0
    :goto_0
    const-string v0, "com.dts.STEREO_PREFERENCE_SELECTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/n;

    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification update receiver on receive. StereoPref: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/a/n;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtsxultra/b/m;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-virtual {v0, v2}, Lcom/dts/dtsxultra/b/m;->c(Z)V

    goto :goto_0
.end method
