.class final Lcom/dts/dtsxultra/b/j$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/j;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->a(Lcom/dts/dtsxultra/b/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/b/j;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->g(Lcom/dts/dtsxultra/b/j;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/j;->ac:Landroid/support/v4/app/f;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$15;->a:Lcom/dts/dtsxultra/b/j;

    iget-object v1, v1, Lcom/dts/dtsxultra/b/j;->ad:Lcom/dts/dtssdk/a/j;

    new-instance v2, Lcom/dts/dtsxultra/b/j$15$1;

    invoke-direct {v2, p0}, Lcom/dts/dtsxultra/b/j$15$1;-><init>(Lcom/dts/dtsxultra/b/j$15;)V

    invoke-static {v0, v1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    :cond_0
    return-void
.end method
