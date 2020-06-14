.class final Lcom/dts/dtsxultra/b/l$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/l;->s()V
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->g(Lcom/dts/dtsxultra/b/l;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->h(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtsxultra/b/l;Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->h(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->h(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/l;->ac:Landroid/support/v4/app/f;

    const v1, 0x7f0e0050

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
