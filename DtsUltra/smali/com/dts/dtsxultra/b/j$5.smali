.class final Lcom/dts/dtsxultra/b/j$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/j;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/a",
        "<",
        "Lcom/dts/dtssdk/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/j;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/dts/dtssdk/a/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/b/j;->a(Lcom/dts/dtsxultra/b/j;Lcom/dts/dtssdk/a/f;)Lcom/dts/dtssdk/a/f;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/j;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->f(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->f(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->v(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "FAIL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->v(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/b/j;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050080

    invoke-static {v1, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->v(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->v(Lcom/dts/dtsxultra/b/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$5;->a:Lcom/dts/dtsxultra/b/j;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/b/j;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050045

    invoke-static {v1, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
