.class final Lcom/a/b/x$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/b/cb$a",
        "<[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/y;

.field final synthetic b:Lcom/a/b/z;

.field final synthetic c:Lcom/a/b/x;


# direct methods
.method constructor <init>(Lcom/a/b/x;Lcom/a/b/y;Lcom/a/b/z;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/x$2;->c:Lcom/a/b/x;

    iput-object p2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    iput-object p3, p0, Lcom/a/b/x$2;->b:Lcom/a/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/b/cb;Ljava/lang/Object;)V
    .locals 10

    const-wide/16 v6, 0x0

    const/16 v9, 0x12c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x3

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcom/a/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pulse report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    iget-object v4, v4, Lcom/a/b/y;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    iget-object v4, v4, Lcom/a/b/y;->g:Lcom/a/b/ac;

    iget-object v4, v4, Lcom/a/b/ac;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HTTP status code is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/a/b/cd;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v0, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/a/b/cd;->q:I

    iget-object v3, p0, Lcom/a/b/x$2;->b:Lcom/a/b/z;

    iget-wide v4, p1, Lcom/a/b/cd;->o:J

    long-to-int v4, v4

    if-gez v4, :cond_3

    iget-wide v4, v3, Lcom/a/b/z;->k:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    iput-wide v6, v3, Lcom/a/b/z;->k:J

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/a/b/x$2;->b:Lcom/a/b/z;

    iput v0, v3, Lcom/a/b/z;->e:I

    invoke-virtual {p1}, Lcom/a/b/cb;->b()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/a/b/cd;->p:Ljava/lang/Exception;

    iget-object v0, p1, Lcom/a/b/cd;->p:Ljava/lang/Exception;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/a/b/cd;->p:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iget-boolean v4, p1, Lcom/a/b/cd;->t:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/a/b/cb;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/a/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout occured when trying to connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    iget-object v2, v2, Lcom/a/b/y;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/a/b/cd;->p:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/a/b/x$2;->c:Lcom/a/b/x;

    iget-object v1, p0, Lcom/a/b/x$2;->b:Lcom/a/b/z;

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    invoke-static {v0, v1, v2}, Lcom/a/b/x;->a(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;)V

    :goto_3
    return-void

    :cond_3
    iget-wide v6, v3, Lcom/a/b/z;->k:J

    int-to-long v4, v4

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/a/b/z;->k:J

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/a/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Manually managed http request timeout occured for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    iget-object v2, v2, Lcom/a/b/y;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/a/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occured when trying to connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    iget-object v2, v2, Lcom/a/b/y;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/x$2;->c:Lcom/a/b/x;

    iget-object v1, p0, Lcom/a/b/x$2;->b:Lcom/a/b/z;

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    invoke-static {v0, v1, v2, p2}, Lcom/a/b/x;->a(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_7

    if-ge v0, v9, :cond_7

    iget-object v0, p0, Lcom/a/b/x$2;->c:Lcom/a/b/x;

    iget-object v1, p0, Lcom/a/b/x$2;->b:Lcom/a/b/z;

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    invoke-static {v0, v1, v2}, Lcom/a/b/x;->b(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;)V

    goto :goto_3

    :cond_7
    if-lt v0, v9, :cond_8

    const/16 v1, 0x190

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/a/b/x$2;->c:Lcom/a/b/x;

    iget-object v1, p0, Lcom/a/b/x$2;->b:Lcom/a/b/z;

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    invoke-static {v0, v1, v2, p1}, Lcom/a/b/x;->a(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;Lcom/a/b/cb;)V

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/a/b/x;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    iget-object v2, v2, Lcom/a/b/y;->g:Lcom/a/b/ac;

    iget-object v2, v2, Lcom/a/b/ac;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " report failed sending to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    iget-object v2, v2, Lcom/a/b/y;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/x$2;->c:Lcom/a/b/x;

    iget-object v1, p0, Lcom/a/b/x$2;->b:Lcom/a/b/z;

    iget-object v2, p0, Lcom/a/b/x$2;->a:Lcom/a/b/y;

    invoke-static {v0, v1, v2, p2}, Lcom/a/b/x;->a(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method
