.class final Lcom/dts/dtssdk/a/h$c;
.super Lcom/dts/dtssdk/a/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/dts/dtssdk/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic e:Lcom/dts/dtssdk/a/h;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Lcom/dts/dtssdk/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/a/h$b;-><init>(Lcom/dts/dtssdk/a/h;)V

    iput-object p2, p0, Lcom/dts/dtssdk/a/h$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dts/dtssdk/a/h$c;->b:Lcom/dts/dtssdk/c/a;

    const/4 v0, 0x2

    iput v0, p0, Lcom/dts/dtssdk/a/h$c;->c:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0x16

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    :try_start_0
    iget v0, p0, Lcom/dts/dtssdk/a/h$c;->c:I

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v1

    const/16 v2, 0x16

    new-instance v3, Lcom/dts/dtssdk/a/h$f;

    iget-object v4, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    new-instance v5, Lcom/dts/dtssdk/f/a;

    sget-object v6, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v5, v6}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    iget-object v6, p0, Lcom/dts/dtssdk/a/h$c;->b:Lcom/dts/dtssdk/c/a;

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/b;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    iget-object v0, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/b;->c()Lcom/dts/dtssdk/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/h$c;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/dts/dtssdk/a/h$c;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dts/dtssdk/a/h$c;->c:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v1

    const/16 v2, 0x16

    new-instance v3, Lcom/dts/dtssdk/a/h$f;

    iget-object v4, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    new-instance v5, Lcom/dts/dtssdk/f/a;

    sget-object v6, Lcom/dts/dtssdk/f/a$a;->y:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v5, v6}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    iget-object v6, p0, Lcom/dts/dtssdk/a/h$c;->b:Lcom/dts/dtssdk/c/a;

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while reading from datastore for error checking"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/a/h$f;

    iget-object v2, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    new-instance v3, Lcom/dts/dtssdk/f/a;

    sget-object v4, Lcom/dts/dtssdk/f/a$a;->h:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v3, v4}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dts/dtssdk/a/h$c;->b:Lcom/dts/dtssdk/c/a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v1}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/dts/dtssdk/a/h$c;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/b;->a()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_2
.end method
