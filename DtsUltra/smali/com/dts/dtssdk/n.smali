.class final Lcom/dts/dtssdk/n;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/dts/dtssdk/util/a;)I
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/n$1;->b:[I

    invoke-virtual {p0}, Lcom/dts/dtssdk/util/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

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
