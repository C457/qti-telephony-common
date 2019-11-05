.class final Lcom/dts/dtssdk/DtsCore$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtssdk/DtsCore$a;->a()Lcom/dts/dtssdk/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/dts/dtssdk/DtsCore$a;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/DtsCore$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/DtsCore$a$2;->b:Lcom/dts/dtssdk/DtsCore$a;

    iput-object p2, p0, Lcom/dts/dtssdk/DtsCore$a$2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a$2;->b:Lcom/dts/dtssdk/DtsCore$a;

    invoke-static {v0}, Lcom/dts/dtssdk/DtsCore$a;->a(Lcom/dts/dtssdk/DtsCore$a;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reapplying bluetooth accessory failed! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a$2;->b:Lcom/dts/dtssdk/DtsCore$a;

    invoke-static {v0}, Lcom/dts/dtssdk/DtsCore$a;->b(Lcom/dts/dtssdk/DtsCore$a;)I

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$a$2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
