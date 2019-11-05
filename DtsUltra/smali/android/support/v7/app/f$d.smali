.class final Landroid/support/v7/app/f$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field a:Landroid/support/v7/app/k;

.field b:Z

.field c:Landroid/content/BroadcastReceiver;

.field d:Landroid/content/IntentFilter;

.field final synthetic e:Landroid/support/v7/app/f;


# direct methods
.method constructor <init>(Landroid/support/v7/app/f;Landroid/support/v7/app/k;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/app/f$d;->e:Landroid/support/v7/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/f$d;->a:Landroid/support/v7/app/k;

    invoke-virtual {p2}, Landroid/support/v7/app/k;->a()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/app/f$d;->b:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/f$d;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/f$d;->e:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->b:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/f$d;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/f$d;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
