.class public abstract Landroid/support/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/d/l$b;,
        Landroid/support/d/l$a;,
        Landroid/support/d/l$c;
    }
.end annotation


# static fields
.field private static C:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/d/l$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final n:[I

.field private static final o:Landroid/support/d/g;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/r;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/r;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/view/ViewGroup;

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/l$c;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field a:J

.field b:J

.field c:Landroid/animation/TimeInterpolator;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/support/d/p;

.field i:Z

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/support/d/o;

.field l:Landroid/support/d/l$b;

.field m:Landroid/support/d/g;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/support/d/s;

.field private y:Landroid/support/d/s;

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/d/l;->n:[I

    new-instance v0, Landroid/support/d/l$1;

    invoke-direct {v0}, Landroid/support/d/l$1;-><init>()V

    sput-object v0, Landroid/support/d/l;->o:Landroid/support/d/g;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/d/l;->C:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/d/l;->p:Ljava/lang/String;

    iput-wide v4, p0, Landroid/support/d/l;->a:J

    iput-wide v4, p0, Landroid/support/d/l;->b:J

    iput-object v1, p0, Landroid/support/d/l;->c:Landroid/animation/TimeInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->q:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->r:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->s:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->t:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->u:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->v:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/d/l;->w:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/d/s;

    invoke-direct {v0}, Landroid/support/d/s;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    new-instance v0, Landroid/support/d/s;

    invoke-direct {v0}, Landroid/support/d/s;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    iput-object v1, p0, Landroid/support/d/l;->h:Landroid/support/d/p;

    sget-object v0, Landroid/support/d/l;->n:[I

    iput-object v0, p0, Landroid/support/d/l;->z:[I

    iput-object v1, p0, Landroid/support/d/l;->D:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroid/support/d/l;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->j:Ljava/util/ArrayList;

    iput v2, p0, Landroid/support/d/l;->E:I

    iput-boolean v2, p0, Landroid/support/d/l;->F:Z

    iput-boolean v2, p0, Landroid/support/d/l;->G:Z

    iput-object v1, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->I:Ljava/util/ArrayList;

    sget-object v0, Landroid/support/d/l;->o:Landroid/support/d/g;

    iput-object v0, p0, Landroid/support/d/l;->m:Landroid/support/d/g;

    return-void
.end method

.method private a(Landroid/support/d/s;Landroid/support/d/s;)V
    .locals 12

    new-instance v6, Landroid/support/v4/g/a;

    iget-object v0, p1, Landroid/support/d/s;->a:Landroid/support/v4/g/a;

    invoke-direct {v6, v0}, Landroid/support/v4/g/a;-><init>(Landroid/support/v4/g/l;)V

    new-instance v7, Landroid/support/v4/g/a;

    iget-object v0, p2, Landroid/support/d/s;->a:Landroid/support/v4/g/a;

    invoke-direct {v7, v0}, Landroid/support/v4/g/a;-><init>(Landroid/support/v4/g/l;)V

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Landroid/support/d/l;->z:[I

    array-length v0, v0

    if-ge v4, v0, :cond_5

    iget-object v0, p0, Landroid/support/d/l;->z:[I

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v6}, Landroid/support/v4/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_0

    invoke-virtual {v6, v2}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/r;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/d/r;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6, v2}, Landroid/support/v4/g/a;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/r;

    iget-object v3, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :pswitch_1
    iget-object v8, p1, Landroid/support/d/s;->d:Landroid/support/v4/g/a;

    iget-object v9, p2, Landroid/support/d/s;->d:Landroid/support/v4/g/a;

    invoke-virtual {v8}, Landroid/support/v4/g/a;->size()I

    move-result v10

    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-ge v5, v10, :cond_0

    invoke-virtual {v8, v5}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v8, v5}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/r;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/r;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object v11, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :pswitch_2
    iget-object v8, p1, Landroid/support/d/s;->b:Landroid/util/SparseArray;

    iget-object v9, p2, Landroid/support/d/s;->b:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v0, 0x0

    move v5, v0

    :goto_3
    if-ge v5, v10, :cond_0

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/r;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/r;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object v11, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :pswitch_3
    iget-object v8, p1, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    iget-object v9, p2, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v8}, Landroid/support/v4/g/f;->c()I

    move-result v10

    const/4 v0, 0x0

    move v5, v0

    :goto_4
    if-ge v5, v10, :cond_0

    invoke-virtual {v8, v5}, Landroid/support/v4/g/f;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v8, v5}, Landroid/support/v4/g/f;->a(I)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v9, v2, v3, v1}, Landroid/support/v4/g/f;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/r;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/r;

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget-object v11, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {v6}, Landroid/support/v4/g/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v6, v1}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/r;

    iget-object v2, v0, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {v7}, Landroid/support/v4/g/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/r;

    iget-object v2, v0, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/d/l;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/support/d/s;Landroid/view/View;Landroid/support/d/r;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/d/s;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/d/s;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Landroid/support/d/s;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/h/r;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/d/s;->d:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/d/s;->d:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iget-object v0, p0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    iget-boolean v1, v0, Landroid/support/v4/g/f;->b:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/g/f;->b()V

    :cond_2
    iget-object v1, v0, Landroid/support/v4/g/f;->c:[J

    iget v0, v0, Landroid/support/v4/g/f;->e:I

    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/g/c;->a([JIJ)I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/g/f;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Landroid/support/d/s;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/d/s;->d:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/h/r;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private static a(Landroid/support/d/r;Landroid/support/d/r;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/d/r;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Landroid/support/d/r;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v0, p0, Landroid/support/d/l;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/d/l;->q:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/d/l;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/d/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Landroid/support/d/l;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/support/d/r;

    invoke-direct {v0}, Landroid/support/d/r;-><init>()V

    iput-object p1, v0, Landroid/support/d/r;->b:Landroid/view/View;

    if-eqz p2, :cond_8

    invoke-virtual {p0, v0}, Landroid/support/d/l;->a(Landroid/support/d/r;)V

    :goto_1
    iget-object v2, v0, Landroid/support/d/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/support/d/l;->c(Landroid/support/d/r;)V

    if-eqz p2, :cond_9

    iget-object v2, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    invoke-static {v2, p1, v0}, Landroid/support/d/l;->a(Landroid/support/d/s;Landroid/view/View;Landroid/support/d/r;)V

    :cond_5
    :goto_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/d/l;->u:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v0, p0, Landroid/support/d/l;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/d/l;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    iget-object v0, p0, Landroid/support/d/l;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/d/l;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_a

    iget-object v0, p0, Landroid/support/d/l;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Landroid/support/d/l;->b(Landroid/support/d/r;)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    invoke-static {v2, p1, v0}, Landroid/support/d/l;->a(Landroid/support/d/s;Landroid/view/View;Landroid/support/d/r;)V

    goto :goto_2

    :cond_a
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v1

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/d/l;->c(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static f()Landroid/support/v4/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/d/l$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/support/d/l;->C:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    sget-object v1, Landroid/support/d/l;->C:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/d/r;Landroid/support/d/r;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Landroid/support/d/l;
    .locals 1

    iput-wide p1, p0, Landroid/support/d/l;->b:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/d/l;
    .locals 0

    iput-object p1, p0, Landroid/support/d/l;->c:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroid/support/d/l$c;)Landroid/support/d/l;
    .locals 1

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Landroid/view/View;Z)Landroid/support/d/r;
    .locals 1

    :goto_0
    iget-object v0, p0, Landroid/support/d/l;->h:Landroid/support/d/p;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/d/l;->h:Landroid/support/d/p;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    :goto_1
    iget-object v0, v0, Landroid/support/d/s;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/r;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/d/l;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/d/l;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-wide v2, p0, Landroid/support/d/l;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/d/l;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Landroid/support/d/l;->c:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/d/l;->c:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move-object v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    if-lez v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v2, v0

    :cond_6
    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :goto_1
    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    if-lez v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method public a(Landroid/support/d/g;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Landroid/support/d/l;->o:Landroid/support/d/g;

    iput-object v0, p0, Landroid/support/d/l;->m:Landroid/support/d/g;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/d/l;->m:Landroid/support/d/g;

    goto :goto_0
.end method

.method public a(Landroid/support/d/l$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/d/l;->l:Landroid/support/d/l$b;

    return-void
.end method

.method public a(Landroid/support/d/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/d/l;->k:Landroid/support/d/o;

    return-void
.end method

.method public abstract a(Landroid/support/d/r;)V
.end method

.method final a(Landroid/view/ViewGroup;)V
    .locals 9

    const/4 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v1, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    invoke-direct {p0, v0, v1}, Landroid/support/d/l;->a(Landroid/support/d/s;Landroid/support/d/s;)V

    invoke-static {}, Landroid/support/d/l;->f()Landroid/support/v4/g/a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/g/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/d/ac;->b(Landroid/view/View;)Landroid/support/d/ak;

    move-result-object v5

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_5

    invoke-virtual {v4, v3}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/l$a;

    if-eqz v1, :cond_2

    iget-object v6, v1, Landroid/support/d/l$a;->a:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/d/l$a;->d:Landroid/support/d/ak;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/d/l$a;->c:Landroid/support/d/r;

    iget-object v7, v1, Landroid/support/d/l$a;->a:Landroid/view/View;

    invoke-virtual {p0, v7, v2}, Landroid/support/d/l;->a(Landroid/view/View;Z)Landroid/support/d/r;

    move-result-object v8

    invoke-virtual {p0, v7, v2}, Landroid/support/d/l;->b(Landroid/view/View;Z)Landroid/support/d/r;

    move-result-object v7

    if-nez v8, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    iget-object v1, v1, Landroid/support/d/l$a;->e:Landroid/support/d/l;

    invoke-virtual {v1, v6, v7}, Landroid/support/d/l;->a(Landroid/support/d/r;Landroid/support/d/r;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v3, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    iget-object v4, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/d/l;->a(Landroid/view/ViewGroup;Landroid/support/d/s;Landroid/support/d/s;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/support/d/l;->b()V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/d/s;Landroid/support/d/s;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/d/s;",
            "Landroid/support/d/s;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/r;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/r;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/support/d/l;->f()Landroid/support/v4/g/a;

    move-result-object v12

    const-wide v8, 0x7fffffffffffffffL

    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v14, :cond_b

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/r;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/d/r;

    if-eqz v2, :cond_d

    iget-object v4, v2, Landroid/support/d/r;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v2, 0x0

    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_0

    iget-object v2, v3, Landroid/support/d/r;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-nez v4, :cond_1

    if-eqz v3, :cond_6

    :cond_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/support/d/l;->a(Landroid/support/d/r;Landroid/support/d/r;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v3}, Landroid/support/d/l;->a(Landroid/view/ViewGroup;Landroid/support/d/r;Landroid/support/d/r;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v2, 0x0

    if-eqz v3, :cond_a

    iget-object v6, v3, Landroid/support/d/r;->b:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/support/d/l;->a()[Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    array-length v3, v7

    if-lez v3, :cond_9

    new-instance v4, Landroid/support/d/r;

    invoke-direct {v4}, Landroid/support/d/r;-><init>()V

    iput-object v6, v4, Landroid/support/d/r;->b:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/d/s;->a:Landroid/support/v4/g/a;

    invoke-virtual {v2, v6}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/r;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :goto_3
    array-length v10, v7

    if-ge v3, v10, :cond_4

    iget-object v10, v4, Landroid/support/d/r;->a:Ljava/util/Map;

    aget-object v15, v7, v3

    iget-object v0, v2, Landroid/support/d/r;->a:Ljava/util/Map;

    move-object/from16 v16, v0

    aget-object v17, v7, v3

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Landroid/support/v4/g/a;->size()I

    move-result v7

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v7, :cond_8

    invoke-virtual {v12, v3}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v12, v2}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/d/l$a;

    iget-object v10, v2, Landroid/support/d/l$a;->c:Landroid/support/d/r;

    if-eqz v10, :cond_7

    iget-object v10, v2, Landroid/support/d/l$a;->a:Landroid/view/View;

    if-ne v10, v6, :cond_7

    iget-object v10, v2, Landroid/support/d/l$a;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/d/l;->p:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v2, v2, Landroid/support/d/l$a;->c:Landroid/support/d/r;

    invoke-virtual {v2, v4}, Landroid/support/d/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object v10, v2

    move-object v7, v4

    move-object v3, v6

    :goto_5
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/d/l;->k:Landroid/support/d/o;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/d/l;->k:Landroid/support/d/o;

    invoke-virtual {v2}, Landroid/support/d/o;->a()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/d/l;->I:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    long-to-int v6, v4

    invoke-virtual {v13, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v8, v4

    :cond_5
    new-instance v2, Landroid/support/d/l$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/d/l;->p:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/support/d/ac;->b(Landroid/view/View;)Landroid/support/d/ak;

    move-result-object v6

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/d/l$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/d/l;Landroid/support/d/ak;Landroid/support/d/r;)V

    invoke-virtual {v12, v10, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/d/l;->I:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_8
    move-object v2, v4

    :cond_9
    move-object v10, v5

    move-object v7, v2

    move-object v3, v6

    goto :goto_5

    :cond_a
    iget-object v3, v4, Landroid/support/d/r;->b:Landroid/view/View;

    move-object v10, v5

    move-object v7, v2

    goto :goto_5

    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_c

    invoke-virtual {v13, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/d/l;->I:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v13, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v8

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_c
    return-void

    :cond_d
    move-object v4, v2

    goto/16 :goto_1
.end method

.method final a(Landroid/view/ViewGroup;Z)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/d/l;->a(Z)V

    iget-object v0, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_0
    iget-object v0, p0, Landroid/support/d/l;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Landroid/support/d/r;

    invoke-direct {v3}, Landroid/support/d/r;-><init>()V

    iput-object v0, v3, Landroid/support/d/r;->b:Landroid/view/View;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v3}, Landroid/support/d/l;->a(Landroid/support/d/r;)V

    :goto_1
    iget-object v4, v3, Landroid/support/d/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Landroid/support/d/l;->c(Landroid/support/d/r;)V

    if-eqz p2, :cond_5

    iget-object v4, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    invoke-static {v4, v0, v3}, Landroid/support/d/l;->a(Landroid/support/d/s;Landroid/view/View;Landroid/support/d/r;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/d/l;->b(Landroid/support/d/r;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    invoke-static {v4, v0, v3}, Landroid/support/d/l;->a(Landroid/support/d/s;Landroid/view/View;Landroid/support/d/r;)V

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_3
    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v3, Landroid/support/d/r;

    invoke-direct {v3}, Landroid/support/d/r;-><init>()V

    iput-object v0, v3, Landroid/support/d/r;->b:Landroid/view/View;

    if-eqz p2, :cond_7

    invoke-virtual {p0, v3}, Landroid/support/d/l;->a(Landroid/support/d/r;)V

    :goto_4
    iget-object v4, v3, Landroid/support/d/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Landroid/support/d/l;->c(Landroid/support/d/r;)V

    if-eqz p2, :cond_8

    iget-object v4, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    invoke-static {v4, v0, v3}, Landroid/support/d/l;->a(Landroid/support/d/s;Landroid/view/View;Landroid/support/d/r;)V

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Landroid/support/d/l;->b(Landroid/support/d/r;)V

    goto :goto_4

    :cond_8
    iget-object v4, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    invoke-static {v4, v0, v3}, Landroid/support/d/l;->a(Landroid/support/d/s;Landroid/view/View;Landroid/support/d/r;)V

    goto :goto_5

    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/d/l;->c(Landroid/view/View;Z)V

    :cond_a
    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/support/d/l;->J:Landroid/support/v4/g/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/d/l;->J:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_b

    iget-object v0, p0, Landroid/support/d/l;->J:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v5, v5, Landroid/support/d/s;->d:Landroid/support/v4/g/a;

    invoke-virtual {v5, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_b
    :goto_7
    if-ge v2, v3, :cond_d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroid/support/d/l;->J:Landroid/support/v4/g/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v5, v5, Landroid/support/d/s;->d:Landroid/support/v4/g/a;

    invoke-virtual {v5, v1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    iget-object v0, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->a:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    iget-object v0, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->d()V

    goto :goto_0
.end method

.method public a(Landroid/support/d/r;Landroid/support/d/r;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/support/d/l;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-static {p1, p2, v5}, Landroid/support/d/l;->a(Landroid/support/d/r;Landroid/support/d/r;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroid/support/d/r;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Landroid/support/d/l;->a(Landroid/support/d/r;Landroid/support/d/r;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method final a(Landroid/view/View;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v0, p0, Landroid/support/d/l;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/d/l;->q:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/d/l;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/d/l;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/d/l;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/d/l;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_3

    iget-object v0, p0, Landroid/support/d/l;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/d/l;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/support/v4/h/r;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->t:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/h/r;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Landroid/support/d/l;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/d/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroid/support/d/l;->d:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v2, v3

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Landroid/support/d/l;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/d/l;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/h/r;->o(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v3

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(J)Landroid/support/d/l;
    .locals 1

    iput-wide p1, p0, Landroid/support/d/l;->a:J

    return-object p0
.end method

.method public b(Landroid/support/d/l$c;)Landroid/support/d/l;
    .locals 1

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Landroid/support/d/l;
    .locals 1

    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method final b(Landroid/view/View;Z)Landroid/support/d/r;
    .locals 6

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/d/l;->h:Landroid/support/d/p;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/d/l;->h:Landroid/support/d/p;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    move-object v4, v0

    :goto_1
    if-nez v4, :cond_3

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    iget-object v0, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/r;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/d/r;->b:Landroid/view/View;

    if-ne v0, p1, :cond_4

    :goto_4
    if-ltz v2, :cond_6

    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/support/d/l;->B:Ljava/util/ArrayList;

    :goto_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/r;

    :goto_6
    move-object v1, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    goto :goto_5

    :cond_6
    move-object v0, v1

    goto :goto_6

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method protected b()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Landroid/support/d/l;->c()V

    invoke-static {}, Landroid/support/d/l;->f()Landroid/support/v4/g/a;

    move-result-object v1

    iget-object v0, p0, Landroid/support/d/l;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/d/l;->c()V

    if-eqz v0, :cond_0

    new-instance v3, Landroid/support/d/l$2;

    invoke-direct {v3, p0, v1}, Landroid/support/d/l$2;-><init>(Landroid/support/d/l;Landroid/support/v4/g/a;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/d/l;->d()V

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Landroid/support/d/l;->b:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    iget-wide v4, p0, Landroid/support/d/l;->b:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_2
    iget-wide v4, p0, Landroid/support/d/l;->a:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    iget-wide v4, p0, Landroid/support/d/l;->a:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_3
    iget-object v3, p0, Landroid/support/d/l;->c:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/d/l;->c:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_4
    new-instance v3, Landroid/support/d/l$3;

    invoke-direct {v3, p0}, Landroid/support/d/l$3;-><init>(Landroid/support/d/l;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/d/l;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/d/l;->d()V

    return-void
.end method

.method public abstract b(Landroid/support/d/r;)V
.end method

.method public c(Landroid/view/View;)Landroid/support/d/l;
    .locals 1

    iget-object v0, p0, Landroid/support/d/l;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected final c()V
    .locals 5

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/d/l;->E:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/l$c;

    invoke-interface {v1}, Landroid/support/d/l$c;->c()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Landroid/support/d/l;->G:Z

    :cond_1
    iget v0, p0, Landroid/support/d/l;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/d/l;->E:I

    return-void
.end method

.method c(Landroid/support/d/r;)V
    .locals 4

    iget-object v0, p0, Landroid/support/d/l;->k:Landroid/support/d/o;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/d/r;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->k:Landroid/support/d/o;

    invoke-virtual {v0}, Landroid/support/d/o;->b()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Landroid/support/d/r;->a:Ljava/util/Map;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/d/l;->e()Landroid/support/d/l;

    move-result-object v0

    return-object v0
.end method

.method protected final d()V
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/d/l;->E:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/d/l;->E:I

    iget v0, p0, Landroid/support/d/l;->E:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/l$c;

    invoke-interface {v1, p0}, Landroid/support/d/l$c;->a(Landroid/support/d/l;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->c()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/d/l;->x:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/f;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Landroid/support/v4/h/r;->a(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->c()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->y:Landroid/support/d/s;

    iget-object v0, v0, Landroid/support/d/s;->c:Landroid/support/v4/g/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/f;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {v0, v2}, Landroid/support/v4/h/r;->a(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/d/l;->G:Z

    :cond_5
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 10

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/d/l;->G:Z

    if-nez v0, :cond_5

    invoke-static {}, Landroid/support/d/l;->f()Landroid/support/v4/g/a;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/g/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/d/ac;->b(Landroid/view/View;)Landroid/support/d/ak;

    move-result-object v6

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {v5, v4}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l$a;

    iget-object v1, v0, Landroid/support/d/l$a;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/d/l$a;->d:Landroid/support/d/ak;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5, v4}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    :cond_0
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v3, v2

    :goto_1
    if-ge v3, v8, :cond_0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    instance-of v9, v1, Landroid/support/d/a$a;

    if-eqz v9, :cond_2

    check-cast v1, Landroid/support/d/a$a;

    invoke-interface {v1, v0}, Landroid/support/d/a$a;->onAnimationPause(Landroid/animation/Animator;)V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/l$c;

    invoke-interface {v1}, Landroid/support/d/l$c;->a()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/d/l;->F:Z

    :cond_5
    return-void
.end method

.method public e()Landroid/support/d/l;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/d/l;->I:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/d/s;

    invoke-direct {v2}, Landroid/support/d/s;-><init>()V

    iput-object v2, v0, Landroid/support/d/l;->x:Landroid/support/d/s;

    new-instance v2, Landroid/support/d/s;

    invoke-direct {v2}, Landroid/support/d/s;-><init>()V

    iput-object v2, v0, Landroid/support/d/l;->y:Landroid/support/d/s;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/d/l;->A:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/d/l;->B:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public e(Landroid/view/View;)V
    .locals 10

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/d/l;->F:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/support/d/l;->G:Z

    if-nez v0, :cond_4

    invoke-static {}, Landroid/support/d/l;->f()Landroid/support/v4/g/a;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/g/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/d/ac;->b(Landroid/view/View;)Landroid/support/d/ak;

    move-result-object v6

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {v5, v4}, Landroid/support/v4/g/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/l$a;

    iget-object v1, v0, Landroid/support/d/l$a;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/d/l$a;->d:Landroid/support/d/ak;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5, v4}, Landroid/support/v4/g/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    :cond_0
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    instance-of v9, v1, Landroid/support/d/a$a;

    if-eqz v9, :cond_2

    check-cast v1, Landroid/support/d/a$a;

    invoke-interface {v1, v0}, Landroid/support/d/a$a;->onAnimationResume(Landroid/animation/Animator;)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Landroid/support/d/l;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_2
    if-ge v2, v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/d/l$c;

    invoke-interface {v1}, Landroid/support/d/l$c;->b()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    iput-boolean v3, p0, Landroid/support/d/l;->F:Z

    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/d/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
