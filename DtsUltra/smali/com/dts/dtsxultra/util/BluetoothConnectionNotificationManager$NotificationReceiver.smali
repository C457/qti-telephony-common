.class public Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;
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
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dts.dtsxultra.intent.action.OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver$1;-><init>(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "dts.dtsxultra.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto :goto_0

    :cond_3
    const-string v1, "dts.dtsxultra.intent.action.CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto :goto_0

    :cond_4
    const-string v1, "dts.dtsxultra.intent.action.BLUETOOTH_DISMISS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto :goto_0
.end method
