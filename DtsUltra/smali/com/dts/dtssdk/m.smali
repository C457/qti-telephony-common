.class public final Lcom/dts/dtssdk/m;
.super Lcom/dts/dtssdk/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/m$b;,
        Lcom/dts/dtssdk/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dts/dtssdk/b/e",
        "<",
        "Lcom/dts/dtssdk/m$a;",
        "Lcom/dts/dtssdk/m$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/m$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtssdk/b/e;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dts/dtssdk/a/a;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/m$b;->a:Lcom/dts/dtssdk/m$b;

    const-string v1, "null"

    invoke-super {p0, v0, v1}, Lcom/dts/dtssdk/b/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dts/dtssdk/m$b;->a:Lcom/dts/dtssdk/m$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/dts/dtssdk/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/dts/dtssdk/b/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/dts/dtssdk/util/a;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/m$b;->e:Lcom/dts/dtssdk/m$b;

    const-string v1, "null"

    invoke-super {p0, v0, v1}, Lcom/dts/dtssdk/b/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dts/dtssdk/m$b;->e:Lcom/dts/dtssdk/m$b;

    invoke-virtual {p1}, Lcom/dts/dtssdk/util/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/dts/dtssdk/b/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
