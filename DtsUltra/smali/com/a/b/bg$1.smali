.class final Lcom/a/b/bg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/bq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/bg;
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
        "Lcom/a/b/ct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/bg;


# direct methods
.method constructor <init>(Lcom/a/b/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/bg$1;->a:Lcom/a/b/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/b/bp;)V
    .locals 9

    const/4 v8, 0x3

    check-cast p1, Lcom/a/b/ct;

    iget-object v0, p0, Lcom/a/b/bg$1;->a:Lcom/a/b/bg;

    invoke-static {v0}, Lcom/a/b/bg;->a(Lcom/a/b/bg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/a/b/ct;->b:Lcom/a/b/cs;

    iget-object v1, p0, Lcom/a/b/bg$1;->a:Lcom/a/b/bg;

    invoke-static {v1}, Lcom/a/b/bg;->a(Lcom/a/b/bg;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/a/b/bg$4;->a:[I

    iget v1, p1, Lcom/a/b/ct;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/a/b/bg$1;->a:Lcom/a/b/bg;

    iget-object v2, p1, Lcom/a/b/ct;->b:Lcom/a/b/cs;

    iget-object v0, p1, Lcom/a/b/ct;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/a/b/bg;->b:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/a/b/bg;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/a/b/bg;->d:J

    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/a/b/bg;->a:Ljava/lang/String;

    const-string v2, "Flurry session id cannot be created."

    invoke-static {v8, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v2, Lcom/a/b/bg$3;

    invoke-direct {v2, v1}, Lcom/a/b/bg$3;-><init>(Lcom/a/b/bg;)V

    invoke-virtual {v0, v2}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/a/b/bg;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flurry session id started:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/a/b/bg;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/a/b/ct;

    invoke-direct {v3}, Lcom/a/b/ct;-><init>()V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/a/b/ct;->a:Ljava/lang/ref/WeakReference;

    iput-object v2, v3, Lcom/a/b/ct;->b:Lcom/a/b/cs;

    sget v0, Lcom/a/b/ct$a;->b:I

    iput v0, v3, Lcom/a/b/ct;->d:I

    invoke-virtual {v3}, Lcom/a/b/ct;->b()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/a/b/bg$1;->a:Lcom/a/b/bg;

    iget-object v1, p1, Lcom/a/b/ct;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/a/b/bg;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/a/b/bg$1;->a:Lcom/a/b/bg;

    iget-object v1, p1, Lcom/a/b/ct;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/a/b/bg;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/a/b/bg;->e:J

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/a/b/bg$1;->a:Lcom/a/b/bg;

    invoke-static {v2}, Lcom/a/b/bg;->b(Lcom/a/b/bg;)Lcom/a/b/bq;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/b/br;->b(Ljava/lang/String;Lcom/a/b/bq;)V

    invoke-static {}, Lcom/a/b/bg;->b()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
