.class final Lcom/dts/dtssdk/j$18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/dts/dtssdk/o",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/dts/dtssdk/j;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/j;II)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/j$18;->c:Lcom/dts/dtssdk/j;

    iput p2, p0, Lcom/dts/dtssdk/j$18;->a:I

    iput p3, p0, Lcom/dts/dtssdk/j$18;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/dts/dtssdk/j;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling getDialogLevel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtssdk/j$18;->c:Lcom/dts/dtssdk/j;

    invoke-static {v0}, Lcom/dts/dtssdk/j;->a(Lcom/dts/dtssdk/j;)Lcom/dts/dtssdk/d;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtssdk/j$18;->a:I

    iget v2, p0, Lcom/dts/dtssdk/j$18;->b:I

    invoke-interface {v0, v1, v2}, Lcom/dts/dtssdk/d;->f(II)Lcom/dts/dtssdk/o;

    move-result-object v1

    invoke-static {}, Lcom/dts/dtssdk/j;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getDialogLevel from IPC returned result: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/dts/dtssdk/o;->b()Lcom/dts/dtssdk/f/a$a;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dts/dtssdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "dialogLevel: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
