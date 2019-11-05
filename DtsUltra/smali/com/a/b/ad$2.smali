.class final Lcom/a/b/ad$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/ad;->a([B)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/ad;


# direct methods
.method constructor <init>(Lcom/a/b/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ad$2;->a:Lcom/a/b/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/b/cb;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x3

    iget v0, p1, Lcom/a/b/cd;->q:I

    if-lez v0, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/a/b/ad;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pulse logging report sent successfully HTTP response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/ad$2;->a:Lcom/a/b/ad;

    invoke-static {v0}, Lcom/a/b/ad;->a(Lcom/a/b/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/a/b/ad$2;->a:Lcom/a/b/ad;

    invoke-static {v0}, Lcom/a/b/ad;->b(Lcom/a/b/ad;)Lcom/a/b/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/ad$2;->a:Lcom/a/b/ad;

    invoke-static {v1}, Lcom/a/b/ad;->a(Lcom/a/b/ad;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/bo;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/a/b/ad;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pulse logging report sent unsuccessfully, HTTP response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/a/b/ad;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
