.class final Landroid/support/v4/a/c$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/a/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/c;


# direct methods
.method constructor <init>(Landroid/support/v4/a/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/c$1;->a:Landroid/support/v4/a/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Landroid/support/v4/a/c$1;->a:Landroid/support/v4/a/c;

    :cond_0
    iget-object v1, v4, Landroid/support/v4/a/c;->b:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, v4, Landroid/support/v4/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-array v5, v0, [Landroid/support/v4/a/c$a;

    iget-object v0, v4, Landroid/support/v4/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, v4, Landroid/support/v4/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    :goto_1
    array-length v0, v5

    if-ge v1, v0, :cond_0

    aget-object v6, v5, v1

    iget-object v0, v6, Landroid/support/v4/a/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_3

    iget-object v0, v6, Landroid/support/v4/a/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/c$b;

    iget-boolean v8, v0, Landroid/support/v4/a/c$b;->d:Z

    if-nez v8, :cond_2

    iget-object v0, v0, Landroid/support/v4/a/c$b;->b:Landroid/content/BroadcastReceiver;

    iget-object v8, v4, Landroid/support/v4/a/c;->a:Landroid/content/Context;

    iget-object v9, v6, Landroid/support/v4/a/c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
