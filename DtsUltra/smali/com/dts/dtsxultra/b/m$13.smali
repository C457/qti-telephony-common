.class final Lcom/dts/dtsxultra/b/m$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/m;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/m;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    iput-object v0, v1, Lcom/dts/dtsxultra/b/m;->ad:Lcom/dts/dtssdk/a/j;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/b/m;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/m;->f(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtsxultra/views/d;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    iget-object v2, v2, Lcom/dts/dtsxultra/b/m;->ad:Lcom/dts/dtssdk/a/j;

    invoke-virtual {v2}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v2

    iput-object v2, v1, Lcom/dts/dtsxultra/views/d;->f:Lcom/dts/dtssdk/util/d;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/m;->f(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtsxultra/views/d;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/m;->c(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/util/a;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/m;->c(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/util/a;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dts/dtsxultra/b/m;->b(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$13;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/m;->c(Lcom/dts/dtsxultra/b/m;)Lcom/dts/dtssdk/util/a;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dts/dtsxultra/b/m;->c(Lcom/dts/dtsxultra/b/m;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V

    :cond_0
    return-void
.end method
