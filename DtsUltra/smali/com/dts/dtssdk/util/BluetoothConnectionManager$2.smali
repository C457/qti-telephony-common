.class final Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtssdk/util/BluetoothConnectionManager;->e(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/a",
        "<",
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;->a:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/dts/dtssdk/a/a;

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/util/BluetoothConnectionManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for bluetooth device returned error. "

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

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/util/BluetoothConnectionManager;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No match found for bluetooth device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in database."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dts.dtssdk.intent.action.UNRECOGNIZED_BLUETOOTH_ACCESSORY_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "audioRoute"

    sget-object v2, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "bluetoothAddress"

    iget-object v2, p0, Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/util/BluetoothConnectionManager;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Match found for bluetooth device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dts.dtssdk.intent.action.RECOGNIZED_BLUETOOTH_ACCESSORY_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "audioRoute"

    sget-object v2, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "accessoryUuid"

    iget-object v2, p2, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accessoryName"

    iget-object v2, p2, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accessoryBrandName"

    invoke-virtual {p2}, Lcom/dts/dtssdk/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bluetoothAddress"

    iget-object v2, p0, Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtssdk/util/BluetoothConnectionManager$2;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
