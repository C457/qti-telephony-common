.class final Lcom/dts/dtsxultra/b/j$17;
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->l(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtsxultra/b/m$a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->k(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/j;->h(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/a/j;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/dts/dtsxultra/b/m$a;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->m(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->m(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    goto :goto_0
.end method
