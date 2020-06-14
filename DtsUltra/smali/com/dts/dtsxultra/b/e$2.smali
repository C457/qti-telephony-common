.class final Lcom/dts/dtsxultra/b/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/e;
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
        "Lcom/dts/dtssdk/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/e;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/e$2;->a:Lcom/dts/dtsxultra/b/e;

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
            "Lcom/dts/dtssdk/a/j;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$2;->a:Lcom/dts/dtsxultra/b/e;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/e;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/e;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for content mode returned error: "

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$2;->a:Lcom/dts/dtsxultra/b/e;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/e;->a(Lcom/dts/dtsxultra/b/e;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/dts/dtsxultra/b/e;->R()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Applying device headphone "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/j;

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/j;->a()Lcom/dts/dtssdk/util/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$2;->a:Lcom/dts/dtsxultra/b/e;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/e;->b(Lcom/dts/dtsxultra/b/e;)Lcom/dts/dtsxultra/views/c;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$2;->a:Lcom/dts/dtsxultra/b/e;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/e;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$2;->a:Lcom/dts/dtsxultra/b/e;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/e;->c(Lcom/dts/dtsxultra/b/e;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/b/e$2;->a:Lcom/dts/dtsxultra/b/e;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/e;->d(Lcom/dts/dtsxultra/b/e;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/dts/dtsxultra/views/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/c;->notifyDataSetChanged()V

    goto :goto_1
.end method
