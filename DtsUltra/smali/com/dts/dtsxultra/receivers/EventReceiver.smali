.class public Lcom/dts/dtsxultra/receivers/EventReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/receivers/EventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/receivers/EventReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/receivers/EventReceiver;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/dts/dtssdk/a/j;)V
    .locals 4

    const-string v0, "bluetoothAddress"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessoryUuid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/dts/dtssdk/a/a/a;

    sget v3, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v2, v3, v1}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    new-instance v1, Lcom/dts/dtsxultra/receivers/EventReceiver$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/dts/dtsxultra/receivers/EventReceiver$3;-><init>(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Lcom/dts/dtssdk/a/j;)V

    invoke-static {p1, v0, v1}, Lcom/dts/dtssdk/a/e;->e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1, v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/a/j;)V
    .locals 2

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    new-instance v1, Lcom/dts/dtsxultra/receivers/EventReceiver$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/dts/dtsxultra/receivers/EventReceiver$5;-><init>(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Lcom/dts/dtssdk/a/a;)V

    invoke-static {p1, p3, v0, p2, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/c/b;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/dts/dtssdk/a/j;)V
    .locals 4

    const-string v0, "usbDeviceIdentifier"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessoryUuid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/dts/dtssdk/a/a/a;

    sget v3, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v2, v3, v1}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    new-instance v1, Lcom/dts/dtsxultra/receivers/EventReceiver$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/dts/dtsxultra/receivers/EventReceiver$4;-><init>(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Lcom/dts/dtssdk/a/j;)V

    invoke-static {p1, v0, v1}, Lcom/dts/dtssdk/a/e;->e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1, v0}, Lcom/dts/dtsxultra/util/UsbConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    sget-object v0, Lcom/dts/dtsxultra/receivers/EventReceiver;->a:Ljava/lang/String;

    const-string v1, "Received null intent. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->c(Landroid/content/Context;)V

    :cond_3
    invoke-static {p1, v1}, Lcom/dts/dtsxultra/util/e;->c(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto :goto_0

    :sswitch_0
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "dts.dtssdk.intent.action.AUDIO_ROUTE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "dts.dtssdk.intent.action.RECOGNIZED_BLUETOOTH_ACCESSORY_CONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "dts.dtssdk.intent.action.UNRECOGNIZED_BLUETOOTH_ACCESSORY_CONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "dts.dtssdk.intent.action.RECOGNIZED_USB_ACCESSORY_CONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "dts.dtssdk.intent.action.UNRECOGNIZED_USB_ACCESSORY_CONNECTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "dts.dtssdk.intent.action.SET_DTS_ENABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v4, "dts.dtssdk.intent.action.SET_DTS_DISABLED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_1
    const-string v0, "audioRoute"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " Received AUDIO ROUTE CHANGED: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/dts/dtsxultra/util/UsbConnectionNotificationManager;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p1, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/dts/dtsxultra/util/UsbConnectionNotificationManager;->a(Landroid/content/Context;)V

    invoke-static {p1, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/receivers/EventReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/dts/dtsxultra/receivers/EventReceiver$1;-><init>(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, p1, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "bluetoothAddress"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v5, v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->b(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/receivers/EventReceiver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/dts/dtsxultra/receivers/EventReceiver$2;-><init>(Lcom/dts/dtsxultra/receivers/EventReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, p1, v1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "usbDeviceIdentifier"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v5, v0}, Lcom/dts/dtsxultra/util/UsbConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p1, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbbfc7d -> :sswitch_1
        -0x79737a33 -> :sswitch_3
        -0x5ed018b6 -> :sswitch_4
        -0x4f211b0a -> :sswitch_6
        -0xe4548dd -> :sswitch_5
        0x19421747 -> :sswitch_7
        0x2f94f923 -> :sswitch_0
        0x4470bcb4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
