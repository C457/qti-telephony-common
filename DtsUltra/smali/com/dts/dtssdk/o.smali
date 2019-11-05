.class public final Lcom/dts/dtssdk/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dts/dtssdk/o;->a:I

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dts/dtssdk/o;->a:I

    iput-object p2, p0, Lcom/dts/dtssdk/o;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget v0, p0, Lcom/dts/dtssdk/o;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/dts/dtssdk/f/a$a;
    .locals 1

    iget v0, p0, Lcom/dts/dtssdk/o;->a:I

    if-ltz v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/dts/dtssdk/o;->a:I

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/dts/dtssdk/f/a$a;->a:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->g:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->f:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->o:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->j:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->k:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->m:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->n:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->l:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->s:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_a
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->t:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_b
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->u:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_c
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->v:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_d
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->w:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_e
    sget-object v0, Lcom/dts/dtssdk/f/a$a;->x:Lcom/dts/dtssdk/f/a$a;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3ed -> :sswitch_e
        -0x3ec -> :sswitch_d
        -0x3eb -> :sswitch_c
        -0x3ea -> :sswitch_b
        -0x3e9 -> :sswitch_a
        -0x3e8 -> :sswitch_9
        -0x9 -> :sswitch_8
        -0x8 -> :sswitch_7
        -0x7 -> :sswitch_6
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method
