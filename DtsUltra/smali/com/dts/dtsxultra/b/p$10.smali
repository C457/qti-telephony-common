.class final Lcom/dts/dtsxultra/b/p$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/p;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/p;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/p$10;->a:Lcom/dts/dtsxultra/b/p;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/p$10;->a:Lcom/dts/dtsxultra/b/p;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/p;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/p;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for get Product Audio Route returned error: "

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/p$10;->a:Lcom/dts/dtsxultra/b/p;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/p;->f(Lcom/dts/dtsxultra/b/p;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/dts/dtsxultra/b/p$10;->a:Lcom/dts/dtsxultra/b/p;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/p;->h(Lcom/dts/dtsxultra/b/p;)Lcom/dts/dtssdk/a/a;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/dts/dtssdk/a/a;->h:I

    :cond_2
    invoke-static {}, Lcom/dts/dtsxultra/b/p;->R()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Product Audio Route : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/b/p$10;->a:Lcom/dts/dtsxultra/b/p;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/p$10;->a:Lcom/dts/dtsxultra/b/p;

    invoke-static {v1}, Lcom/dts/dtsxultra/b/p;->h(Lcom/dts/dtsxultra/b/p;)Lcom/dts/dtssdk/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/p;->a(Lcom/dts/dtsxultra/b/p;Lcom/dts/dtssdk/a/a;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/dts/dtsxultra/b/p;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There is no audio route for this particular accessory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
