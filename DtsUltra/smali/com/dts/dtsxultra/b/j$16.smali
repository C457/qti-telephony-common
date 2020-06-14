.class final Lcom/dts/dtsxultra/b/j$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/j;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/j;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->h(Lcom/dts/dtsxultra/b/j;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BroadcastTest-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->j(Lcom/dts/dtsxultra/b/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "dts.dtssdk.intent.action.SET_DTS_ENABLED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/j;->ac:Landroid/support/v4/app/f;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "dts.dtssdk.intent.action.SET_DTS_DISABLED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f0e0050

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$16;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
