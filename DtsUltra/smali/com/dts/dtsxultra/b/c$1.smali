.class final Lcom/dts/dtsxultra/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/c;
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
        "Lcom/dts/dtssdk/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/c;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/c$1;->a:Lcom/dts/dtsxultra/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/f/a;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/i;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c$1;->a:Lcom/dts/dtsxultra/b/c;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/c;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/c;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for brands returned error: "

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c$1;->a:Lcom/dts/dtsxultra/b/c;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/c;->a(Lcom/dts/dtsxultra/b/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/c$1;->a:Lcom/dts/dtsxultra/b/c;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c$1;->a:Lcom/dts/dtsxultra/b/c;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/c;->b(Lcom/dts/dtsxultra/b/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lcom/dts/dtsxultra/b/c$1$1;

    invoke-direct {v0, p0}, Lcom/dts/dtsxultra/b/c$1$1;-><init>(Lcom/dts/dtsxultra/b/c$1;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/c$1;->a:Lcom/dts/dtsxultra/b/c;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/c;->c(Lcom/dts/dtsxultra/b/c;)Lcom/dts/dtsxultra/views/b;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/dts/dtsxultra/views/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    goto :goto_0
.end method
