.class final Lcom/a/b/cu$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/bq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/b/bq",
        "<",
        "Lcom/a/b/bk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/cu;


# direct methods
.method constructor <init>(Lcom/a/b/cu;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/cu$2;->a:Lcom/a/b/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/b/bp;)V
    .locals 5

    const/4 v4, 0x3

    check-cast p1, Lcom/a/b/bk;

    iget-object v0, p1, Lcom/a/b/bk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/a/b/cu;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity has been destroyed, can\'t pass ActivityLifecycleEvent to adobject."

    invoke-static {v0, v1}, Lcom/a/b/bv;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/a/b/cu$5;->a:[I

    iget v2, p1, Lcom/a/b/bk;->b:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/a/b/cu;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Automatic onStartSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/a/b/bk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/cu$2;->a:Lcom/a/b/cu;

    invoke-static {v1, v0}, Lcom/a/b/cu;->a(Lcom/a/b/cu;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/a/b/cu;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Automatic onEndSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/a/b/bk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/cu$2;->a:Lcom/a/b/cu;

    invoke-virtual {v1, v0}, Lcom/a/b/cu;->b(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/a/b/cu;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Automatic onEndSession (destroyed) for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/a/b/bk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/cu$2;->a:Lcom/a/b/cu;

    invoke-virtual {v1, v0}, Lcom/a/b/cu;->b(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
