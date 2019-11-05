.class final Lcom/dts/dtssdk/DtsCore$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtssdk/DtsCore$b;->a([Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
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
.field final synthetic a:[Lcom/dts/dtssdk/a/j;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/dts/dtssdk/DtsCore$b;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/DtsCore$b;[Lcom/dts/dtssdk/a/j;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/DtsCore$b$1;->c:Lcom/dts/dtssdk/DtsCore$b;

    iput-object p2, p0, Lcom/dts/dtssdk/DtsCore$b$1;->a:[Lcom/dts/dtssdk/a/j;

    iput-object p3, p0, Lcom/dts/dtssdk/DtsCore$b$1;->b:Ljava/util/concurrent/CountDownLatch;

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

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$b$1;->c:Lcom/dts/dtssdk/DtsCore$b;

    invoke-static {v0}, Lcom/dts/dtssdk/DtsCore$b;->a(Lcom/dts/dtssdk/DtsCore$b;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$b$1;->c:Lcom/dts/dtssdk/DtsCore$b;

    iget-object v0, v0, Lcom/dts/dtssdk/DtsCore$b;->a:Lcom/dts/dtssdk/DtsCore;

    iget-object v1, p0, Lcom/dts/dtssdk/DtsCore$b$1;->a:[Lcom/dts/dtssdk/a/j;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/dts/dtssdk/DtsCore$b$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p2, v2}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/DtsCore;Lcom/dts/dtssdk/a/j;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0
.end method
