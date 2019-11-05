.class final Lcom/dts/dtssdk/a/h$a;
.super Lcom/dts/dtssdk/a/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/dts/dtssdk/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Lcom/dts/dtssdk/a/f;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/dts/dtssdk/a/h;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Lcom/dts/dtssdk/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Lcom/dts/dtssdk/a/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dts/dtssdk/a/h$a;->c:Lcom/dts/dtssdk/a/h;

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/a/h$b;-><init>(Lcom/dts/dtssdk/a/h;)V

    iput-object p2, p0, Lcom/dts/dtssdk/a/h$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dts/dtssdk/a/h$a;->b:Lcom/dts/dtssdk/c/a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 9

    const/16 v8, 0x209

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/a/h$a;->c:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/b;->c()Lcom/dts/dtssdk/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/h$a;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/dts/dtssdk/a/h$a;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/f;)Z

    iget-object v1, p0, Lcom/dts/dtssdk/a/h$a;->b:Lcom/dts/dtssdk/c/a;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v1

    const/16 v2, 0x209

    new-instance v3, Lcom/dts/dtssdk/a/h$f;

    iget-object v4, p0, Lcom/dts/dtssdk/a/h$a;->c:Lcom/dts/dtssdk/a/h;

    new-instance v5, Lcom/dts/dtssdk/f/a;

    sget-object v6, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    const-string v7, "Database health check completed"

    invoke-direct {v5, v6, v7}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/dts/dtssdk/a/h$a;->b:Lcom/dts/dtssdk/c/a;

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while running database health check"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtssdk/a/h$a;->b:Lcom/dts/dtssdk/c/a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/a/h$f;

    iget-object v2, p0, Lcom/dts/dtssdk/a/h$a;->c:Lcom/dts/dtssdk/a/h;

    new-instance v3, Lcom/dts/dtssdk/f/a;

    sget-object v4, Lcom/dts/dtssdk/f/a$a;->h:Lcom/dts/dtssdk/f/a$a;

    const-string v5, "Database health check failed"

    invoke-direct {v3, v4, v5}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dts/dtssdk/a/h$a;->b:Lcom/dts/dtssdk/c/a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v8, v1}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
