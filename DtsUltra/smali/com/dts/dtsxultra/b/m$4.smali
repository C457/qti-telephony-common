.class final Lcom/dts/dtsxultra/b/m$4;
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m$4;->a:Lcom/dts/dtsxultra/b/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received null intent. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$4;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->l(Lcom/dts/dtsxultra/b/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$4;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/util/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$4;->a:Lcom/dts/dtsxultra/b/m;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$4;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/m;->m(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/util/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/m;->b(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;)V

    :cond_1
    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received intent. Action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-string v0, "audioRoute"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$4;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/m;->c(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/util/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$4;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/m;->g(Lcom/dts/dtsxultra/b/m;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x7fbbfc7d
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
