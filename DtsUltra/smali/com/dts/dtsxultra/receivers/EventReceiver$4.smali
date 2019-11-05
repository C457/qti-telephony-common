.class final Lcom/dts/dtsxultra/receivers/EventReceiver$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/receivers/EventReceiver;
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
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dts/dtssdk/a/j;

.field final synthetic c:Lcom/dts/dtsxultra/receivers/EventReceiver;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Lcom/dts/dtssdk/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$4;->c:Lcom/dts/dtsxultra/receivers/EventReceiver;

    iput-object p2, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$4;->b:Lcom/dts/dtssdk/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/f/a;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$4;->c:Lcom/dts/dtsxultra/receivers/EventReceiver;

    iget-object v2, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$4;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    iget-object v3, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$4;->b:Lcom/dts/dtssdk/a/j;

    invoke-static {v1, v2, v0, v3}, Lcom/dts/dtsxultra/receivers/EventReceiver;->a(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/a/j;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/receivers/EventReceiver;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Returned accessory list is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dts/dtsxultra/receivers/EventReceiver;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for accessory returned error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
