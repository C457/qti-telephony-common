.class final Lcom/dts/dtsxultra/b/j$18;
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/j;->l(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/j;->h(Lcom/dts/dtsxultra/b/j;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->n(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtsxultra/b/m$a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->m(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v2, v2, Lcom/dts/dtsxultra/b/j;->ad:Lcom/dts/dtssdk/a/j;

    invoke-static {v1, v2, p2}, Lcom/dts/dtsxultra/b/m$a;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->l(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->l(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/j;->l(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v2

    if-nez p2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$18;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/support/v4/app/f;

    const v2, 0x7f0e0050

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
