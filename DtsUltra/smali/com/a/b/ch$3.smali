.class final Lcom/a/b/ch$3;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/a/b/ch;


# direct methods
.method constructor <init>(Lcom/a/b/ch;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ch$3;->d:Lcom/a/b/ch;

    iput-object p2, p0, Lcom/a/b/ch$3;->a:[B

    iput-object p3, p0, Lcom/a/b/ch$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/a/b/ch$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lcom/a/b/ch$3;->d:Lcom/a/b/ch;

    iget-object v1, p0, Lcom/a/b/ch$3;->a:[B

    iget-object v2, p0, Lcom/a/b/ch$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/b/ch$3;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/a/b/ch;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/a/b/ci;

    invoke-direct {v3, v1}, Lcom/a/b/ci;-><init>([B)V

    iget-object v1, v3, Lcom/a/b/ci;->a:Ljava/lang/String;

    new-instance v4, Lcom/a/b/bo;

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v5

    iget-object v5, v5, Lcom/a/b/bh;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/a/b/ci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v6, ".yflurrydatasenderblock."

    const/4 v7, 0x1

    new-instance v8, Lcom/a/b/ch$5;

    invoke-direct {v8, v0}, Lcom/a/b/ch$5;-><init>(Lcom/a/b/ch;)V

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/a/b/bo;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/a/b/cr;)V

    invoke-virtual {v4, v3}, Lcom/a/b/bo;->a(Ljava/lang/Object;)V

    const/4 v4, 0x5

    iget-object v5, v0, Lcom/a/b/ch;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Saving Block File "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v7

    iget-object v7, v7, Lcom/a/b/bh;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/a/b/ci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/a/b/ch;->d:Lcom/a/b/cj;

    invoke-virtual {v0, v3, v2}, Lcom/a/b/cj;->a(Lcom/a/b/ci;Ljava/lang/String;)V

    return-void
.end method
