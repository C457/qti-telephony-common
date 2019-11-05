.class final Landroid/support/v7/app/f$d$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/f$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/f$d;


# direct methods
.method constructor <init>(Landroid/support/v7/app/f$d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/f$d$1;->a:Landroid/support/v7/app/f$d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/app/f$d$1;->a:Landroid/support/v7/app/f$d;

    iget-object v1, v0, Landroid/support/v7/app/f$d;->a:Landroid/support/v7/app/k;

    invoke-virtual {v1}, Landroid/support/v7/app/k;->a()Z

    move-result v1

    iget-boolean v2, v0, Landroid/support/v7/app/f$d;->b:Z

    if-eq v1, v2, :cond_0

    iput-boolean v1, v0, Landroid/support/v7/app/f$d;->b:Z

    iget-object v0, v0, Landroid/support/v7/app/f$d;->e:Landroid/support/v7/app/f;

    invoke-virtual {v0}, Landroid/support/v7/app/f;->j()Z

    :cond_0
    return-void
.end method
