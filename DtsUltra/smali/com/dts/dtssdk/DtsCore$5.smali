.class final Lcom/dts/dtssdk/DtsCore$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/DtsCore;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dts/dtssdk/DtsCore;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/DtsCore$5;->b:Lcom/dts/dtssdk/DtsCore;

    iput-object p2, p0, Lcom/dts/dtssdk/DtsCore$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/dts/dtssdk/a/a;

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for inbox accessories on Bluetooth returned error: "

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->l()Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->l()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detected In-box headphone with Bluetooth route: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-static {p2, v0}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->l()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtssdk/DtsCore$5;->b:Lcom/dts/dtssdk/DtsCore;

    iget-object v1, p0, Lcom/dts/dtssdk/DtsCore$5;->a:Landroid/content/Context;

    sget-object v2, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-static {v0, v1, p2, v2}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/util/a;)V

    goto :goto_0
.end method
