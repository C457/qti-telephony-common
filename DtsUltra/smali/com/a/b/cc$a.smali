.class final Lcom/a/b/cc$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/cc;


# direct methods
.method private constructor <init>(Lcom/a/b/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/cc$a;->a:Lcom/a/b/cc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/b/cc;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/b/cc$a;-><init>(Lcom/a/b/cc;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x3

    invoke-static {}, Lcom/a/b/cc;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpRequest timed out. Cancelling."

    invoke-static {v6, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/cc$a;->a:Lcom/a/b/cc;

    invoke-static {v0}, Lcom/a/b/cc;->a(Lcom/a/b/cc;)Lcom/a/b/cd;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/a/b/cd;->n:J

    sub-long/2addr v2, v4

    sget-object v1, Lcom/a/b/cd;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Timeout ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MS) for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/a/b/cd;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x275

    iput v1, v0, Lcom/a/b/cd;->q:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/a/b/cd;->t:Z

    invoke-virtual {v0}, Lcom/a/b/cd;->e()V

    invoke-virtual {v0}, Lcom/a/b/cd;->f()V

    return-void
.end method
