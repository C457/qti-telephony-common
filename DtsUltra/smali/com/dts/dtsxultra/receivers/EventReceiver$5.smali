.class final Lcom/dts/dtsxultra/receivers/EventReceiver$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/receivers/EventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dts/dtssdk/a/a;

.field final synthetic c:Lcom/dts/dtsxultra/receivers/EventReceiver;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Lcom/dts/dtssdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->c:Lcom/dts/dtsxultra/receivers/EventReceiver;

    iput-object p2, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->b:Lcom/dts/dtssdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tuning automatically set to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->b:Lcom/dts/dtssdk/a/a;

    iget-object v2, v2, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtsxultra/receivers/EventReceiver;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Audio Route = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->a:Landroid/content/Context;

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->b:Lcom/dts/dtssdk/a/a;

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->a:Landroid/content/Context;

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-static {v0, v1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->a:Landroid/content/Context;

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->b:Lcom/dts/dtssdk/a/a;

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/receivers/EventReceiver$5;->a:Landroid/content/Context;

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-static {v0, v1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dts/dtsxultra/receivers/EventReceiver;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting accessory returned error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
