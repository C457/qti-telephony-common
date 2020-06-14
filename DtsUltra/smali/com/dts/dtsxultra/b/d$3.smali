.class final Lcom/dts/dtsxultra/b/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/c",
        "<",
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/d;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/f/a;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/d;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/d;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for accessories returned error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/d;->a(Lcom/dts/dtsxultra/b/d;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/d;->b(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtssdk/util/a;

    move-result-object v2

    sget-object v3, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/d;->e(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtsxultra/views/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dts/dtsxultra/views/a;->b(Lcom/dts/dtssdk/a/a;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/d;->e(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtsxultra/views/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtssdk/a/a;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/d;->f(Lcom/dts/dtsxultra/b/d;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/d;->e(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtsxultra/views/a;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/d$3;->a:Lcom/dts/dtsxultra/b/d;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/d;->c(Lcom/dts/dtsxultra/b/d;)Lcom/dts/dtsxultra/views/a;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    goto :goto_0
.end method
