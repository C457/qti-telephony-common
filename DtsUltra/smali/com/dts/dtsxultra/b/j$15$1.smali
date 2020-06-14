.class final Lcom/dts/dtsxultra/b/j$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/j$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/j$15;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/j$15;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$15$1;->a:Lcom/dts/dtsxultra/b/j$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Force reapply API returned null result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$15$1;->a:Lcom/dts/dtsxultra/b/j$15;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/support/v4/app/f;

    const-string v1, "SDK returned null while reapplying tunings"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$15$1;->a:Lcom/dts/dtsxultra/b/j$15;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$15$1;->a:Lcom/dts/dtsxultra/b/j$15;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->g(Lcom/dts/dtsxultra/b/j;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Force reapply API returned result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$15$1;->a:Lcom/dts/dtsxultra/b/j$15;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/support/v4/app/f;

    const-string v1, "Some tunings failed to reapply"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$15$1;->a:Lcom/dts/dtsxultra/b/j$15;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/support/v4/app/f;

    const-string v1, "All tunings reapplied"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
