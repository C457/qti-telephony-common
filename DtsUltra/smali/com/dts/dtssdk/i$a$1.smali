.class final Lcom/dts/dtssdk/i$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtssdk/i$a;->a()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/a",
        "<",
        "Lcom/dts/dtssdk/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/dts/dtssdk/i$a;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/i$a;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/i$a$1;->c:Lcom/dts/dtssdk/i$a;

    iput-object p2, p0, Lcom/dts/dtssdk/i$a$1;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/dts/dtssdk/i$a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/dts/dtssdk/a/f;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/i$a$1;->a:Ljava/lang/StringBuilder;

    const-string v1, "DB check error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/dts/dtssdk/i$a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/i$a$1;->a:Ljava/lang/StringBuilder;

    const-string v1, "DB check"

    invoke-virtual {p2}, Lcom/dts/dtssdk/a/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/dts/dtssdk/i;->a(Ljava/lang/String;Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
