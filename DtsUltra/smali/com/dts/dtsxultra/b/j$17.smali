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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->k(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/b/j;->a(Lcom/dts/dtsxultra/b/j;Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->i(Lcom/dts/dtsxultra/b/j;)Landroid/widget/Switch;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/j;->a(Lcom/dts/dtsxultra/b/j;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$17;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/support/v4/app/f;

    invoke-static {v0, p2}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;Z)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
