.class final Lcom/dts/dtsxultra/b/l$8;
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$8;->a:Lcom/dts/dtsxultra/b/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$8;->a:Lcom/dts/dtsxultra/b/l;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.dts.HEADPHONE_X_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$8;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->h(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$8;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0, v3}, Lcom/dts/dtsxultra/b/l;->b(Lcom/dts/dtsxultra/b/l;Z)V

    :cond_1
    :goto_0
    const-string v0, "com.dts.HEADPHONE_SELECTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/util/a;

    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification update receiver on receive. audioRoute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/dts/dtsxultra/b/l$8;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/l;->b(Lcom/dts/dtsxultra/b/l;Lcom/dts/dtssdk/util/a;)V

    :cond_2
    return-void

    :cond_3
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$8;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->h(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$8;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0, v2}, Lcom/dts/dtsxultra/b/l;->b(Lcom/dts/dtsxultra/b/l;Z)V

    goto :goto_0
.end method
