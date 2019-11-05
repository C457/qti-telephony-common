.class public final Lcom/dts/dtsxultra/util/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "com.dts.dtsxultra.NOTIFICATION_CHANNEL"

    const-string v3, "DTS:X Ultra Notifications"

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "This is the DTS:X Ultra notification channel"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-static {}, Lcom/dts/dtsxultra/util/c;->t()Lcom/dts/dtsxultra/util/c$a;

    move-result-object v1

    sget-object v2, Lcom/dts/dtsxultra/util/c$a;->b:Lcom/dts/dtsxultra/util/c$a;

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "com.dts.dtsxultra.AUDIO_ROUTE_CHANNEL"

    const-string v3, "DTS:X Audio Route Channel"

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "This is the DTS:X Channel for detecting audio route changes"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0
.end method
