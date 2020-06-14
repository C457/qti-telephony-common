.class final Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$1;->a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x1

    const v9, 0x7f080147

    const v8, 0x7f0800fc

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$1;->a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iput-boolean v6, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->c:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$1;->a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v1, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->b:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;

    iget-boolean v0, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;->d:Z

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$1;->a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v3, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;->a:Landroid/content/Context;

    iget-object v0, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/a;

    iget-boolean v1, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;->c:Z

    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)V

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v5, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Lcom/dts/dtssdk/a/n;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v5, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f080140

    invoke-virtual {v0, v4, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f08013f

    invoke-virtual {v0, v4, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f08014a

    invoke-virtual {v0, v4, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f08013e

    invoke-virtual {v0, v4, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f0800f3

    const v5, 0x7f0700a0

    invoke-virtual {v0, v4, v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setImageViewResource(II)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v9, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :goto_0
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v8, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :goto_1
    const-string v0, "No accessory selected"

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v5, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v5, 0x7f08002c

    invoke-virtual {v4, v5, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v0, v3, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v9, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v8, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;

    invoke-direct {v4, v2, v0, v3, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;Lcom/dts/dtssdk/a/a;Landroid/content/Context;Z)V

    invoke-virtual {v0, v3, v10, v4}, Lcom/dts/dtssdk/a/a;->a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$1;->a:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v3, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;->a:Landroid/content/Context;

    iget-object v0, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/j;

    iget-boolean v1, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$a;->c:Z

    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->c(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)V

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v5, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->d(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Lcom/dts/dtssdk/a/n;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Lcom/dts/dtssdk/a/n;)V

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v5, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->e(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f080140

    invoke-virtual {v0, v4, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f08013f

    invoke-virtual {v0, v4, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f080149

    invoke-virtual {v0, v4, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f080148

    invoke-virtual {v0, v4, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f08014a

    invoke-virtual {v0, v4, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f08013e

    invoke-virtual {v0, v4, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f0800f3

    const v5, 0x7f0700af

    invoke-virtual {v0, v4, v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setImageViewResource(II)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v9, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :goto_3
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v8, v6}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :goto_4
    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v4, "No content mode selected"

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v4, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v4, 0x7f08002c

    const-string v5, "No content mode selected"

    invoke-virtual {v0, v4, v5}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v0, v3, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v9, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto :goto_3

    :cond_5
    iget-object v0, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v8, v7}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto :goto_4

    :cond_6
    new-instance v4, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$3;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$3;-><init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;Landroid/content/Context;Lcom/dts/dtssdk/a/j;Z)V

    invoke-virtual {v0, v3, v10, v4}, Lcom/dts/dtssdk/a/j;->a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V

    goto/16 :goto_2
.end method
