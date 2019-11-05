.class final Lcom/dts/dtssdk/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V
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
        "Lcom/dts/dtssdk/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/c/b;

.field final synthetic b:Lcom/dts/dtssdk/g;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/g;Lcom/dts/dtssdk/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/g$4;->b:Lcom/dts/dtssdk/g;

    iput-object p2, p0, Lcom/dts/dtssdk/g$4;->a:Lcom/dts/dtssdk/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/dts/dtssdk/a/l;

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/g;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Getting SpeakerMode selection failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtssdk/g;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DTS returned error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

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
    if-eqz p2, :cond_2

    new-instance v0, Lcom/dts/dtssdk/a/j;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/j;-><init>()V

    iput-object p2, v0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    new-instance v1, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v1, v2, v0}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dts/dtssdk/g$4;->a:Lcom/dts/dtssdk/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/g$4;->a:Lcom/dts/dtssdk/c/b;

    invoke-interface {v0, v1}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dts/dtssdk/g$4;->a:Lcom/dts/dtssdk/c/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtssdk/g$4;->a:Lcom/dts/dtssdk/c/b;

    invoke-interface {v1, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_0
.end method
