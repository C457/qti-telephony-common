.class final Lcom/dts/dtsxultra/b/l$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/l;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$2;->a:Lcom/dts/dtsxultra/b/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$2;->a:Lcom/dts/dtsxultra/b/l;

    const-string v1, "usbDeviceIdentifier"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "accessoryUuid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/l;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/dts/dtsxultra/util/e;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/dts/dtssdk/a/a/a;

    sget v4, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v3, v4, v1}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    invoke-virtual {v0}, Lcom/dts/dtsxultra/b/l;->d()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/dts/dtsxultra/b/l$3;

    invoke-direct {v3, v0}, Lcom/dts/dtsxultra/b/l$3;-><init>(Lcom/dts/dtsxultra/b/l;)V

    invoke-static {v1, v2, v3}, Lcom/dts/dtssdk/a/e;->e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    :cond_0
    return-void
.end method
