.class public Lcom/dts/dtsxultra/util/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtsxultra/util/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtsxultra/util/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 9

    const/16 v8, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    sget-object v0, Lcom/dts/dtsxultra/util/c$1;->a:[I

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->t()Lcom/dts/dtsxultra/util/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dts/dtsxultra/util/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/dts/dtsxultra/util/c;->a:Ljava/lang/String;

    const-string v1, "getNotificationSystemConfig returned something we don\'t support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/support/v4/app/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/u$b;-><init>(Landroid/content/Context;B)V

    const-string v1, "com.dts.dtsxultra.AUDIO_ROUTE_CHANNEL"

    iput-object v1, v0, Landroid/support/v4/app/u$b;->I:Ljava/lang/String;

    iget-object v1, v0, Landroid/support/v4/app/u$b;->N:Landroid/app/Notification;

    const/high16 v2, 0x7f0d0000

    iput v2, v1, Landroid/app/Notification;->icon:I

    new-instance v2, Landroid/support/v4/app/v;

    invoke-direct {v2, v0}, Landroid/support/v4/app/v;-><init>(Landroid/support/v4/app/u$b;)V

    iget-object v0, v2, Landroid/support/v4/app/v;->b:Landroid/support/v4/app/u$b;

    iget-object v3, v0, Landroid/support/v4/app/u$b;->o:Landroid/support/v4/app/u$c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    :goto_1
    iget-object v1, v2, Landroid/support/v4/app/v;->b:Landroid/support/v4/app/u$b;

    iget-object v1, v1, Landroid/support/v4/app/u$b;->F:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroid/support/v4/app/v;->b:Landroid/support/v4/app/u$b;

    iget-object v1, v1, Landroid/support/v4/app/u$b;->F:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_2

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/support/v4/app/u;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    :cond_2
    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Lcom/dts/dtssdk/g;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_5

    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4

    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-ne v1, v5, :cond_4

    invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/app/Notification;)V

    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-ne v1, v4, :cond_0

    invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/app/Notification;)V

    goto :goto_1

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/support/v4/app/v;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/v;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    iget-object v1, v2, Landroid/support/v4/app/v;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_6
    iget-object v1, v2, Landroid/support/v4/app/v;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_7

    iget-object v1, v2, Landroid/support/v4/app/v;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_7
    iget-object v1, v2, Landroid/support/v4/app/v;->h:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_8

    iget-object v1, v2, Landroid/support/v4/app/v;->h:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_8
    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-ne v1, v5, :cond_9

    invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/app/Notification;)V

    :cond_9
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-ne v1, v4, :cond_0

    invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/app/Notification;)V

    goto/16 :goto_1

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_e

    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/support/v4/app/v;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/v;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_b

    iget-object v1, v2, Landroid/support/v4/app/v;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_b
    iget-object v1, v2, Landroid/support/v4/app/v;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_c

    iget-object v1, v2, Landroid/support/v4/app/v;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_c
    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_d

    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-ne v1, v5, :cond_d

    invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/app/Notification;)V

    :cond_d
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, v2, Landroid/support/v4/app/v;->g:I

    if-ne v1, v4, :cond_0

    invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/app/Notification;)V

    goto/16 :goto_1

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_11

    iget-object v0, v2, Landroid/support/v4/app/v;->e:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/w;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v2, Landroid/support/v4/app/v;->f:Landroid/os/Bundle;

    const-string v4, "android.support.actionExtras"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_f
    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    iget-object v1, v2, Landroid/support/v4/app/v;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/v;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_10

    iget-object v1, v2, Landroid/support/v4/app/v;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_10
    iget-object v1, v2, Landroid/support/v4/app/v;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, v2, Landroid/support/v4/app/v;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_17

    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/u;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    iget-object v0, v2, Landroid/support/v4/app/v;->f:Landroid/os/Bundle;

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, v2, Landroid/support/v4/app/v;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_13
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, v2, Landroid/support/v4/app/v;->e:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/w;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v1}, Landroid/support/v4/app/u;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.support.actionExtras"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_14
    iget-object v0, v2, Landroid/support/v4/app/v;->c:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_15

    iget-object v0, v2, Landroid/support/v4/app/v;->c:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_15
    iget-object v0, v2, Landroid/support/v4/app/v;->d:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_16

    iget-object v0, v2, Landroid/support/v4/app/v;->d:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_16
    move-object v0, v1

    goto/16 :goto_1

    :cond_17
    iget-object v0, v2, Landroid/support/v4/app/v;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
