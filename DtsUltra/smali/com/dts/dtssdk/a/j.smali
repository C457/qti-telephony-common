.class public final Lcom/dts/dtssdk/a/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/dts/dtssdk/a/l;

.field private b:Lcom/dts/dtssdk/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dts/dtssdk/util/d;)I
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/a/j$1;->a:[I

    invoke-virtual {p0}, Lcom/dts/dtssdk/util/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/dts/dtssdk/util/d;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    sget-object v0, Lcom/dts/dtssdk/util/d;->a:Lcom/dts/dtssdk/util/d;

    :goto_1
    return-object v0

    :pswitch_0
    const-string v1, "Attached0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v1, "Attached1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "Attached2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const-string v1, "Attached3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const-string v1, "Attached4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_5
    const-string v1, "Attached5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const-string v1, "Attached6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    const-string v1, "Attached7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :pswitch_8
    const-string v1, "Attached8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/dts/dtssdk/util/d;->b:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_a
    sget-object v0, Lcom/dts/dtssdk/util/d;->c:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_b
    sget-object v0, Lcom/dts/dtssdk/util/d;->d:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_c
    sget-object v0, Lcom/dts/dtssdk/util/d;->e:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_d
    sget-object v0, Lcom/dts/dtssdk/util/d;->f:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_e
    sget-object v0, Lcom/dts/dtssdk/util/d;->g:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_f
    sget-object v0, Lcom/dts/dtssdk/util/d;->h:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_10
    sget-object v0, Lcom/dts/dtssdk/util/d;->i:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_11
    sget-object v0, Lcom/dts/dtssdk/util/d;->j:Lcom/dts/dtssdk/util/d;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5ae556ec
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/dts/dtssdk/util/d;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    iget-object v0, v0, Lcom/dts/dtssdk/a/l;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/dts/dtssdk/a/j;->a(Ljava/lang/String;)Lcom/dts/dtssdk/util/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->b:Lcom/dts/dtssdk/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->b:Lcom/dts/dtssdk/a/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/dts/dtssdk/a/j;->a(Ljava/lang/String;)Lcom/dts/dtssdk/util/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/dts/dtssdk/c/a",
            "<[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v1

    iget-object v0, v0, Lcom/dts/dtssdk/a/l;->a:Ljava/lang/String;

    const-string v2, "IMAGE_SMALL"

    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v1

    iget-object v0, v0, Lcom/dts/dtssdk/a/l;->a:Ljava/lang/String;

    const-string v2, "IMAGE_LARGE"

    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v1

    iget-object v0, v0, Lcom/dts/dtssdk/a/l;->a:Ljava/lang/String;

    const-string v2, "IMAGE_MEDIUM"

    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->b:Lcom/dts/dtssdk/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->b:Lcom/dts/dtssdk/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dts/dtssdk/a/a;->a(Landroid/content/Context;ILcom/dts/dtssdk/c/a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/a/j;->a:Lcom/dts/dtssdk/a/l;

    iget-object v0, v0, Lcom/dts/dtssdk/a/l;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
