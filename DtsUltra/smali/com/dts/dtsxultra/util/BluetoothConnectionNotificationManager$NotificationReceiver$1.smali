.class final Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver$1;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver;

    iput-object p2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Lcom/dts/dtssdk/a/j;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content mode null - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content mode receive failed - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
