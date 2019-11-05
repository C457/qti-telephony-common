.class final Lcom/dts/dtsxultra/b/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/b;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dts/dtsxultra/b/b;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/b$7;->b:Lcom/dts/dtsxultra/b/b;

    iput-object p2, p0, Lcom/dts/dtsxultra/b/b$7;->a:Ljava/lang/String;

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
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$7;->b:Lcom/dts/dtsxultra/b/b;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dts/dtsxultra/b/b;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while checking if headphone exists in the datastore. Error result: "

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$7;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->b(Lcom/dts/dtsxultra/b/b;)Lcom/dts/dtsxultra/views/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$7;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->d(Lcom/dts/dtsxultra/b/b;)Landroid/support/v4/app/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/b$7;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/a;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/b;->R()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Saving new branded headphone to: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtsxultra/b/b;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$7;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->h(Lcom/dts/dtsxultra/b/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dts/dtsxultra/b/b;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Returned list is either null or empty (or more than one)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtsxultra/b/b;->R()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The selected headphone does not exist in the database. Showing no selection in the UI"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$7;->b:Lcom/dts/dtsxultra/b/b;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/b$7;->b:Lcom/dts/dtsxultra/b/b;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/b;->b(Lcom/dts/dtsxultra/b/b;)Lcom/dts/dtsxultra/views/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtsxultra/views/a;->notifyDataSetChanged()V

    goto :goto_0
.end method
