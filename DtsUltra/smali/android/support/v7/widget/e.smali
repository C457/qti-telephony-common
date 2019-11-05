.class final Landroid/support/v7/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ax$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/e$a;,
        Landroid/support/v7/widget/e$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/e$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/e$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v7/widget/e$a;

.field d:Ljava/lang/Runnable;

.field final e:Z

.field final f:Landroid/support/v7/widget/ax;

.field g:I

.field private h:Landroid/support/v4/g/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/j$a",
            "<",
            "Landroid/support/v7/widget/e$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/e$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/e;-><init>(Landroid/support/v7/widget/e$a;B)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v7/widget/e$a;B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/j$b;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/g/j$b;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/e;->h:Landroid/support/v4/g/j$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    iput v2, p0, Landroid/support/v7/widget/e;->g:I

    iput-object p1, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iput-boolean v2, p0, Landroid/support/v7/widget/e;->e:Z

    new-instance v0, Landroid/support/v7/widget/ax;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ax;-><init>(Landroid/support/v7/widget/ax$a;)V

    iput-object v0, p0, Landroid/support/v7/widget/e;->f:Landroid/support/v7/widget/ax;

    return-void
.end method

.method private a(Landroid/support/v7/widget/e$b;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/e$a;->a(Landroid/support/v7/widget/e$b;)V

    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v0, p2, v1}, Landroid/support/v7/widget/e$a;->a(II)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->d:I

    iget-object v2, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroid/support/v7/widget/e$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/e$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private b(II)I
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    iget v2, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v2, v7, :cond_9

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    if-ge v2, v3, :cond_1

    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    :goto_1
    if-lt v1, v3, :cond_6

    if-gt v1, v2, :cond_6

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ne v3, v2, :cond_3

    if-ne p2, v5, :cond_2

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    goto :goto_1

    :cond_2
    if-ne p2, v6, :cond_0

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    goto :goto_2

    :cond_3
    if-ne p2, v5, :cond_5

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    :cond_4
    :goto_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    :cond_5
    if-ne p2, v6, :cond_4

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    goto :goto_4

    :cond_6
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ge v1, v2, :cond_8

    if-ne p2, v5, :cond_7

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    move v0, v1

    goto :goto_3

    :cond_7
    if-ne p2, v6, :cond_8

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    if-gt v2, v1, :cond_b

    iget v2, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v2, v5, :cond_a

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    sub-int v0, v1, v0

    goto :goto_3

    :cond_a
    iget v2, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v2, v6, :cond_d

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v0, v1

    goto :goto_3

    :cond_b
    if-ne p2, v5, :cond_c

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    move v0, v1

    goto :goto_3

    :cond_c
    if-ne p2, v6, :cond_d

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    :cond_d
    move v0, v1

    goto :goto_3

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v3, v7, :cond_11

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    if-gez v3, :cond_10

    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    :cond_10
    :goto_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    :cond_11
    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    if-gtz v3, :cond_10

    iget-object v3, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    goto :goto_6

    :cond_12
    return v1
.end method

.method private b(Landroid/support/v7/widget/e$b;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/e$b;->a:I

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/e;->b(II)I

    move-result v4

    iget v3, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    :goto_0
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    :goto_1
    iget v7, p1, Landroid/support/v7/widget/e$b;->d:I

    if-ge v3, v7, :cond_6

    iget v7, p1, Landroid/support/v7/widget/e$b;->b:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    iget v8, p1, Landroid/support/v7/widget/e$b;->a:I

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/e;->b(II)I

    move-result v8

    iget v7, p1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v7, :pswitch_data_1

    :pswitch_2
    move v7, v2

    :goto_2
    if-eqz v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    move v0, v2

    goto :goto_0

    :pswitch_4
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_2

    :pswitch_5
    if-ne v8, v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_2

    :cond_4
    iget v7, p1, Landroid/support/v7/widget/e$b;->a:I

    iget-object v9, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;I)V

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    iget v6, p1, Landroid/support/v7/widget/e$b;->a:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v8

    goto :goto_3

    :cond_6
    iget-object v0, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    if-lez v5, :cond_7

    iget v1, p1, Landroid/support/v7/widget/e$b;->a:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private c(Landroid/support/v7/widget/e$b;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/e$a;->c(II)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/e$a;->d(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/e$a;->b(II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v1, p1, Landroid/support/v7/widget/e$b;->b:I

    iget v2, p1, Landroid/support/v7/widget/e$b;->d:I

    iget-object v3, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/e$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c(I)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    iget v5, v0, Landroid/support/v7/widget/e$b;->a:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/e;->a(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget v5, v0, Landroid/support/v7/widget/e$b;->a:I

    if-ne v5, v1, :cond_2

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v6, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/support/v7/widget/e$b;->b:I

    :goto_2
    if-ge v0, v5, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/e;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method final a(II)I
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    :goto_0
    if-ge p2, v2, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ne v3, v1, :cond_1

    iget v1, v0, Landroid/support/v7/widget/e$b;->d:I

    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ge v3, v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    if-gt v3, v1, :cond_0

    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v4, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    const/4 v1, -0x1

    :cond_4
    return v1

    :cond_5
    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_6
    iget v3, v0, Landroid/support/v7/widget/e$b;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/e;->h:Landroid/support/v4/g/j$a;

    invoke-interface {v0}, Landroid/support/v4/g/j$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/e$b;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/e$b;-><init>(IIILjava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iput p1, v0, Landroid/support/v7/widget/e$b;->a:I

    iput p2, v0, Landroid/support/v7/widget/e$b;->b:I

    iput p3, v0, Landroid/support/v7/widget/e$b;->d:I

    iput-object p4, v0, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method final a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/e;->g:I

    return-void
.end method

.method public final a(Landroid/support/v7/widget/e$b;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/e;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v7/widget/e;->h:Landroid/support/v4/g/j$a;

    invoke-interface {v0, p1}, Landroid/support/v4/g/j$a;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final a(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/e;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/e;->a(II)I

    move-result v0

    return v0
.end method

.method final b()V
    .locals 14

    iget-object v6, p0, Landroid/support/v7/widget/e;->f:Landroid/support/v7/widget/ax;

    iget-object v7, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_6

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    iget v0, v0, Landroid/support/v7/widget/e$b;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    if-eqz v1, :cond_2f

    move v5, v2

    :goto_2
    const/4 v0, -0x1

    if-eq v5, v0, :cond_1d

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/e$b;

    iget v2, v1, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v4, v1, Landroid/support/v7/widget/e$b;->b:I

    if-ge v3, v4, :cond_1

    const/4 v2, -0x1

    :cond_1
    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v4, v1, Landroid/support/v7/widget/e$b;->b:I

    if-ge v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget v3, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    if-gt v3, v4, :cond_3

    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v4, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/e$b;->b:I

    :cond_3
    iget v3, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v4, v0, Landroid/support/v7/widget/e$b;->d:I

    if-gt v3, v4, :cond_4

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v4, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/e$b;->d:I

    :cond_4
    iget v3, v1, Landroid/support/v7/widget/e$b;->b:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/e$b;->b:I

    invoke-interface {v7, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    move v5, v0

    goto :goto_2

    :pswitch_2
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v9, v0, Landroid/support/v7/widget/e$b;->d:I

    if-ge v2, v9, :cond_a

    const/4 v2, 0x0

    iget v9, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v10, v0, Landroid/support/v7/widget/e$b;->b:I

    if-ne v9, v10, :cond_7

    iget v9, v1, Landroid/support/v7/widget/e$b;->d:I

    iget v10, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v11, v0, Landroid/support/v7/widget/e$b;->b:I

    sub-int/2addr v10, v11

    if-ne v9, v10, :cond_7

    const/4 v3, 0x1

    :cond_7
    :goto_4
    iget v9, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v10, v1, Landroid/support/v7/widget/e$b;->b:I

    if-ge v9, v10, :cond_b

    iget v9, v1, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v1, Landroid/support/v7/widget/e$b;->b:I

    :cond_8
    iget v9, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v10, v1, Landroid/support/v7/widget/e$b;->b:I

    if-gt v9, v10, :cond_c

    iget v9, v1, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Landroid/support/v7/widget/e$b;->b:I

    :cond_9
    :goto_5
    if-eqz v3, :cond_d

    invoke-interface {v7, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, v6, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/ax$a;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/ax$a;->a(Landroid/support/v7/widget/e$b;)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x1

    iget v9, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v10, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v10, v10, 0x1

    if-ne v9, v10, :cond_7

    iget v9, v1, Landroid/support/v7/widget/e$b;->d:I

    iget v10, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v11, v0, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v10, v11

    if-ne v9, v10, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_b
    iget v9, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v10, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v11, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_8

    iget v2, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/e$b;->d:I

    const/4 v2, 0x2

    iput v2, v0, Landroid/support/v7/widget/e$b;->a:I

    const/4 v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v0, v1, Landroid/support/v7/widget/e$b;->d:I

    if-nez v0, :cond_0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v6, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/ax$a;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ax$a;->a(Landroid/support/v7/widget/e$b;)V

    goto/16 :goto_0

    :cond_c
    iget v9, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v10, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v11, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_9

    iget v4, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v9, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v4, v9

    iget v9, v0, Landroid/support/v7/widget/e$b;->b:I

    sub-int/2addr v4, v9

    iget-object v9, v6, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/ax$a;

    const/4 v10, 0x2

    iget v11, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v4, v12}, Landroid/support/v7/widget/ax$a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v4

    iget v9, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v10, v1, Landroid/support/v7/widget/e$b;->b:I

    sub-int/2addr v9, v10

    iput v9, v1, Landroid/support/v7/widget/e$b;->d:I

    goto :goto_5

    :cond_d
    if-eqz v2, :cond_12

    if-eqz v4, :cond_f

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v4, Landroid/support/v7/widget/e$b;->b:I

    if-le v2, v3, :cond_e

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v4, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    :cond_e
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v3, v4, Landroid/support/v7/widget/e$b;->b:I

    if-le v2, v3, :cond_f

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v3, v4, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    :cond_f
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v1, Landroid/support/v7/widget/e$b;->b:I

    if-le v2, v3, :cond_10

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v1, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    :cond_10
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v3, v1, Landroid/support/v7/widget/e$b;->b:I

    if-le v2, v3, :cond_11

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v3, v1, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    :cond_11
    :goto_6
    invoke-interface {v7, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    if-eq v1, v2, :cond_16

    invoke-interface {v7, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz v4, :cond_0

    invoke-interface {v7, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    if-eqz v4, :cond_14

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v4, Landroid/support/v7/widget/e$b;->b:I

    if-lt v2, v3, :cond_13

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v4, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    :cond_13
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v3, v4, Landroid/support/v7/widget/e$b;->b:I

    if-lt v2, v3, :cond_14

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v3, v4, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    :cond_14
    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v1, Landroid/support/v7/widget/e$b;->b:I

    if-lt v2, v3, :cond_15

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v1, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/e$b;->b:I

    :cond_15
    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v3, v1, Landroid/support/v7/widget/e$b;->b:I

    if-lt v2, v3, :cond_11

    iget v2, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v3, v1, Landroid/support/v7/widget/e$b;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/e$b;->d:I

    goto :goto_6

    :cond_16
    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :pswitch_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v9, v1, Landroid/support/v7/widget/e$b;->b:I

    if-ge v4, v9, :cond_1a

    iget v4, v1, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Landroid/support/v7/widget/e$b;->b:I

    :cond_17
    :goto_8
    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v9, v1, Landroid/support/v7/widget/e$b;->b:I

    if-gt v4, v9, :cond_1b

    iget v4, v1, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/support/v7/widget/e$b;->b:I

    :cond_18
    :goto_9
    invoke-interface {v7, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, v1, Landroid/support/v7/widget/e$b;->d:I

    if-lez v0, :cond_1c

    invoke-interface {v7, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_a
    if-eqz v2, :cond_19

    invoke-interface {v7, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_19
    if-eqz v3, :cond_0

    invoke-interface {v7, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    iget v4, v0, Landroid/support/v7/widget/e$b;->d:I

    iget v9, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v10, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v9, v10

    if-ge v4, v9, :cond_17

    iget v2, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/e$b;->d:I

    iget-object v2, v6, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/ax$a;

    const/4 v4, 0x4

    iget v9, v0, Landroid/support/v7/widget/e$b;->b:I

    const/4 v10, 0x1

    iget-object v11, v1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-interface {v2, v4, v9, v10, v11}, Landroid/support/v7/widget/ax$a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v2

    goto :goto_8

    :cond_1b
    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v9, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v10, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v9, v10

    if-ge v4, v9, :cond_18

    iget v3, v1, Landroid/support/v7/widget/e$b;->b:I

    iget v4, v1, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    sub-int v4, v3, v4

    iget-object v3, v6, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/ax$a;

    const/4 v9, 0x4

    iget v10, v0, Landroid/support/v7/widget/e$b;->b:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, v1, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-interface {v3, v9, v10, v4, v11}, Landroid/support/v7/widget/ax$a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v3

    iget v9, v1, Landroid/support/v7/widget/e$b;->d:I

    sub-int v4, v9, v4

    iput v4, v1, Landroid/support/v7/widget/e$b;->d:I

    goto :goto_9

    :cond_1c
    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v6, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/ax$a;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ax$a;->a(Landroid/support/v7/widget/e$b;)V

    goto :goto_a

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    :goto_b
    if-ge v5, v7, :cond_2e

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    iget v1, v0, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v1, :pswitch_data_1

    :goto_c
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1e
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_b

    :pswitch_5
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->c(Landroid/support/v7/widget/e$b;)V

    goto :goto_c

    :pswitch_6
    iget v8, v0, Landroid/support/v7/widget/e$b;->b:I

    const/4 v1, 0x0

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int/2addr v3, v2

    const/4 v4, -0x1

    iget v2, v0, Landroid/support/v7/widget/e$b;->b:I

    move v6, v1

    :goto_d
    if-ge v2, v3, :cond_24

    const/4 v1, 0x0

    iget-object v9, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v9, v2}, Landroid/support/v7/widget/e$a;->a(I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v9

    if-nez v9, :cond_1f

    invoke-direct {p0, v2}, Landroid/support/v7/widget/e;->c(I)Z

    move-result v9

    if-eqz v9, :cond_21

    :cond_1f
    if-nez v4, :cond_20

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v8, v6, v4}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/e;->b(Landroid/support/v7/widget/e$b;)V

    const/4 v1, 0x1

    :cond_20
    const/4 v4, 0x1

    :goto_e
    if-eqz v1, :cond_23

    sub-int v1, v2, v6

    sub-int v2, v3, v6

    const/4 v3, 0x1

    :goto_f
    add-int/lit8 v1, v1, 0x1

    move v6, v3

    move v3, v2

    move v2, v1

    goto :goto_d

    :cond_21
    const/4 v9, 0x1

    if-ne v4, v9, :cond_22

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v8, v6, v4}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/e;->c(Landroid/support/v7/widget/e$b;)V

    const/4 v1, 0x1

    :cond_22
    const/4 v4, 0x0

    goto :goto_e

    :cond_23
    add-int/lit8 v1, v6, 0x1

    move v13, v2

    move v2, v3

    move v3, v1

    move v1, v13

    goto :goto_f

    :cond_24
    iget v1, v0, Landroid/support/v7/widget/e$b;->d:I

    if-eq v6, v1, :cond_25

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v8, v6, v1}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v0

    :cond_25
    if-nez v4, :cond_26

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->b(Landroid/support/v7/widget/e$b;)V

    goto :goto_c

    :cond_26
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->c(Landroid/support/v7/widget/e$b;)V

    goto :goto_c

    :pswitch_7
    iget v4, v0, Landroid/support/v7/widget/e$b;->b:I

    const/4 v2, 0x0

    iget v1, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    add-int v6, v1, v3

    const/4 v1, -0x1

    iget v3, v0, Landroid/support/v7/widget/e$b;->b:I

    move v13, v1

    move v1, v2

    move v2, v4

    move v4, v13

    :goto_10
    if-ge v3, v6, :cond_2b

    iget-object v8, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v8, v3}, Landroid/support/v7/widget/e$a;->a(I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v8

    if-nez v8, :cond_27

    invoke-direct {p0, v3}, Landroid/support/v7/widget/e;->c(I)Z

    move-result v8

    if-eqz v8, :cond_29

    :cond_27
    if-nez v4, :cond_28

    const/4 v4, 0x4

    iget-object v8, v0, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2, v1, v8}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/e;->b(Landroid/support/v7/widget/e$b;)V

    const/4 v1, 0x0

    move v2, v3

    :cond_28
    const/4 v4, 0x1

    move v13, v4

    move v4, v2

    move v2, v1

    move v1, v13

    :goto_11
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move v13, v1

    move v1, v2

    move v2, v4

    move v4, v13

    goto :goto_10

    :cond_29
    const/4 v8, 0x1

    if-ne v4, v8, :cond_2a

    const/4 v4, 0x4

    iget-object v8, v0, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2, v1, v8}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/e;->c(Landroid/support/v7/widget/e$b;)V

    const/4 v1, 0x0

    move v2, v3

    :cond_2a
    const/4 v4, 0x0

    move v13, v4

    move v4, v2

    move v2, v1

    move v1, v13

    goto :goto_11

    :cond_2b
    iget v3, v0, Landroid/support/v7/widget/e$b;->d:I

    if-eq v1, v3, :cond_2c

    iget-object v3, v0, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->a(Landroid/support/v7/widget/e$b;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/support/v7/widget/e;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/e$b;

    move-result-object v0

    :cond_2c
    if-nez v4, :cond_2d

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->b(Landroid/support/v7/widget/e$b;)V

    goto/16 :goto_c

    :cond_2d
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->c(Landroid/support/v7/widget/e$b;)V

    goto/16 :goto_c

    :pswitch_8
    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->c(Landroid/support/v7/widget/e$b;)V

    goto/16 :goto_c

    :cond_2e
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_2f
    move v0, v1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method final c()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/util/List;)V

    iput v2, p0, Landroid/support/v7/widget/e;->g:I

    return-void
.end method

.method final d()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->c()V

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/e$b;

    iget v4, v0, Landroid/support/v7/widget/e$b;->a:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/e;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/e$a;->c(II)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/e$a;->a(II)V

    goto :goto_1

    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v6, v0, Landroid/support/v7/widget/e$b;->d:I

    iget-object v0, v0, Landroid/support/v7/widget/e$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v0}, Landroid/support/v7/widget/e$a;->a(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/e$a;->b(Landroid/support/v7/widget/e$b;)V

    iget-object v4, p0, Landroid/support/v7/widget/e;->c:Landroid/support/v7/widget/e$a;

    iget v5, v0, Landroid/support/v7/widget/e$b;->b:I

    iget v0, v0, Landroid/support/v7/widget/e$b;->d:I

    invoke-interface {v4, v5, v0}, Landroid/support/v7/widget/e$a;->d(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/e;->a(Ljava/util/List;)V

    iput v2, p0, Landroid/support/v7/widget/e;->g:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
