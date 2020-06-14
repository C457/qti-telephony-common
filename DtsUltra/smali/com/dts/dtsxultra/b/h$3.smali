.class final Lcom/dts/dtsxultra/b/h$3;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/h;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/h$3;->a:Lcom/dts/dtsxultra/b/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.dts.HEADPHONE_X_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$3;->a:Lcom/dts/dtsxultra/b/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/h;->d(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/h$3;->a:Lcom/dts/dtsxultra/b/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/h;->d(Z)V

    goto :goto_0
.end method
