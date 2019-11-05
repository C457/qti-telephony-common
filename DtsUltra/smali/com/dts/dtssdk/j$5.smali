.class final Lcom/dts/dtssdk/j$5;
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
        "Lcom/dts/dtssdk/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/dts/dtssdk/j;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/j;[I)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/j$5;->b:Lcom/dts/dtssdk/j;

    iput-object p2, p0, Lcom/dts/dtssdk/j$5;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/dts/dtssdk/j;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Calling setGEQGainAll:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/dts/dtssdk/j$5;->a:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    invoke-static {}, Lcom/dts/dtssdk/j;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "eagleGainArray["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/j$5;->b:Lcom/dts/dtssdk/j;

    invoke-static {v0}, Lcom/dts/dtssdk/j;->a(Lcom/dts/dtssdk/j;)Lcom/dts/dtssdk/d;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/j$5;->a:[I

    invoke-interface {v0, v1}, Lcom/dts/dtssdk/d;->a([I)Lcom/dts/dtssdk/o;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/j;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setGEQGainAll from IPC returned result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dts/dtssdk/o;->b()Lcom/dts/dtssdk/f/a$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
