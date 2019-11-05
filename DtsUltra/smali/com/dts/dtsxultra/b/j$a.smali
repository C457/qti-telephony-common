.class public final Lcom/dts/dtsxultra/b/j$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/j;


# direct methods
.method public constructor <init>(Lcom/dts/dtsxultra/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$a;->a:Lcom/dts/dtsxultra/b/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "requestId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dts.dtssdk.intent.status.UNSUPPORTED_INTENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "dts.dtssdk.intent.status.SET_DTS_RESULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "resultCode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dts.dtssdk.intent.status.SET_DTS_RESULT | requestId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$a;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->g(Lcom/dts/dtsxultra/b/j;)Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "Setting DTS state using broadcast API failed"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v2, "dts.dtssdk.intent.status.GET_DTS_RESULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "resultCode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dtsState"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dts.dtssdk.intent.status.GET_DTS_RESULT | requestId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nresultCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\ndtsState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$a;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$a;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$a;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->g(Lcom/dts/dtsxultra/b/j;)Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "Getting DTS state using broadcast API failed"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    const-string v1, "dts.dtssdk.intent.status.DTS_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dtsState"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$a;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$a;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$a;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0
.end method
