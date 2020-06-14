.class final Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dts/dtssdk/c/a",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/a/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;Lcom/dts/dtssdk/a/a;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iput-object p2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->a:Lcom/dts/dtssdk/a/a;

    iput-object p3, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 7

    const v6, 0x7f080147

    const v5, 0x7f0800fc

    const/16 v4, 0x8

    const/4 v3, 0x0

    check-cast p2, [B

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->a:Lcom/dts/dtssdk/a/a;

    iget-object v1, v1, Lcom/dts/dtssdk/a/a;->c:Lcom/dts/dtssdk/a/i;

    if-eqz v1, :cond_2

    array-length v0, p2

    invoke-static {p2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v1, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v1, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v2, 0x7f0800f8

    invoke-virtual {v1, v2, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v1, 0x7f080140

    invoke-virtual {v0, v1, v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v1, 0x7f08013f

    invoke-virtual {v0, v1, v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v1, 0x7f08014a

    invoke-virtual {v0, v1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v1, 0x7f08013e

    invoke-virtual {v0, v1, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v1, 0x7f0800f3

    const v2, 0x7f0700a0

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setImageViewResource(II)V

    invoke-static {}, Lcom/dts/dtsxultra/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v6, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v5, v3}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    :goto_2
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->a:Lcom/dts/dtssdk/a/a;

    invoke-static {v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtssdk/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v1, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v1}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v1, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v2, v2, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-static {v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->f(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v1, v1, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    const v2, 0x7f08002c

    invoke-virtual {v1, v2, v0}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->c:Z

    invoke-static {v0, v1, v2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->b(Lcom/dts/dtsxultra/util/AccessoryNotificationManager;Landroid/content/Context;Z)V

    :goto_3
    return-void

    :cond_2
    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->a:Lcom/dts/dtssdk/a/a;

    iget-object v1, v1, Lcom/dts/dtssdk/a/a;->g:Lcom/dts/dtssdk/a/a$a;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$4;->b:[I

    iget-object v1, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->a:Lcom/dts/dtssdk/a/a;

    iget-object v1, v1, Lcom/dts/dtssdk/a/a;->g:Lcom/dts/dtssdk/a/a$a;

    invoke-virtual {v1}, Lcom/dts/dtssdk/a/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070088

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070089

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070087

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v6, v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a$2;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;

    iget-object v0, v0, Lcom/dts/dtsxultra/util/AccessoryNotificationManager$a;->d:Lcom/dts/dtsxultra/util/AccessoryNotificationManager;

    invoke-virtual {v0, v5, v4}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DTS returned error for loading image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
