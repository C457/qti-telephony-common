.class public Lcom/dts/dtsxultra/activities/SplashActivity;
.super Landroid/support/v7/app/c;


# static fields
.field private static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/activities/SplashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/activities/SplashActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x2

    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/SplashActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "com.dts.dtsxultra.NOTIFICATION_CHANNEL"

    const-string v3, "DTS:X Ultra Notifications"

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "This is the DTS:X Ultra notification channel"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->t()Lcom/dts/dtsxultra/util/b$a;

    move-result-object v1

    sget-object v2, Lcom/dts/dtsxultra/util/b$a;->b:Lcom/dts/dtsxultra/util/b$a;

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "com.dts.dtsxultra.AUDIO_ROUTE_CHANNEL"

    const-string v3, "DTS:X Audio Route Channel"

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "This is the DTS:X Channel for detecting audio route changes"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    invoke-static {p0}, Lcom/dts/dtsxultra/util/e;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dts/dtsxultra/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dts/dtsxultra/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/dts/dtsxultra/activities/SplashActivity;->finish()V

    :cond_1
    return-void
.end method
