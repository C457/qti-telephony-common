.class final Lcom/dts/dtssdk/util/UsbConnectionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/util/UsbConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/c",
        "<",
        "Lcom/dts/dtssdk/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/hardware/usb/UsbDevice;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/util/UsbConnectionManager$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dts/dtssdk/util/UsbConnectionManager$1;->b:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/dts/dtssdk/util/UsbConnectionManager$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/f/a;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying for associated accessory returned error. "

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
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Querying for associated accessory returned null or empty list. This may be due to associated accessory being deleted from the database (via web update, etc)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Defaulting to getting Accessory info based on USB device identifier"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtssdk/util/UsbConnectionManager$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dts/dtssdk/util/UsbConnectionManager$1;->b:Landroid/hardware/usb/UsbDevice;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-static {}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "More than one accessory returned with UUID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dts/dtssdk/util/UsbConnectionManager$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/a;

    invoke-static {}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a()Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "dts.dtssdk.intent.action.RECOGNIZED_USB_ACCESSORY_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "audioRoute"

    sget-object v3, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "accessoryUuid"

    iget-object v3, v0, Lcom/dts/dtssdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "accessoryName"

    iget-object v3, v0, Lcom/dts/dtssdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "accessoryBrandName"

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "usbDeviceIdentifier"

    iget-object v2, p0, Lcom/dts/dtssdk/util/UsbConnectionManager$1;->b:Landroid/hardware/usb/UsbDevice;

    invoke-static {v2}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/dts/dtssdk/util/UsbConnectionManager$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dts/dtssdk/DtsBroadcastManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
