.class final Lcom/a/b/cb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/cb;


# direct methods
.method constructor <init>(Lcom/a/b/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    invoke-static {v0}, Lcom/a/b/cb;->d(Lcom/a/b/cb;)V

    return-void
.end method

.method public final a(Lcom/a/b/cd;Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/b/cd;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    invoke-static {v0}, Lcom/a/b/cb;->c(Lcom/a/b/cb;)Lcom/a/b/cp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    iget-object v1, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    invoke-static {v1}, Lcom/a/b/cb;->c(Lcom/a/b/cb;)Lcom/a/b/cp;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/a/b/cp;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/cb;->a(Lcom/a/b/cb;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    invoke-static {v0}, Lcom/a/b/cb;->a(Lcom/a/b/cb;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    invoke-static {v0}, Lcom/a/b/cb;->b(Lcom/a/b/cb;)Lcom/a/b/cp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    invoke-static {v0}, Lcom/a/b/cb;->b(Lcom/a/b/cb;)Lcom/a/b/cp;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/cb$1;->a:Lcom/a/b/cb;

    invoke-static {v1}, Lcom/a/b/cb;->a(Lcom/a/b/cb;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/a/b/cp;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
