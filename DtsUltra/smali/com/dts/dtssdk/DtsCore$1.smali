.class final Lcom/dts/dtssdk/DtsCore$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/DtsCore;
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
        "Lcom/dts/dtssdk/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/dts/dtssdk/c/c;

.field final synthetic c:Lcom/dts/dtssdk/DtsCore;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/DtsCore;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/DtsCore$1;->c:Lcom/dts/dtssdk/DtsCore;

    iput-object p2, p0, Lcom/dts/dtssdk/DtsCore$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/dts/dtssdk/DtsCore$1;->b:Lcom/dts/dtssdk/c/c;

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
            "Lcom/dts/dtssdk/a/l;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for speaker mode returned error: "

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

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/l;

    iget-object v2, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/dts/dtssdk/a/j;->a(Ljava/lang/String;)Lcom/dts/dtssdk/util/d;

    move-result-object v2

    invoke-static {v2}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/dts/dtssdk/a/j;

    invoke-direct {v2}, Lcom/dts/dtssdk/a/j;-><init>()V

    iput-object v0, v2, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$1;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$1;->b:Lcom/dts/dtssdk/c/c;

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    iget-object v2, p0, Lcom/dts/dtssdk/DtsCore$1;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    goto :goto_0
.end method
