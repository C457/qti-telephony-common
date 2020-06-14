.class public final Lcom/dts/dtssdk/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/dts/dtssdk/util/a;

.field final synthetic e:Lcom/dts/dtssdk/a/j;

.field final synthetic f:Lcom/dts/dtssdk/c/b;

.field final synthetic g:Lcom/dts/dtssdk/i;


# direct methods
.method public constructor <init>(Lcom/dts/dtssdk/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/i$1;->g:Lcom/dts/dtssdk/i;

    iput-object p2, p0, Lcom/dts/dtssdk/i$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dts/dtssdk/i$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dts/dtssdk/i$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/dts/dtssdk/i$1;->d:Lcom/dts/dtssdk/util/a;

    iput-object p6, p0, Lcom/dts/dtssdk/i$1;->e:Lcom/dts/dtssdk/a/j;

    iput-object p7, p0, Lcom/dts/dtssdk/i$1;->f:Lcom/dts/dtssdk/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 7

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/i;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting device name! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/dts/dtssdk/i$1;->g:Lcom/dts/dtssdk/i;

    invoke-static {v0, p2}, Lcom/dts/dtssdk/i;->a(Lcom/dts/dtssdk/i;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/dts/dtssdk/i$a;

    iget-object v1, p0, Lcom/dts/dtssdk/i$1;->g:Lcom/dts/dtssdk/i;

    iget-object v2, p0, Lcom/dts/dtssdk/i$1;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dts/dtssdk/i$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dts/dtssdk/i$1;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dts/dtssdk/i$1;->d:Lcom/dts/dtssdk/util/a;

    iget-object v5, p0, Lcom/dts/dtssdk/i$1;->e:Lcom/dts/dtssdk/a/j;

    iget-object v6, p0, Lcom/dts/dtssdk/i$1;->f:Lcom/dts/dtssdk/c/b;

    invoke-direct/range {v0 .. v6}, Lcom/dts/dtssdk/i$a;-><init>(Lcom/dts/dtssdk/i;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtssdk/i$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
