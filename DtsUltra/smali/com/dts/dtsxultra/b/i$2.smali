.class final Lcom/dts/dtsxultra/b/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/i;
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
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/i;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/i$2;->a:Lcom/dts/dtsxultra/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/dts/dtssdk/a/a;

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$2;->a:Lcom/dts/dtsxultra/b/i;

    invoke-virtual {v0, p1}, Lcom/dts/dtsxultra/b/i;->a(Lcom/dts/dtssdk/f/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/i;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for inbox accessories returned error: "

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

    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$2;->a:Lcom/dts/dtsxultra/b/i;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/i;->a(Lcom/dts/dtsxultra/b/i;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/dts/dtsxultra/b/i;->R()Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$2;->a:Lcom/dts/dtsxultra/b/i;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/i;->c(Lcom/dts/dtsxultra/b/i;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/i$2;->a:Lcom/dts/dtsxultra/b/i;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/i;->b(Lcom/dts/dtsxultra/b/i;)Lcom/dts/dtsxultra/views/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtssdk/a/a;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/i;->R()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding In-box headphone to list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
