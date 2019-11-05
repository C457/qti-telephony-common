.class final Lcom/dts/dtssdk/a/h$k;
.super Lcom/dts/dtssdk/a/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Lcom/dts/dtssdk/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/dts/dtssdk/a/h;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/a/h$b;-><init>(Lcom/dts/dtssdk/a/h;)V

    iput-object p2, p0, Lcom/dts/dtssdk/a/h$k;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dts/dtssdk/a/h$k;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dts/dtssdk/a/h$k;->c:Lcom/dts/dtssdk/c/c;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    const/4 v9, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/h$k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v1

    const/4 v4, 0x5

    new-instance v5, Lcom/dts/dtssdk/a/h$f;

    iget-object v6, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    new-instance v7, Lcom/dts/dtssdk/f/a;

    sget-object v8, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v7, v8}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    iget-object v8, p0, Lcom/dts/dtssdk/a/h$k;->c:Lcom/dts/dtssdk/c/c;

    invoke-direct {v5, v6, v7, v0, v8}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v5}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SpeakerMode query took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/dts/dtssdk/a/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while reading from datastore"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/b;->c()Lcom/dts/dtssdk/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/h$k;->a:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/dts/dtssdk/a/h$k;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    invoke-static {v0}, Lcom/dts/dtssdk/a/h;->a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/h$k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v1

    const/4 v4, 0x5

    new-instance v5, Lcom/dts/dtssdk/a/h$f;

    iget-object v6, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    new-instance v7, Lcom/dts/dtssdk/f/a;

    sget-object v8, Lcom/dts/dtssdk/f/a$a;->y:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v7, v8}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    iget-object v8, p0, Lcom/dts/dtssdk/a/h$k;->c:Lcom/dts/dtssdk/c/c;

    invoke-direct {v5, v6, v7, v0, v8}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4, v5}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

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

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/a/h;->c()Lcom/dts/dtssdk/a/h$e;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/a/h$f;

    iget-object v4, p0, Lcom/dts/dtssdk/a/h$k;->e:Lcom/dts/dtssdk/a/h;

    new-instance v5, Lcom/dts/dtssdk/f/a;

    sget-object v6, Lcom/dts/dtssdk/f/a$a;->h:Lcom/dts/dtssdk/f/a$a;

    const-string v7, "Unknown datastore"

    invoke-direct {v5, v6, v7}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/dts/dtssdk/a/h$k;->c:Lcom/dts/dtssdk/c/c;

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/dts/dtssdk/a/h$f;-><init>(Lcom/dts/dtssdk/a/h;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9, v1}, Lcom/dts/dtssdk/a/h$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
