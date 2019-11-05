.class final Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/a/a;

.field final synthetic b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Lcom/dts/dtssdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    iput-object p2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->a:Lcom/dts/dtssdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting bluetooth accessory returned error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Failed to set accessory"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->a:Lcom/dts/dtssdk/a/a;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtssdk/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a()Ljava/lang/String;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bluetooth accessory set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dts.NOTIFICATION_UPDATE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.dts.HEADPHONE_SELECTION"

    sget-object v2, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/c;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    iget-object v2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->a:Lcom/dts/dtssdk/a/a;

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto :goto_0
.end method
