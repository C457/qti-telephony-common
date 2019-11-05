.class final Lcom/dts/dtssdk/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V
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

.field final synthetic b:Lcom/dts/dtssdk/c/b;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/dts/dtssdk/a/j;

.field final synthetic e:Lcom/dts/dtssdk/util/a;

.field final synthetic f:Lcom/dts/dtssdk/g;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/g;Ljava/lang/String;Lcom/dts/dtssdk/c/b;Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/g$2;->f:Lcom/dts/dtssdk/g;

    iput-object p2, p0, Lcom/dts/dtssdk/g$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dts/dtssdk/g$2;->b:Lcom/dts/dtssdk/c/b;

    iput-object p4, p0, Lcom/dts/dtssdk/g$2;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/dts/dtssdk/g$2;->d:Lcom/dts/dtssdk/a/j;

    iput-object p6, p0, Lcom/dts/dtssdk/g$2;->e:Lcom/dts/dtssdk/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
    .locals 5
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/g;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Datastore returned error while trying to get accessory of UUID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dts/dtssdk/g$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtssdk/g$2;->b:Lcom/dts/dtssdk/c/b;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    new-instance p1, Lcom/dts/dtssdk/f/a;

    sget-object v0, Lcom/dts/dtssdk/f/a$a;->h:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {p1, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v0, "Error while querying datastore for accessory"

    iput-object v0, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/dts/dtssdk/g$2;->b:Lcom/dts/dtssdk/c/b;

    invoke-interface {v0, p1}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/dts/dtssdk/g;->l()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Accessory with UUID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtssdk/g$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist in DB. Aborting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dts/dtssdk/g$2;->b:Lcom/dts/dtssdk/c/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dts/dtssdk/g$2;->b:Lcom/dts/dtssdk/c/b;

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->i:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v2, "Accessory not found in DB"

    iput-object v2, v1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    invoke-static {}, Lcom/dts/dtssdk/g;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple accessories with UUID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dts/dtssdk/g$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found. Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtssdk/g$2;->b:Lcom/dts/dtssdk/c/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dts/dtssdk/g$2;->b:Lcom/dts/dtssdk/c/b;

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->q:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v2, "Bad data detected in DB"

    iput-object v2, v1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    iget-object v1, p0, Lcom/dts/dtssdk/g$2;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dts/dtssdk/g$2;->d:Lcom/dts/dtssdk/a/j;

    iget-object v3, p0, Lcom/dts/dtssdk/g$2;->e:Lcom/dts/dtssdk/util/a;

    iget-object v4, p0, Lcom/dts/dtssdk/g$2;->b:Lcom/dts/dtssdk/c/b;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/c/b;)V

    goto/16 :goto_0
.end method
