.class public Lcom/dts/dtsxultra/util/AccessoryNotificationManager;
.super Landroid/widget/RemoteViews;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtsxultra/util/AccessoryNotificationManager$NotificationReceiver;,
        Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;


# instance fields
.field a:Z

.field private d:Landroid/app/Notification$Builder;

.field private e:Landroid/app/Notification;

.field private f:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

.field private g:Ljava/lang/Boolean;

.field private h:Lcom/dts/dtssdk/a/n;

.field private i:Lcom/dts/dtssdk/a/j;

.field private j:Lcom/dts/dtssdk/a/a;

.field private k:Lcom/dts/dtssdk/a/a;

.field private l:Lcom/dts/dtssdk/a/a;

.field private m:Lcom/dts/dtssdk/util/a;

.field private n:Lcom/dts/dtssdk/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/high16 v5, 0x8000000

    const/4 v1, 0x0

    const/4 v4, 0x0

    const v0, 0x7f0b005d

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->h:Lcom/dts/dtssdk/a/n;

    iput-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->i:Lcom/dts/dtssdk/a/j;

    iput-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->j:Lcom/dts/dtssdk/a/a;

    iput-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->k:Lcom/dts/dtssdk/a/a;

    iput-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->l:Lcom/dts/dtssdk/a/a;

    iput-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    iput-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->n:Lcom/dts/dtssdk/a/a;

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

    const v2, 0x7f0e00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    const-string v1, "dts.dtsxultra.intent.action.DISMISS"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    const-string v1, "com.dts.dtsxultra.NOTIFICATION_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    const v0, 0x7f080147

    const-string v1, "dts.dtsxultra.intent.action.EXPAND"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0800fc

    const-string v1, "dts.dtsxultra.intent.action.TOGGLE"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f080149

    const-string v1, "dts.dtsxultra.intent.action.COLLAPSE"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f080148

    invoke-static {p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f080142

    invoke-static {p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f08014c

    const-string v1, "dts.dtsxultra.intent.action.WIDE"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f080141

    const-string v1, "dts.dtsxultra.intent.action.FRONT"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f08014b

    const-string v1, "dts.dtsxultra.intent.action.TRADITIONAL"

    invoke-static {p2, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    invoke-direct {v0, p0, v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;B)V

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Over-Ear Headphones"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e00cb

    :goto_0
    return v0

    :cond_0
    const-string v0, "Earbuds"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e006f

    goto :goto_0

    :cond_1
    const-string v0, "External Speaker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e0074

    goto :goto_0

    :cond_2
    const-string v0, "Car Audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0e0053

    goto :goto_0

    :cond_3
    const-string v0, "Earphone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0e0070

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$NotificationReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/a;)Lcom/dts/dtssdk/a/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->k:Lcom/dts/dtssdk/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/a/j;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->i:Lcom/dts/dtssdk/a/j;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/n;)Lcom/dts/dtssdk/a/n;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->h:Lcom/dts/dtssdk/a/n;

    return-object p1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b:Ljava/lang/String;

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

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dts/dtsxultra/util/e;->c(Landroid/content/Context;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    iput-object p1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->i:Lcom/dts/dtssdk/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently active audio route: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    iput-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently active audio route updated to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    sget-object v2, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    invoke-virtual {v0, p0, p1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    sget-object v2, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    invoke-virtual {v0, p0, p1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    iput-object p1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->h:Lcom/dts/dtssdk/a/n;

    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/n;Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/dts/dtssdk/a/n;Z)V
    .locals 8

    const v7, 0x7f080216

    const v6, 0x7f080215

    const v5, 0x7f080211

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/dts/dtssdk/a/n;->b:Lcom/dts/dtssdk/a/n;

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v7, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/a/n;->c:Lcom/dts/dtssdk/a/n;

    if-ne p2, v0, :cond_2

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v5, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v6, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;Z)V

    goto/16 :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p1, v1, :cond_0

    const-string v1, "audioRoute"

    const-string v2, "bluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne p1, v1, :cond_1

    const-string v1, "audioRoute"

    const-string v2, "usb"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "audioRoute"

    const-string v2, "lineout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-ne p1, v1, :cond_2

    iput-object p2, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->j:Lcom/dts/dtssdk/a/a;

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently active audio route: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    iput-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Currently active audio route updated to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    if-ne v1, p1, :cond_1

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    invoke-virtual {v0, p0, p2, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p1, v1, :cond_3

    iput-object p2, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->k:Lcom/dts/dtssdk/a/a;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne p1, v1, :cond_4

    iput-object p2, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->l:Lcom/dts/dtssdk/a/a;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-ne p1, v1, :cond_0

    iput-object p2, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->n:Lcom/dts/dtssdk/a/a;

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    if-ne v1, p1, :cond_6

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    invoke-virtual {v0, p0, p2, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;Z)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isNotificationActive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b:Ljava/lang/String;

    const-string v1, "Invalid audio route. Aborting showing notification"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v1

    invoke-direct {v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b()V

    iget-object v0, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->h:Lcom/dts/dtssdk/a/n;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v2, Lcom/dts/dtssdk/e;->i:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v2}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->i:Lcom/dts/dtssdk/a/j;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    new-instance v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;

    invoke-direct {v2, v1, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$3;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/util/a;)V

    invoke-virtual {v0, p0, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    :cond_2
    :goto_1
    iput-object p1, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    sget-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$4;->a:[I

    invoke-virtual {p1}, Lcom/dts/dtssdk/util/a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    sget-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne p1, v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    new-instance v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;

    invoke-direct {v2, p1, v1, p0, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$2;-><init>(Lcom/dts/dtssdk/util/a;Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V

    invoke-virtual {v0, p0, p1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    :cond_4
    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->i:Lcom/dts/dtssdk/a/j;

    invoke-static {p1, v0}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Getting stereo preference selection failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/n;

    iput-object v0, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->h:Lcom/dts/dtssdk/a/n;

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    move-result-object v0

    new-instance v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;

    invoke-direct {v2, v1, p0, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$1;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V

    invoke-virtual {v0, p0, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    :cond_0
    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {v1, p0, p1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;ZZ)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;ZZ)V
    .locals 3

    const v1, 0x7f0800fc

    const/4 v2, 0x0

    if-nez p2, :cond_1

    const v0, 0x7f070093

    invoke-virtual {p0, v1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setImageViewResource(II)V

    :goto_0
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x7f070094

    invoke-virtual {p0, v1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setImageViewResource(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a:Z

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b()V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "enable"

    :goto_1
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p1, v2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Setting DTS enabled/disabled returned: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "disable"

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.dts.NOTIFICATION_UPDATE_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.dts.HEADPHONE_X_STATUS"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/a/c;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;ZZ)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/n;Z)V

    return-void
.end method

.method static synthetic a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/a;)Lcom/dts/dtssdk/a/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->j:Lcom/dts/dtssdk/a/a;

    return-object p1
.end method

.method static synthetic b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Lcom/dts/dtssdk/a/j;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->i:Lcom/dts/dtssdk/a/j;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;
    .locals 1

    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting DTS state failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;Z)V
    .locals 4

    const/16 v3, 0x18

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Landroid/content/Context;)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    iput-object p0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_2
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    invoke-static {p1, v0, v1}, Lcom/dts/dtsxultra/util/c;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    invoke-static {p1, v2}, Lcom/dts/dtsxultra/util/e;->c(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method static synthetic b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a:Z

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08013e

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f080140

    invoke-virtual {p0, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f08013f

    invoke-virtual {p0, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f080148

    invoke-virtual {p0, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f080149

    invoke-virtual {p0, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a:Z

    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->h:Lcom/dts/dtssdk/a/n;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->m:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->i:Lcom/dts/dtssdk/a/j;

    invoke-static {v0, v1, p2}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/a/n;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting stereo preference returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dts.NOTIFICATION_UPDATE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.dts.STEREO_PREFERENCE_SELECTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/c;->a(Landroid/content/Context;)Landroid/support/v4/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/c;->a(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/n;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic c(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/a;)Lcom/dts/dtssdk/a/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->l:Lcom/dts/dtssdk/a/a;

    return-object p1
.end method

.method private static c(Landroid/content/Context;)V
    .locals 7

    const v6, 0x7f080147

    const v5, 0x7f080148

    const v4, 0x7f080142

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :goto_1
    return-void

    :cond_1
    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b()V

    return-void
.end method

.method static synthetic c(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v0, 0x7f080140

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f08013e

    invoke-virtual {p0, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f08013f

    invoke-virtual {p0, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e:Landroid/app/Notification;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Z)V

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Lcom/dts/dtssdk/a/a;)Lcom/dts/dtssdk/a/a;
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->n:Lcom/dts/dtssdk/a/a;

    return-object p1
.end method

.method static synthetic d(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Lcom/dts/dtssdk/a/n;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->h:Lcom/dts/dtssdk/a/n;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;
    .locals 4

    sget-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->f()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p1}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a:Z

    invoke-static {p1}, Lcom/dts/dtsxultra/util/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$4;->a:[I

    invoke-virtual {v0}, Lcom/dts/dtssdk/util/a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HeadphoneFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BluetoothFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UsbFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MyAudioPreferenceFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dts/dtsxultra/activities/AccessorySelectionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "audioRoute"

    const-string v2, "speaker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "dts.dtsxultra.intent.action.CHANGE"

    invoke-static {p0, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic f(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private static f(Landroid/content/Context;)V
    .locals 7

    const v6, 0x7f080147

    const v5, 0x7f080142

    const v4, 0x7f080141

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Landroid/content/Context;)Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    move-result-object v1

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtssdk/g;->b()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v5, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f080148

    invoke-virtual {v1, v0, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    invoke-virtual {v1, v6, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f08014c

    invoke-virtual {v1, v0, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    invoke-virtual {v1, v4, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f08014b

    invoke-virtual {v1, v0, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f080149

    invoke-virtual {v1, v0, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v5, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f080148

    invoke-virtual {v1, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    invoke-virtual {v1, v6, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f08014c

    invoke-virtual {v1, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    invoke-virtual {v1, v4, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f08014b

    invoke-virtual {v1, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    const v0, 0x7f080149

    invoke-virtual {v1, v0, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const v1, 0x7f0e0050

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
