.class public Lcom/dts/dtsxultra/util/AccessoryNotificationManager$NotificationReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/util/AccessoryNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dts.dtsxultra.intent.action.TOGGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "dts.dtsxultra.intent.action.EXPAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string v1, "dts.dtsxultra.intent.action.COLLAPSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "dts.dtsxultra.intent.action.CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v1, "dts.dtsxultra.intent.action.WIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/a/n;->b:Lcom/dts/dtssdk/a/n;

    invoke-static {v0, p1, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V

    goto :goto_0

    :cond_5
    const-string v1, "dts.dtsxultra.intent.action.FRONT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/a/n;->c:Lcom/dts/dtssdk/a/n;

    invoke-static {v0, p1, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V

    goto :goto_0

    :cond_6
    const-string v1, "dts.dtsxultra.intent.action.TRADITIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/a/n;->d:Lcom/dts/dtssdk/a/n;

    invoke-static {v0, p1, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V

    goto :goto_0

    :cond_7
    const-string v1, "dts.dtsxultra.intent.action.DISMISS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dts/dtsxultra/util/f;->c(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method
