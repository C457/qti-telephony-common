.class public Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;
.super Landroid/widget/RemoteViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/app/Notification$Builder;

.field private e:Landroid/app/Notification;

.field private f:Lcom/dts/dtssdk/a/a;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    const v0, 0x7f0b005c

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    const v0, 0x7f05008d

    invoke-static {p2, v0}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/dts/dtsxultra/activities/MainActivity;

    invoke-direct {v2, p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p2, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    const-string v1, "com.dts.dtsxultra.NOTIFICATION_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    const-string v2, "dts.dtsxultra.intent.action.BLUETOOTH_DISMISS"

    invoke-static {v1, v2}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v0, 0x7f080145

    const-string v1, "dts.dtsxultra.intent.action.OK"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f080146

    const-string v1, "dts.dtsxultra.intent.action.SEARCH"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f080144

    const-string v1, "dts.dtsxultra.intent.action.CLOSE"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->e:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$NotificationReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/a/a;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/dts/dtssdk/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dts/dtssdk/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const v1, 0x7f0800f8

    invoke-virtual {p0, v1, v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->e:Landroid/app/Notification;

    const v0, 0x7f08002c

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f08002b

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f080145

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->setViewVisibility(II)V

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->e(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->f:Lcom/dts/dtssdk/a/a;

    iput-object p3, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    const/4 v1, 0x1

    new-instance v2, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$2;-><init>(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Lcom/dts/dtssdk/a/a;Landroid/content/Context;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/dts/dtssdk/a/a;->a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/dts/dtssdk/a/a/a;

    sget v2, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v1, v2, p1}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    new-instance v1, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/dts/dtssdk/a/e;->e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Lcom/dts/dtssdk/a/j;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->f:Lcom/dts/dtssdk/a/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/dts/dtssdk/a/a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/dts/dtsxultra/util/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    sget-object v2, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    new-instance v3, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;

    invoke-direct {v3, p0, v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager$3;-><init>(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;Lcom/dts/dtssdk/a/a;)V

    invoke-static {v1, p1, v2, v0, v3}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;
    .locals 1

    invoke-static {p0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    const-class v2, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "audioRoute"

    const-string v2, "bluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "bluetoothAddress"

    iget-object v2, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p0}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const v1, 0x7f0e0050

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;
    .locals 3

    sget-object v0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->b:Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->e:Landroid/app/Notification;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->d:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->e:Landroid/app/Notification;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->e:Landroid/app/Notification;

    iput-object p0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/dts/dtsxultra/util/BluetoothConnectionNotificationManager;->e:Landroid/app/Notification;

    invoke-static {p1, v0, v1}, Lcom/dts/dtsxultra/util/c;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    goto :goto_0
.end method
