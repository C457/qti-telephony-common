.class public Lcom/dts/dtssdk/util/UsbConnectionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/util/UsbConnectionManager$RouteChangeReceiver;,
        Lcom/dts/dtssdk/util/UsbConnectionManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/dts/dtssdk/util/UsbConnectionManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/dts/dtssdk/util/UsbConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/util/UsbConnectionManager;->a:Ljava/lang/String;

    new-instance v0, Lcom/dts/dtssdk/util/UsbConnectionManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/util/UsbConnectionManager$a;-><init>(B)V

    sput-object v0, Lcom/dts/dtssdk/util/UsbConnectionManager;->b:Lcom/dts/dtssdk/util/UsbConnectionManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/util/UsbConnectionManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/dts/dtssdk/util/UsbConnectionManager;->c(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->h:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DTS_SDK_UsbPref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->d(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;)V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->h:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DTS_SDK_UsbPref"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LastConnectedDeviceIdentifier"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DTS_SDK_UsbPref"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceIdentifier_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USB device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " associated with Accessory UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtssdk/b/c;->a()Lcom/dts/dtssdk/b/c;

    move-result-object v2

    iget-object v3, p1, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    :cond_2
    sget-object v0, Lcom/dts/dtssdk/b/c;->a:Ljava/lang/String;

    const-string v2, "logUsbAccessoryAssociation(): parameters cannot be null. Aborting"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Lcom/dts/dtssdk/b/c$d;->u:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v6}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$d;->a:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$d;->b:Lcom/dts/dtssdk/b/c$d;

    invoke-virtual {v0}, Lcom/dts/dtssdk/b/c$d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/dts/dtssdk/b/c$c;->m:Lcom/dts/dtssdk/b/c$c;

    invoke-virtual {v2, v0, v5}, Lcom/dts/dtssdk/b/c;->a(Lcom/dts/dtssdk/b/c$c;Ljava/util/Map;)V

    goto :goto_1
.end method

.method static synthetic b(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    const-string v0, "DTS_SDK_UsbPref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastConnectedDeviceIdentifier"

    invoke-static {p1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->c(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    move v2, v3

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    move v2, v1

    :goto_2
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {v4, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    :goto_3
    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "interface("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is an audio streaming interface and it has an output endpoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    :cond_1
    return v1

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;
    .locals 4

    const-string v0, "%04X-%04X"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/util/UsbConnectionManager;->a:Ljava/lang/String;

    const-string v1, "sendUsbDeviceConnectedBroadcast() called with a null UsbDevice object. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "DTS_SDK_UsbPref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeviceIdentifier_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->c(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Did not find any previous association for USB device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->c(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->d(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found existing association for USB device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->c(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/dts/dtssdk/a/a/a;

    sget v3, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v2, v3, v0}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    new-instance v2, Lcom/dts/dtssdk/util/UsbConnectionManager$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/dts/dtssdk/util/UsbConnectionManager$1;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lcom/dts/dtssdk/a/e;->e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Querying for USB device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->c(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from the database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/dts/dtssdk/util/UsbConnectionManager;->b:Lcom/dts/dtssdk/util/UsbConnectionManager$a;

    invoke-static {p1}, Lcom/dts/dtssdk/util/UsbConnectionManager;->c(Landroid/hardware/usb/UsbDevice;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dts/dtssdk/util/UsbConnectionManager$2;

    invoke-direct {v2, p1, p0}, Lcom/dts/dtssdk/util/UsbConnectionManager$2;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V

    invoke-static {v0, p0, v1, v2}, Lcom/dts/dtssdk/a/g;->a(Lcom/dts/dtssdk/util/UsbConnectionManager$a;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    return-void
.end method
