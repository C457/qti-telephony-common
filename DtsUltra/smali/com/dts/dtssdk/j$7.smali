.class final Lcom/dts/dtssdk/j$7;
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
        "<[I>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/j;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/j$7;->a:Lcom/dts/dtssdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/dts/dtssdk/j;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling getGEQGainAll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtssdk/j$7;->a:Lcom/dts/dtssdk/j;

    invoke-static {v0}, Lcom/dts/dtssdk/j;->a(Lcom/dts/dtssdk/j;)Lcom/dts/dtssdk/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/dts/dtssdk/d;->c()Lcom/dts/dtssdk/o;

    move-result-object v2

    invoke-static {}, Lcom/dts/dtssdk/j;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getAllGEQGains from IPC returned result: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dts/dtssdk/o;->b()Lcom/dts/dtssdk/f/a$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, [I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/j;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "getGEQGainAll value ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v2, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    check-cast v0, [I

    aget v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method
