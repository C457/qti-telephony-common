.class final Landroid/support/design/widget/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/j;


# direct methods
.method constructor <init>(Landroid/support/design/widget/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/j$1;->a:Landroid/support/design/widget/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Landroid/support/design/widget/j$1;->a:Landroid/support/design/widget/j;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/j$b;

    iget-object v2, v1, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    if-eq v3, v0, :cond_0

    iget-object v3, v1, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    if-ne v3, v0, :cond_1

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;I)Z

    :cond_1
    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
