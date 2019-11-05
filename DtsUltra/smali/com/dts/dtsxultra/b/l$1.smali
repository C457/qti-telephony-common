.class final Lcom/dts/dtsxultra/b/l$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/l;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$1;->a:Lcom/dts/dtsxultra/b/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received null intent. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Received intent. Action: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "audioRoute"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$1;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtsxultra/b/l;Lcom/dts/dtssdk/util/a;)V

    goto :goto_0

    :sswitch_0
    const-string v4, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "dts.dtssdk.intent.status.DTS_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    goto :goto_1

    :pswitch_1
    const-string v0, "dtsState"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$1;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$1;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtsxultra/b/l;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/dts/dtsxultra/util/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dts/dtsxultra/b/l$1;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbbfc7d -> :sswitch_0
        0x1a798f54 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
