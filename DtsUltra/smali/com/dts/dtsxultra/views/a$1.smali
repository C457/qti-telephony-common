.class final Lcom/dts/dtsxultra/views/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/views/a;
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

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/dts/dtssdk/a/a$a;

.field final synthetic d:Lcom/dts/dtsxultra/views/a;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/views/a;Lcom/dts/dtssdk/a/a;Landroid/widget/ImageView;Lcom/dts/dtssdk/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/views/a$1;->d:Lcom/dts/dtsxultra/views/a;

    iput-object p2, p0, Lcom/dts/dtsxultra/views/a$1;->a:Lcom/dts/dtssdk/a/a;

    iput-object p3, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtssdk/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f050095

    check-cast p2, [B

    invoke-virtual {p1}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->a:Lcom/dts/dtssdk/a/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->b:Lcom/dts/dtssdk/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {p2, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->a:Lcom/dts/dtssdk/a/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->f:Lcom/dts/dtssdk/a/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->d:Lcom/dts/dtsxultra/views/a;

    invoke-static {v0}, Lcom/dts/dtsxultra/views/a;->a(Lcom/dts/dtsxultra/views/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dts/dtsxultra/views/a$2;->a:[I

    iget-object v1, p0, Lcom/dts/dtsxultra/views/a$1;->c:Lcom/dts/dtssdk/a/a$a;

    invoke-virtual {v1}, Lcom/dts/dtssdk/a/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/dts/dtsxultra/views/a;->b()Ljava/lang/String;

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

    invoke-static {}, Lcom/dts/dtsxultra/views/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/views/a$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
