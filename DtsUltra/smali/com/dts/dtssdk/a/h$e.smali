.class final Lcom/dts/dtssdk/a/h$e;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/h$f;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/c;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/c;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/c;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/a;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/a;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/a;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/c;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_8
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/o;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_9
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/a;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/dts/dtssdk/a/f;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, v0, Lcom/dts/dtssdk/a/h$f;->b:Ljava/lang/Object;

    check-cast v1, Lcom/dts/dtssdk/c/c;

    iget-object v2, v0, Lcom/dts/dtssdk/a/h$f;->c:Lcom/dts/dtssdk/f/a;

    iget-object v0, v0, Lcom/dts/dtssdk/a/h$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0x15 -> :sswitch_9
        0x16 -> :sswitch_a
        0x17 -> :sswitch_b
        0x1f -> :sswitch_c
        0x20 -> :sswitch_e
        0x209 -> :sswitch_d
    .end sparse-switch
.end method
